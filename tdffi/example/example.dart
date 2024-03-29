import 'dart:convert' show base64, utf8;

import 'package:tdffi/client.dart';
import 'package:logging/logging.dart';
import 'package:tdffi/td.dart';

void main() async {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((event) {
    print(event);
  });
  var client = Auth(
    tdlibParameters: DefaultTdlibParameters(
        use_test_dc: false,
        api_hash: 'a3406de8d171bb422bb6ddf3bbd800e2',
        api_id: 94575,
        database_directory: '/tmp/tdlib'),
    dynamicLibPath: '../td/build/$defaultDynamicLibFile',
  );
  // REQUIRED for flutter Hot Restart 
  // client.sendAsync(Close());
  // client.clientId = client.td_create_client_id();
  await client.start();
  await client.execute(SetLogVerbosityLevel(new_verbosity_level: 0));
  var user = await client.login(
    botToken: '',
  );
  print(user.first_name);
  var newMessage = client.updates
      .whereType<UpdateNewMessage>()
      .where((event) => event.message.is_outgoing == false)
      .map((event) => event.message);
  // newMessage.listen((event) => print(event.message.content));

  newMessage.where((message) => message.content is MessageText)
  .where((event) => event.content.messageText!.text.text.startsWith("/start"))
      .listen(
    (message) async {
      var text = await client.execute<FormattedText>(
        ParseTextEntities(
          text: "*Hello World*",
          parse_mode: TextParseModeMarkdown(version: 2),
        ),
      );
      var replyMarkup = ReplyMarkupInlineKeyboard(
        rows: [
          [
            InlineKeyboardButton(
              text: "Button 1",
              type: InlineKeyboardButtonTypeCallback(
                data: base64.encode(utf8.encode("hello")),
              ),
            )
          ]
        ],
      );
      var request = SendMessage(
        chat_id: message.chat_id,
        message_thread_id: 0,
        input_message_content: InputMessageText(
          text: text,
          disable_web_page_preview: true,
          clear_draft: true,
        ),
        reply_markup: replyMarkup,
      );
      // print(request.toJsonEncoded());
      await client.send(request);
    },
  );

  client.updates
      .whereType<UpdateNewCallbackQuery>()
      .where(
        (event) => utf8
            .decode(
              base64.decode(
                event.payload.callbackQueryPayloadData?.data ?? '',
              ),
            )
            .startsWith('hello'),
      )
      .listen(
    (event) async {
      int chatId = event.chat_id;

      await client.send(
        DeleteMessages(
          chat_id: chatId,
          message_ids: [event.message_id],
          revoke: true,
        ),
      );

      var text = await client.execute<FormattedText>(
        ParseTextEntities(
          text: r"*Message Received\!\!*",
          parse_mode: TextParseModeMarkdown(version: 2),
        ),
      );

      await client.send(
        SendMessage(
          chat_id: chatId,
          message_thread_id: 0,
          input_message_content: InputMessageText(
            text: text,
            disable_web_page_preview: true,
            clear_draft: true,
          ),
        ),
      );
    },
  );

  // await client.destroy();
}
