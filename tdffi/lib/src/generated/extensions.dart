import './classes.dart';
import './abc.dart';

extension AuthenticationCodeTypeExt on AuthenticationCodeType {
  /// An authentication code is delivered via Firebase Authentication to the official Android application
  AuthenticationCodeTypeFirebaseAndroid?
      get authenticationCodeTypeFirebaseAndroid {
    if (this is AuthenticationCodeTypeFirebaseAndroid) {
      return this as AuthenticationCodeTypeFirebaseAndroid;
    }
    return null;
  }

  /// An authentication code is delivered via an SMS message to the specified phone number; applications may not receive this type of code
  AuthenticationCodeTypeSms? get authenticationCodeTypeSms {
    if (this is AuthenticationCodeTypeSms) {
      return this as AuthenticationCodeTypeSms;
    }
    return null;
  }

  /// An authentication code is delivered to https://fragment.com. The user must be logged in there via a wallet owning the phone number's NFT
  AuthenticationCodeTypeFragment? get authenticationCodeTypeFragment {
    if (this is AuthenticationCodeTypeFragment) {
      return this as AuthenticationCodeTypeFragment;
    }
    return null;
  }

  /// An authentication code is delivered via a private Telegram message, which can be viewed from another active session
  AuthenticationCodeTypeTelegramMessage?
      get authenticationCodeTypeTelegramMessage {
    if (this is AuthenticationCodeTypeTelegramMessage) {
      return this as AuthenticationCodeTypeTelegramMessage;
    }
    return null;
  }

  /// An authentication code is delivered via Firebase Authentication to the official iOS application
  AuthenticationCodeTypeFirebaseIos? get authenticationCodeTypeFirebaseIos {
    if (this is AuthenticationCodeTypeFirebaseIos) {
      return this as AuthenticationCodeTypeFirebaseIos;
    }
    return null;
  }

  /// An authentication code is delivered via a phone call to the specified phone number
  AuthenticationCodeTypeCall? get authenticationCodeTypeCall {
    if (this is AuthenticationCodeTypeCall) {
      return this as AuthenticationCodeTypeCall;
    }
    return null;
  }

  /// An authentication code is delivered by an immediately canceled call to the specified phone number. The phone number that calls is the code that must be entered automatically
  AuthenticationCodeTypeFlashCall? get authenticationCodeTypeFlashCall {
    if (this is AuthenticationCodeTypeFlashCall) {
      return this as AuthenticationCodeTypeFlashCall;
    }
    return null;
  }

  /// An authentication code is delivered by an immediately canceled call to the specified phone number. The last digits of the phone number that calls are the code that must be entered manually by the user
  AuthenticationCodeTypeMissedCall? get authenticationCodeTypeMissedCall {
    if (this is AuthenticationCodeTypeMissedCall) {
      return this as AuthenticationCodeTypeMissedCall;
    }
    return null;
  }
}

extension EmailAddressAuthenticationExt on EmailAddressAuthentication {
  /// An authentication token received through Apple ID
  EmailAddressAuthenticationAppleId? get emailAddressAuthenticationAppleId {
    if (this is EmailAddressAuthenticationAppleId) {
      return this as EmailAddressAuthenticationAppleId;
    }
    return null;
  }

  /// An authentication token received through Google ID
  EmailAddressAuthenticationGoogleId? get emailAddressAuthenticationGoogleId {
    if (this is EmailAddressAuthenticationGoogleId) {
      return this as EmailAddressAuthenticationGoogleId;
    }
    return null;
  }

  /// An authentication code delivered to a user's email address
  EmailAddressAuthenticationCode? get emailAddressAuthenticationCode {
    if (this is EmailAddressAuthenticationCode) {
      return this as EmailAddressAuthenticationCode;
    }
    return null;
  }
}

extension EmailAddressResetStateExt on EmailAddressResetState {
  /// Email address can be reset after the given period. Call resetAuthenticationEmailAddress to reset it and allow the user to authorize with a code sent to the user's phone number
  EmailAddressResetStateAvailable? get emailAddressResetStateAvailable {
    if (this is EmailAddressResetStateAvailable) {
      return this as EmailAddressResetStateAvailable;
    }
    return null;
  }

  /// Email address reset has already been requested. Call resetAuthenticationEmailAddress to check whether immediate reset is possible
  EmailAddressResetStatePending? get emailAddressResetStatePending {
    if (this is EmailAddressResetStatePending) {
      return this as EmailAddressResetStatePending;
    }
    return null;
  }
}

extension AuthorizationStateExt on AuthorizationState {
  /// The user has been authorized, but needs to enter a 2-step verification password to start using the application.
  AuthorizationStateWaitPassword? get authorizationStateWaitPassword {
    if (this is AuthorizationStateWaitPassword) {
      return this as AuthorizationStateWaitPassword;
    }
    return null;
  }

  /// The user has been successfully authorized. TDLib is now ready to answer general requests
  AuthorizationStateReady? get authorizationStateReady {
    if (this is AuthorizationStateReady) {
      return this as AuthorizationStateReady;
    }
    return null;
  }

  /// TDLib needs the user's phone number to authorize. Call setAuthenticationPhoneNumber to provide the phone number, or use requestQrCodeAuthentication or checkAuthenticationBotToken for other authentication options
  AuthorizationStateWaitPhoneNumber? get authorizationStateWaitPhoneNumber {
    if (this is AuthorizationStateWaitPhoneNumber) {
      return this as AuthorizationStateWaitPhoneNumber;
    }
    return null;
  }

  /// The user needs to confirm authorization on another logged in device by scanning a QR code with the provided link
  AuthorizationStateWaitOtherDeviceConfirmation?
      get authorizationStateWaitOtherDeviceConfirmation {
    if (this is AuthorizationStateWaitOtherDeviceConfirmation) {
      return this as AuthorizationStateWaitOtherDeviceConfirmation;
    }
    return null;
  }

  /// TDLib client is in its final state. All databases are closed and all resources are released. No other updates will be received after this. All queries will be responded to
  AuthorizationStateClosed? get authorizationStateClosed {
    if (this is AuthorizationStateClosed) {
      return this as AuthorizationStateClosed;
    }
    return null;
  }

  /// TDLib needs the user's authentication code sent to an email address to authorize. Call checkAuthenticationEmailCode to provide the code
  AuthorizationStateWaitEmailCode? get authorizationStateWaitEmailCode {
    if (this is AuthorizationStateWaitEmailCode) {
      return this as AuthorizationStateWaitEmailCode;
    }
    return null;
  }

  /// The user is unregistered and need to accept terms of service and enter their first name and last name to finish registration. Call registerUser to accept the terms of service and provide the data
  AuthorizationStateWaitRegistration? get authorizationStateWaitRegistration {
    if (this is AuthorizationStateWaitRegistration) {
      return this as AuthorizationStateWaitRegistration;
    }
    return null;
  }

  /// The user is currently logging out
  AuthorizationStateLoggingOut? get authorizationStateLoggingOut {
    if (this is AuthorizationStateLoggingOut) {
      return this as AuthorizationStateLoggingOut;
    }
    return null;
  }

  /// TDLib is closing, all subsequent queries will be answered with the error 500. Note that closing TDLib can take a while. All resources will be freed only after authorizationStateClosed has been received
  AuthorizationStateClosing? get authorizationStateClosing {
    if (this is AuthorizationStateClosing) {
      return this as AuthorizationStateClosing;
    }
    return null;
  }

  /// Initialization parameters are needed. Call setTdlibParameters to provide them
  AuthorizationStateWaitTdlibParameters?
      get authorizationStateWaitTdlibParameters {
    if (this is AuthorizationStateWaitTdlibParameters) {
      return this as AuthorizationStateWaitTdlibParameters;
    }
    return null;
  }

  /// TDLib needs the user's authentication code to authorize. Call checkAuthenticationCode to check the code
  AuthorizationStateWaitCode? get authorizationStateWaitCode {
    if (this is AuthorizationStateWaitCode) {
      return this as AuthorizationStateWaitCode;
    }
    return null;
  }

  /// TDLib needs the user's email address to authorize. Call setAuthenticationEmailAddress to provide the email address, or directly call checkAuthenticationEmailCode with Apple ID/Google ID token if allowed
  AuthorizationStateWaitEmailAddress? get authorizationStateWaitEmailAddress {
    if (this is AuthorizationStateWaitEmailAddress) {
      return this as AuthorizationStateWaitEmailAddress;
    }
    return null;
  }
}

extension InputFileExt on InputFile {
  /// A file defined by its unique identifier
  InputFileId? get inputFileId {
    if (this is InputFileId) {
      return this as InputFileId;
    }
    return null;
  }

  /// A file generated by the application
  InputFileGenerated? get inputFileGenerated {
    if (this is InputFileGenerated) {
      return this as InputFileGenerated;
    }
    return null;
  }

  /// A file defined by a local path
  InputFileLocal? get inputFileLocal {
    if (this is InputFileLocal) {
      return this as InputFileLocal;
    }
    return null;
  }

  /// A file defined by its remote identifier. The remote identifier is guaranteed to be usable only if the corresponding file is still accessible to the user and known to TDLib.
  InputFileRemote? get inputFileRemote {
    if (this is InputFileRemote) {
      return this as InputFileRemote;
    }
    return null;
  }
}

extension ThumbnailFormatExt on ThumbnailFormat {
  /// The thumbnail is in WEBP format. It will be used only for some stickers
  ThumbnailFormatWebp? get thumbnailFormatWebp {
    if (this is ThumbnailFormatWebp) {
      return this as ThumbnailFormatWebp;
    }
    return null;
  }

  /// The thumbnail is in MPEG4 format. It will be used only for some animations and videos
  ThumbnailFormatMpeg4? get thumbnailFormatMpeg4 {
    if (this is ThumbnailFormatMpeg4) {
      return this as ThumbnailFormatMpeg4;
    }
    return null;
  }

  /// The thumbnail is in static GIF format. It will be used only for some bot inline query results
  ThumbnailFormatGif? get thumbnailFormatGif {
    if (this is ThumbnailFormatGif) {
      return this as ThumbnailFormatGif;
    }
    return null;
  }

  /// The thumbnail is in PNG format. It will be used only for background patterns
  ThumbnailFormatPng? get thumbnailFormatPng {
    if (this is ThumbnailFormatPng) {
      return this as ThumbnailFormatPng;
    }
    return null;
  }

  /// The thumbnail is in JPEG format
  ThumbnailFormatJpeg? get thumbnailFormatJpeg {
    if (this is ThumbnailFormatJpeg) {
      return this as ThumbnailFormatJpeg;
    }
    return null;
  }

  /// The thumbnail is in WEBM format. It will be used only for WEBM sticker sets
  ThumbnailFormatWebm? get thumbnailFormatWebm {
    if (this is ThumbnailFormatWebm) {
      return this as ThumbnailFormatWebm;
    }
    return null;
  }

  /// The thumbnail is in TGS format. It will be used only for TGS sticker sets
  ThumbnailFormatTgs? get thumbnailFormatTgs {
    if (this is ThumbnailFormatTgs) {
      return this as ThumbnailFormatTgs;
    }
    return null;
  }
}

extension MaskPointExt on MaskPoint {
  /// The mask is placed relatively to the eyes
  MaskPointEyes? get maskPointEyes {
    if (this is MaskPointEyes) {
      return this as MaskPointEyes;
    }
    return null;
  }

  /// The mask is placed relatively to the chin
  MaskPointChin? get maskPointChin {
    if (this is MaskPointChin) {
      return this as MaskPointChin;
    }
    return null;
  }

  /// The mask is placed relatively to the mouth
  MaskPointMouth? get maskPointMouth {
    if (this is MaskPointMouth) {
      return this as MaskPointMouth;
    }
    return null;
  }

  /// The mask is placed relatively to the forehead
  MaskPointForehead? get maskPointForehead {
    if (this is MaskPointForehead) {
      return this as MaskPointForehead;
    }
    return null;
  }
}

extension StickerFormatExt on StickerFormat {
  /// The sticker is an image in WEBP format
  StickerFormatWebp? get stickerFormatWebp {
    if (this is StickerFormatWebp) {
      return this as StickerFormatWebp;
    }
    return null;
  }

  /// The sticker is a video in WEBM format
  StickerFormatWebm? get stickerFormatWebm {
    if (this is StickerFormatWebm) {
      return this as StickerFormatWebm;
    }
    return null;
  }

  /// The sticker is an animation in TGS format
  StickerFormatTgs? get stickerFormatTgs {
    if (this is StickerFormatTgs) {
      return this as StickerFormatTgs;
    }
    return null;
  }
}

extension StickerTypeExt on StickerType {
  /// The sticker is a regular sticker
  StickerTypeRegular? get stickerTypeRegular {
    if (this is StickerTypeRegular) {
      return this as StickerTypeRegular;
    }
    return null;
  }

  /// The sticker is a mask in WEBP format to be placed on photos or videos
  StickerTypeMask? get stickerTypeMask {
    if (this is StickerTypeMask) {
      return this as StickerTypeMask;
    }
    return null;
  }

  /// The sticker is a custom emoji to be used inside message text and caption
  StickerTypeCustomEmoji? get stickerTypeCustomEmoji {
    if (this is StickerTypeCustomEmoji) {
      return this as StickerTypeCustomEmoji;
    }
    return null;
  }
}

extension StickerFullTypeExt on StickerFullType {
  /// The sticker is a regular sticker
  StickerFullTypeRegular? get stickerFullTypeRegular {
    if (this is StickerFullTypeRegular) {
      return this as StickerFullTypeRegular;
    }
    return null;
  }

  /// The sticker is a custom emoji to be used inside message text and caption. Currently, only Telegram Premium users can use custom emoji
  StickerFullTypeCustomEmoji? get stickerFullTypeCustomEmoji {
    if (this is StickerFullTypeCustomEmoji) {
      return this as StickerFullTypeCustomEmoji;
    }
    return null;
  }

  /// The sticker is a mask in WEBP format to be placed on photos or videos
  StickerFullTypeMask? get stickerFullTypeMask {
    if (this is StickerFullTypeMask) {
      return this as StickerFullTypeMask;
    }
    return null;
  }
}

extension PollTypeExt on PollType {
  /// A regular poll
  PollTypeRegular? get pollTypeRegular {
    if (this is PollTypeRegular) {
      return this as PollTypeRegular;
    }
    return null;
  }

  /// A poll in quiz mode, which has exactly one correct answer option and can be answered only once
  PollTypeQuiz? get pollTypeQuiz {
    if (this is PollTypeQuiz) {
      return this as PollTypeQuiz;
    }
    return null;
  }
}

extension UserTypeExt on UserType {
  /// A regular user
  UserTypeRegular? get userTypeRegular {
    if (this is UserTypeRegular) {
      return this as UserTypeRegular;
    }
    return null;
  }

  /// A bot (see https://core.telegram.org/bots)
  UserTypeBot? get userTypeBot {
    if (this is UserTypeBot) {
      return this as UserTypeBot;
    }
    return null;
  }

  /// No information on the user besides the user identifier is available, yet this user has not been deleted. This object is extremely rare and must be handled like a deleted user. It is not possible to perform any actions on users of this type
  UserTypeUnknown? get userTypeUnknown {
    if (this is UserTypeUnknown) {
      return this as UserTypeUnknown;
    }
    return null;
  }

  /// A deleted user or deleted bot. No information on the user besides the user identifier is available. It is not possible to perform any active actions on this type of user
  UserTypeDeleted? get userTypeDeleted {
    if (this is UserTypeDeleted) {
      return this as UserTypeDeleted;
    }
    return null;
  }
}

extension ChatPhotoStickerTypeExt on ChatPhotoStickerType {
  /// Information about the custom emoji, which was used to create the chat photo
  ChatPhotoStickerTypeCustomEmoji? get chatPhotoStickerTypeCustomEmoji {
    if (this is ChatPhotoStickerTypeCustomEmoji) {
      return this as ChatPhotoStickerTypeCustomEmoji;
    }
    return null;
  }

  /// Information about the sticker, which was used to create the chat photo
  ChatPhotoStickerTypeRegularOrMask? get chatPhotoStickerTypeRegularOrMask {
    if (this is ChatPhotoStickerTypeRegularOrMask) {
      return this as ChatPhotoStickerTypeRegularOrMask;
    }
    return null;
  }
}

extension InputChatPhotoExt on InputChatPhoto {
  /// A sticker on a custom background
  InputChatPhotoSticker? get inputChatPhotoSticker {
    if (this is InputChatPhotoSticker) {
      return this as InputChatPhotoSticker;
    }
    return null;
  }

  /// A static photo in JPEG format
  InputChatPhotoStatic? get inputChatPhotoStatic {
    if (this is InputChatPhotoStatic) {
      return this as InputChatPhotoStatic;
    }
    return null;
  }

  /// A previously used profile photo of the current user
  InputChatPhotoPrevious? get inputChatPhotoPrevious {
    if (this is InputChatPhotoPrevious) {
      return this as InputChatPhotoPrevious;
    }
    return null;
  }

  /// An animation in MPEG4 format; must be square, at most 10 seconds long, have width between 160 and 1280 and be at most 2MB in size
  InputChatPhotoAnimation? get inputChatPhotoAnimation {
    if (this is InputChatPhotoAnimation) {
      return this as InputChatPhotoAnimation;
    }
    return null;
  }
}

extension ChatMemberStatusExt on ChatMemberStatus {
  /// The user is the owner of the chat and has all the administrator privileges
  ChatMemberStatusCreator? get chatMemberStatusCreator {
    if (this is ChatMemberStatusCreator) {
      return this as ChatMemberStatusCreator;
    }
    return null;
  }

  /// The user or the chat was banned (and hence is not a member of the chat). Implies the user can't return to the chat, view messages, or be used as a participant identifier to join a video chat of the chat
  ChatMemberStatusBanned? get chatMemberStatusBanned {
    if (this is ChatMemberStatusBanned) {
      return this as ChatMemberStatusBanned;
    }
    return null;
  }

  /// The user is a member of the chat and has some additional privileges. In basic groups, administrators can edit and delete messages sent by others, add new members, ban unprivileged members, and manage video chats.
  ChatMemberStatusAdministrator? get chatMemberStatusAdministrator {
    if (this is ChatMemberStatusAdministrator) {
      return this as ChatMemberStatusAdministrator;
    }
    return null;
  }

  /// The user is a member of the chat, without any additional privileges or restrictions
  ChatMemberStatusMember? get chatMemberStatusMember {
    if (this is ChatMemberStatusMember) {
      return this as ChatMemberStatusMember;
    }
    return null;
  }

  /// The user or the chat is not a chat member
  ChatMemberStatusLeft? get chatMemberStatusLeft {
    if (this is ChatMemberStatusLeft) {
      return this as ChatMemberStatusLeft;
    }
    return null;
  }

  /// The user is under certain restrictions in the chat. Not supported in basic groups and channels
  ChatMemberStatusRestricted? get chatMemberStatusRestricted {
    if (this is ChatMemberStatusRestricted) {
      return this as ChatMemberStatusRestricted;
    }
    return null;
  }
}

extension ChatMembersFilterExt on ChatMembersFilter {
  /// Returns bot members of the chat
  ChatMembersFilterBots? get chatMembersFilterBots {
    if (this is ChatMembersFilterBots) {
      return this as ChatMembersFilterBots;
    }
    return null;
  }

  /// Returns all chat members, including restricted chat members
  ChatMembersFilterMembers? get chatMembersFilterMembers {
    if (this is ChatMembersFilterMembers) {
      return this as ChatMembersFilterMembers;
    }
    return null;
  }

  /// Returns users under certain restrictions in the chat; can be used only by administrators in a supergroup
  ChatMembersFilterRestricted? get chatMembersFilterRestricted {
    if (this is ChatMembersFilterRestricted) {
      return this as ChatMembersFilterRestricted;
    }
    return null;
  }

  /// Returns users banned from the chat; can be used only by administrators in a supergroup or in a channel
  ChatMembersFilterBanned? get chatMembersFilterBanned {
    if (this is ChatMembersFilterBanned) {
      return this as ChatMembersFilterBanned;
    }
    return null;
  }

  /// Returns the owner and administrators
  ChatMembersFilterAdministrators? get chatMembersFilterAdministrators {
    if (this is ChatMembersFilterAdministrators) {
      return this as ChatMembersFilterAdministrators;
    }
    return null;
  }

  /// Returns contacts of the user
  ChatMembersFilterContacts? get chatMembersFilterContacts {
    if (this is ChatMembersFilterContacts) {
      return this as ChatMembersFilterContacts;
    }
    return null;
  }

  /// Returns users which can be mentioned in the chat
  ChatMembersFilterMention? get chatMembersFilterMention {
    if (this is ChatMembersFilterMention) {
      return this as ChatMembersFilterMention;
    }
    return null;
  }
}

extension SupergroupMembersFilterExt on SupergroupMembersFilter {
  /// Used to search for supergroup or channel members via a (string) query
  SupergroupMembersFilterSearch? get supergroupMembersFilterSearch {
    if (this is SupergroupMembersFilterSearch) {
      return this as SupergroupMembersFilterSearch;
    }
    return null;
  }

  /// Returns users which can be mentioned in the supergroup
  SupergroupMembersFilterMention? get supergroupMembersFilterMention {
    if (this is SupergroupMembersFilterMention) {
      return this as SupergroupMembersFilterMention;
    }
    return null;
  }

  /// Returns restricted supergroup members; can be used only by administrators
  SupergroupMembersFilterRestricted? get supergroupMembersFilterRestricted {
    if (this is SupergroupMembersFilterRestricted) {
      return this as SupergroupMembersFilterRestricted;
    }
    return null;
  }

  /// Returns bot members of the supergroup or channel
  SupergroupMembersFilterBots? get supergroupMembersFilterBots {
    if (this is SupergroupMembersFilterBots) {
      return this as SupergroupMembersFilterBots;
    }
    return null;
  }

  /// Returns users banned from the supergroup or channel; can be used only by administrators
  SupergroupMembersFilterBanned? get supergroupMembersFilterBanned {
    if (this is SupergroupMembersFilterBanned) {
      return this as SupergroupMembersFilterBanned;
    }
    return null;
  }

  /// Returns contacts of the user, which are members of the supergroup or channel
  SupergroupMembersFilterContacts? get supergroupMembersFilterContacts {
    if (this is SupergroupMembersFilterContacts) {
      return this as SupergroupMembersFilterContacts;
    }
    return null;
  }

  /// Returns the owner and administrators
  SupergroupMembersFilterAdministrators?
      get supergroupMembersFilterAdministrators {
    if (this is SupergroupMembersFilterAdministrators) {
      return this as SupergroupMembersFilterAdministrators;
    }
    return null;
  }

  /// Returns recently active users in reverse chronological order
  SupergroupMembersFilterRecent? get supergroupMembersFilterRecent {
    if (this is SupergroupMembersFilterRecent) {
      return this as SupergroupMembersFilterRecent;
    }
    return null;
  }
}

extension InviteLinkChatTypeExt on InviteLinkChatType {
  /// The link is an invite link for a channel
  InviteLinkChatTypeChannel? get inviteLinkChatTypeChannel {
    if (this is InviteLinkChatTypeChannel) {
      return this as InviteLinkChatTypeChannel;
    }
    return null;
  }

  /// The link is an invite link for a basic group
  InviteLinkChatTypeBasicGroup? get inviteLinkChatTypeBasicGroup {
    if (this is InviteLinkChatTypeBasicGroup) {
      return this as InviteLinkChatTypeBasicGroup;
    }
    return null;
  }

  /// The link is an invite link for a supergroup
  InviteLinkChatTypeSupergroup? get inviteLinkChatTypeSupergroup {
    if (this is InviteLinkChatTypeSupergroup) {
      return this as InviteLinkChatTypeSupergroup;
    }
    return null;
  }
}

extension SecretChatStateExt on SecretChatState {
  /// The secret chat is not yet created; waiting for the other user to get online
  SecretChatStatePending? get secretChatStatePending {
    if (this is SecretChatStatePending) {
      return this as SecretChatStatePending;
    }
    return null;
  }

  /// The secret chat is ready to use
  SecretChatStateReady? get secretChatStateReady {
    if (this is SecretChatStateReady) {
      return this as SecretChatStateReady;
    }
    return null;
  }

  /// The secret chat is closed
  SecretChatStateClosed? get secretChatStateClosed {
    if (this is SecretChatStateClosed) {
      return this as SecretChatStateClosed;
    }
    return null;
  }
}

extension MessageSenderExt on MessageSender {
  /// The message was sent by a known user
  MessageSenderUser? get messageSenderUser {
    if (this is MessageSenderUser) {
      return this as MessageSenderUser;
    }
    return null;
  }

  /// The message was sent on behalf of a chat
  MessageSenderChat? get messageSenderChat {
    if (this is MessageSenderChat) {
      return this as MessageSenderChat;
    }
    return null;
  }
}

extension MessageForwardOriginExt on MessageForwardOrigin {
  /// The message was originally a post in a channel
  MessageForwardOriginChannel? get messageForwardOriginChannel {
    if (this is MessageForwardOriginChannel) {
      return this as MessageForwardOriginChannel;
    }
    return null;
  }

  /// The message was originally sent on behalf of a chat
  MessageForwardOriginChat? get messageForwardOriginChat {
    if (this is MessageForwardOriginChat) {
      return this as MessageForwardOriginChat;
    }
    return null;
  }

  /// The message was imported from an exported message history
  MessageForwardOriginMessageImport? get messageForwardOriginMessageImport {
    if (this is MessageForwardOriginMessageImport) {
      return this as MessageForwardOriginMessageImport;
    }
    return null;
  }

  /// The message was originally sent by a known user
  MessageForwardOriginUser? get messageForwardOriginUser {
    if (this is MessageForwardOriginUser) {
      return this as MessageForwardOriginUser;
    }
    return null;
  }

  /// The message was originally sent by a user, which is hidden by their privacy settings
  MessageForwardOriginHiddenUser? get messageForwardOriginHiddenUser {
    if (this is MessageForwardOriginHiddenUser) {
      return this as MessageForwardOriginHiddenUser;
    }
    return null;
  }
}

extension ReactionTypeExt on ReactionType {
  /// A reaction with a custom emoji
  ReactionTypeCustomEmoji? get reactionTypeCustomEmoji {
    if (this is ReactionTypeCustomEmoji) {
      return this as ReactionTypeCustomEmoji;
    }
    return null;
  }

  /// A reaction with an emoji
  ReactionTypeEmoji? get reactionTypeEmoji {
    if (this is ReactionTypeEmoji) {
      return this as ReactionTypeEmoji;
    }
    return null;
  }
}

extension MessageSendingStateExt on MessageSendingState {
  /// The message failed to be sent
  MessageSendingStateFailed? get messageSendingStateFailed {
    if (this is MessageSendingStateFailed) {
      return this as MessageSendingStateFailed;
    }
    return null;
  }

  /// The message is being sent now, but has not yet been delivered to the server
  MessageSendingStatePending? get messageSendingStatePending {
    if (this is MessageSendingStatePending) {
      return this as MessageSendingStatePending;
    }
    return null;
  }
}

extension MessageReplyToExt on MessageReplyTo {
  /// Describes a replied message
  MessageReplyToMessage? get messageReplyToMessage {
    if (this is MessageReplyToMessage) {
      return this as MessageReplyToMessage;
    }
    return null;
  }

  /// Describes a replied story
  MessageReplyToStory? get messageReplyToStory {
    if (this is MessageReplyToStory) {
      return this as MessageReplyToStory;
    }
    return null;
  }
}

extension MessageSourceExt on MessageSource {
  /// The message is from a chat history
  MessageSourceChatHistory? get messageSourceChatHistory {
    if (this is MessageSourceChatHistory) {
      return this as MessageSourceChatHistory;
    }
    return null;
  }

  /// The message is from a message thread history
  MessageSourceMessageThreadHistory? get messageSourceMessageThreadHistory {
    if (this is MessageSourceMessageThreadHistory) {
      return this as MessageSourceMessageThreadHistory;
    }
    return null;
  }

  /// The message is from a chat list or a forum topic list
  MessageSourceChatList? get messageSourceChatList {
    if (this is MessageSourceChatList) {
      return this as MessageSourceChatList;
    }
    return null;
  }

  /// The message is from a notification
  MessageSourceNotification? get messageSourceNotification {
    if (this is MessageSourceNotification) {
      return this as MessageSourceNotification;
    }
    return null;
  }

  /// The message is from chat, message thread or forum topic history preview
  MessageSourceHistoryPreview? get messageSourceHistoryPreview {
    if (this is MessageSourceHistoryPreview) {
      return this as MessageSourceHistoryPreview;
    }
    return null;
  }

  /// The message was screenshotted; the source must be used only if the message content was visible during the screenshot
  MessageSourceScreenshot? get messageSourceScreenshot {
    if (this is MessageSourceScreenshot) {
      return this as MessageSourceScreenshot;
    }
    return null;
  }

  /// The message is from a chat event log
  MessageSourceChatEventLog? get messageSourceChatEventLog {
    if (this is MessageSourceChatEventLog) {
      return this as MessageSourceChatEventLog;
    }
    return null;
  }

  /// The message is from search results, including file downloads, local file list, outgoing document messages, calendar
  MessageSourceSearch? get messageSourceSearch {
    if (this is MessageSourceSearch) {
      return this as MessageSourceSearch;
    }
    return null;
  }

  /// The message is from some other source
  MessageSourceOther? get messageSourceOther {
    if (this is MessageSourceOther) {
      return this as MessageSourceOther;
    }
    return null;
  }

  /// The message is from a forum topic history
  MessageSourceForumTopicHistory? get messageSourceForumTopicHistory {
    if (this is MessageSourceForumTopicHistory) {
      return this as MessageSourceForumTopicHistory;
    }
    return null;
  }
}

extension MessageSponsorTypeExt on MessageSponsorType {
  /// The sponsor is a website
  MessageSponsorTypeWebsite? get messageSponsorTypeWebsite {
    if (this is MessageSponsorTypeWebsite) {
      return this as MessageSponsorTypeWebsite;
    }
    return null;
  }

  /// The sponsor is a public channel chat
  MessageSponsorTypePublicChannel? get messageSponsorTypePublicChannel {
    if (this is MessageSponsorTypePublicChannel) {
      return this as MessageSponsorTypePublicChannel;
    }
    return null;
  }

  /// The sponsor is a private channel chat
  MessageSponsorTypePrivateChannel? get messageSponsorTypePrivateChannel {
    if (this is MessageSponsorTypePrivateChannel) {
      return this as MessageSponsorTypePrivateChannel;
    }
    return null;
  }

  /// The sponsor is a bot
  MessageSponsorTypeBot? get messageSponsorTypeBot {
    if (this is MessageSponsorTypeBot) {
      return this as MessageSponsorTypeBot;
    }
    return null;
  }
}

extension NotificationSettingsScopeExt on NotificationSettingsScope {
  /// Notification settings applied to all channel chats when the corresponding chat setting has a default value
  NotificationSettingsScopeChannelChats?
      get notificationSettingsScopeChannelChats {
    if (this is NotificationSettingsScopeChannelChats) {
      return this as NotificationSettingsScopeChannelChats;
    }
    return null;
  }

  /// Notification settings applied to all private and secret chats when the corresponding chat setting has a default value
  NotificationSettingsScopePrivateChats?
      get notificationSettingsScopePrivateChats {
    if (this is NotificationSettingsScopePrivateChats) {
      return this as NotificationSettingsScopePrivateChats;
    }
    return null;
  }

  /// Notification settings applied to all basic group and supergroup chats when the corresponding chat setting has a default value
  NotificationSettingsScopeGroupChats? get notificationSettingsScopeGroupChats {
    if (this is NotificationSettingsScopeGroupChats) {
      return this as NotificationSettingsScopeGroupChats;
    }
    return null;
  }
}

extension ChatTypeExt on ChatType {
  /// A supergroup or channel (with unlimited members)
  ChatTypeSupergroup? get chatTypeSupergroup {
    if (this is ChatTypeSupergroup) {
      return this as ChatTypeSupergroup;
    }
    return null;
  }

  /// A basic group (a chat with 0-200 other users)
  ChatTypeBasicGroup? get chatTypeBasicGroup {
    if (this is ChatTypeBasicGroup) {
      return this as ChatTypeBasicGroup;
    }
    return null;
  }

  /// A secret chat with a user
  ChatTypeSecret? get chatTypeSecret {
    if (this is ChatTypeSecret) {
      return this as ChatTypeSecret;
    }
    return null;
  }

  /// An ordinary chat with a user
  ChatTypePrivate? get chatTypePrivate {
    if (this is ChatTypePrivate) {
      return this as ChatTypePrivate;
    }
    return null;
  }
}

extension ChatListExt on ChatList {
  /// A main list of chats
  ChatListMain? get chatListMain {
    if (this is ChatListMain) {
      return this as ChatListMain;
    }
    return null;
  }

  /// A list of chats usually located at the top of the main chat list. Unmuted chats are automatically moved from the Archive to the Main chat list when a new message arrives
  ChatListArchive? get chatListArchive {
    if (this is ChatListArchive) {
      return this as ChatListArchive;
    }
    return null;
  }

  /// A list of chats added to a chat folder
  ChatListFolder? get chatListFolder {
    if (this is ChatListFolder) {
      return this as ChatListFolder;
    }
    return null;
  }
}

extension ChatSourceExt on ChatSource {
  /// The chat contains a public service announcement
  ChatSourcePublicServiceAnnouncement? get chatSourcePublicServiceAnnouncement {
    if (this is ChatSourcePublicServiceAnnouncement) {
      return this as ChatSourcePublicServiceAnnouncement;
    }
    return null;
  }

  /// The chat is sponsored by the user's MTProxy server
  ChatSourceMtprotoProxy? get chatSourceMtprotoProxy {
    if (this is ChatSourceMtprotoProxy) {
      return this as ChatSourceMtprotoProxy;
    }
    return null;
  }
}

extension ChatAvailableReactionsExt on ChatAvailableReactions {
  /// All reactions are available in the chat
  ChatAvailableReactionsAll? get chatAvailableReactionsAll {
    if (this is ChatAvailableReactionsAll) {
      return this as ChatAvailableReactionsAll;
    }
    return null;
  }

  /// Only specific reactions are available in the chat
  ChatAvailableReactionsSome? get chatAvailableReactionsSome {
    if (this is ChatAvailableReactionsSome) {
      return this as ChatAvailableReactionsSome;
    }
    return null;
  }
}

extension PublicChatTypeExt on PublicChatType {
  /// The chat is public, because it is a location-based supergroup
  PublicChatTypeIsLocationBased? get publicChatTypeIsLocationBased {
    if (this is PublicChatTypeIsLocationBased) {
      return this as PublicChatTypeIsLocationBased;
    }
    return null;
  }

  /// The chat is public, because it has an active username
  PublicChatTypeHasUsername? get publicChatTypeHasUsername {
    if (this is PublicChatTypeHasUsername) {
      return this as PublicChatTypeHasUsername;
    }
    return null;
  }
}

extension ChatActionBarExt on ChatActionBar {
  /// The chat is a recently created group chat to which new members can be invited
  ChatActionBarInviteMembers? get chatActionBarInviteMembers {
    if (this is ChatActionBarInviteMembers) {
      return this as ChatActionBarInviteMembers;
    }
    return null;
  }

  /// The chat can be reported as spam using the method reportChat with the reason reportReasonSpam. If the chat is a private chat with a user with an emoji status, then a notice about emoji status usage must be shown
  ChatActionBarReportSpam? get chatActionBarReportSpam {
    if (this is ChatActionBarReportSpam) {
      return this as ChatActionBarReportSpam;
    }
    return null;
  }

  /// The chat is a private or secret chat with a mutual contact and the user's phone number can be shared with the other user using the method sharePhoneNumber
  ChatActionBarSharePhoneNumber? get chatActionBarSharePhoneNumber {
    if (this is ChatActionBarSharePhoneNumber) {
      return this as ChatActionBarSharePhoneNumber;
    }
    return null;
  }

  /// The chat is a private or secret chat, which can be reported using the method reportChat, or the other user can be blocked using the method setMessageSenderBlockList,
  ChatActionBarReportAddBlock? get chatActionBarReportAddBlock {
    if (this is ChatActionBarReportAddBlock) {
      return this as ChatActionBarReportAddBlock;
    }
    return null;
  }

  /// The chat is a location-based supergroup, which can be reported as having unrelated location using the method reportChat with the reason reportReasonUnrelatedLocation
  ChatActionBarReportUnrelatedLocation?
      get chatActionBarReportUnrelatedLocation {
    if (this is ChatActionBarReportUnrelatedLocation) {
      return this as ChatActionBarReportUnrelatedLocation;
    }
    return null;
  }

  /// The chat is a private chat with an administrator of a chat to which the user sent join request
  ChatActionBarJoinRequest? get chatActionBarJoinRequest {
    if (this is ChatActionBarJoinRequest) {
      return this as ChatActionBarJoinRequest;
    }
    return null;
  }

  /// The chat is a private or secret chat and the other user can be added to the contact list using the method addContact
  ChatActionBarAddContact? get chatActionBarAddContact {
    if (this is ChatActionBarAddContact) {
      return this as ChatActionBarAddContact;
    }
    return null;
  }
}

extension KeyboardButtonTypeExt on KeyboardButtonType {
  /// A simple button, with text that must be sent when the button is pressed
  KeyboardButtonTypeText? get keyboardButtonTypeText {
    if (this is KeyboardButtonTypeText) {
      return this as KeyboardButtonTypeText;
    }
    return null;
  }

  /// A button that requests a user to be shared by the current user; available only in private chats. Use the method shareUserWithBot to complete the request
  KeyboardButtonTypeRequestUser? get keyboardButtonTypeRequestUser {
    if (this is KeyboardButtonTypeRequestUser) {
      return this as KeyboardButtonTypeRequestUser;
    }
    return null;
  }

  /// A button that opens a Web App by calling getWebAppUrl
  KeyboardButtonTypeWebApp? get keyboardButtonTypeWebApp {
    if (this is KeyboardButtonTypeWebApp) {
      return this as KeyboardButtonTypeWebApp;
    }
    return null;
  }

  /// A button that requests a chat to be shared by the current user; available only in private chats. Use the method shareChatWithBot to complete the request
  KeyboardButtonTypeRequestChat? get keyboardButtonTypeRequestChat {
    if (this is KeyboardButtonTypeRequestChat) {
      return this as KeyboardButtonTypeRequestChat;
    }
    return null;
  }

  /// A button that sends the user's phone number when pressed; available only in private chats
  KeyboardButtonTypeRequestPhoneNumber?
      get keyboardButtonTypeRequestPhoneNumber {
    if (this is KeyboardButtonTypeRequestPhoneNumber) {
      return this as KeyboardButtonTypeRequestPhoneNumber;
    }
    return null;
  }

  /// A button that sends the user's location when pressed; available only in private chats
  KeyboardButtonTypeRequestLocation? get keyboardButtonTypeRequestLocation {
    if (this is KeyboardButtonTypeRequestLocation) {
      return this as KeyboardButtonTypeRequestLocation;
    }
    return null;
  }

  /// A button that allows the user to create and send a poll when pressed; available only in private chats
  KeyboardButtonTypeRequestPoll? get keyboardButtonTypeRequestPoll {
    if (this is KeyboardButtonTypeRequestPoll) {
      return this as KeyboardButtonTypeRequestPoll;
    }
    return null;
  }
}

extension InlineKeyboardButtonTypeExt on InlineKeyboardButtonType {
  /// A button that sends a callback query to a bot
  InlineKeyboardButtonTypeCallback? get inlineKeyboardButtonTypeCallback {
    if (this is InlineKeyboardButtonTypeCallback) {
      return this as InlineKeyboardButtonTypeCallback;
    }
    return null;
  }

  /// A button with a user reference to be handled in the same way as textEntityTypeMentionName entities
  InlineKeyboardButtonTypeUser? get inlineKeyboardButtonTypeUser {
    if (this is InlineKeyboardButtonTypeUser) {
      return this as InlineKeyboardButtonTypeUser;
    }
    return null;
  }

  /// A button that forces an inline query to the bot to be inserted in the input field
  InlineKeyboardButtonTypeSwitchInline?
      get inlineKeyboardButtonTypeSwitchInline {
    if (this is InlineKeyboardButtonTypeSwitchInline) {
      return this as InlineKeyboardButtonTypeSwitchInline;
    }
    return null;
  }

  /// A button that opens a specified URL and automatically authorize the current user by calling getLoginUrlInfo
  InlineKeyboardButtonTypeLoginUrl? get inlineKeyboardButtonTypeLoginUrl {
    if (this is InlineKeyboardButtonTypeLoginUrl) {
      return this as InlineKeyboardButtonTypeLoginUrl;
    }
    return null;
  }

  /// A button with a game that sends a callback query to a bot. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageGame
  InlineKeyboardButtonTypeCallbackGame?
      get inlineKeyboardButtonTypeCallbackGame {
    if (this is InlineKeyboardButtonTypeCallbackGame) {
      return this as InlineKeyboardButtonTypeCallbackGame;
    }
    return null;
  }

  /// A button to buy something. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageInvoice
  InlineKeyboardButtonTypeBuy? get inlineKeyboardButtonTypeBuy {
    if (this is InlineKeyboardButtonTypeBuy) {
      return this as InlineKeyboardButtonTypeBuy;
    }
    return null;
  }

  /// A button that asks for the 2-step verification password of the current user and then sends a callback query to a bot
  InlineKeyboardButtonTypeCallbackWithPassword?
      get inlineKeyboardButtonTypeCallbackWithPassword {
    if (this is InlineKeyboardButtonTypeCallbackWithPassword) {
      return this as InlineKeyboardButtonTypeCallbackWithPassword;
    }
    return null;
  }

  /// A button that opens a Web App by calling openWebApp
  InlineKeyboardButtonTypeWebApp? get inlineKeyboardButtonTypeWebApp {
    if (this is InlineKeyboardButtonTypeWebApp) {
      return this as InlineKeyboardButtonTypeWebApp;
    }
    return null;
  }

  /// A button that opens a specified URL
  InlineKeyboardButtonTypeUrl? get inlineKeyboardButtonTypeUrl {
    if (this is InlineKeyboardButtonTypeUrl) {
      return this as InlineKeyboardButtonTypeUrl;
    }
    return null;
  }
}

extension ReplyMarkupExt on ReplyMarkup {
  /// Contains a custom keyboard layout to quickly reply to bots
  ReplyMarkupShowKeyboard? get replyMarkupShowKeyboard {
    if (this is ReplyMarkupShowKeyboard) {
      return this as ReplyMarkupShowKeyboard;
    }
    return null;
  }

  /// Instructs application to remove the keyboard once this message has been received. This kind of keyboard can't be received in an incoming message; instead, updateChatReplyMarkup with message_id == 0 will be sent
  ReplyMarkupRemoveKeyboard? get replyMarkupRemoveKeyboard {
    if (this is ReplyMarkupRemoveKeyboard) {
      return this as ReplyMarkupRemoveKeyboard;
    }
    return null;
  }

  /// Contains an inline keyboard layout
  ReplyMarkupInlineKeyboard? get replyMarkupInlineKeyboard {
    if (this is ReplyMarkupInlineKeyboard) {
      return this as ReplyMarkupInlineKeyboard;
    }
    return null;
  }

  /// Instructs application to force a reply to this message
  ReplyMarkupForceReply? get replyMarkupForceReply {
    if (this is ReplyMarkupForceReply) {
      return this as ReplyMarkupForceReply;
    }
    return null;
  }
}

extension LoginUrlInfoExt on LoginUrlInfo {
  /// An authorization confirmation dialog needs to be shown to the user
  LoginUrlInfoRequestConfirmation? get loginUrlInfoRequestConfirmation {
    if (this is LoginUrlInfoRequestConfirmation) {
      return this as LoginUrlInfoRequestConfirmation;
    }
    return null;
  }

  /// An HTTP URL needs to be open
  LoginUrlInfoOpen? get loginUrlInfoOpen {
    if (this is LoginUrlInfoOpen) {
      return this as LoginUrlInfoOpen;
    }
    return null;
  }
}

extension RichTextExt on RichText {
  /// A small image inside the text
  RichTextIcon? get richTextIcon {
    if (this is RichTextIcon) {
      return this as RichTextIcon;
    }
    return null;
  }

  /// A reference to a richTexts object on the same web page
  RichTextReference? get richTextReference {
    if (this is RichTextReference) {
      return this as RichTextReference;
    }
    return null;
  }

  /// An underlined rich text
  RichTextUnderline? get richTextUnderline {
    if (this is RichTextUnderline) {
      return this as RichTextUnderline;
    }
    return null;
  }

  /// A concatenation of rich texts
  RichTexts? get richTexts {
    if (this is RichTexts) {
      return this as RichTexts;
    }
    return null;
  }

  /// A strikethrough rich text
  RichTextStrikethrough? get richTextStrikethrough {
    if (this is RichTextStrikethrough) {
      return this as RichTextStrikethrough;
    }
    return null;
  }

  /// A superscript rich text
  RichTextSuperscript? get richTextSuperscript {
    if (this is RichTextSuperscript) {
      return this as RichTextSuperscript;
    }
    return null;
  }

  /// A rich text phone number
  RichTextPhoneNumber? get richTextPhoneNumber {
    if (this is RichTextPhoneNumber) {
      return this as RichTextPhoneNumber;
    }
    return null;
  }

  /// A plain text
  RichTextPlain? get richTextPlain {
    if (this is RichTextPlain) {
      return this as RichTextPlain;
    }
    return null;
  }

  /// A subscript rich text
  RichTextSubscript? get richTextSubscript {
    if (this is RichTextSubscript) {
      return this as RichTextSubscript;
    }
    return null;
  }

  /// A rich text URL link
  RichTextUrl? get richTextUrl {
    if (this is RichTextUrl) {
      return this as RichTextUrl;
    }
    return null;
  }

  /// An anchor
  RichTextAnchor? get richTextAnchor {
    if (this is RichTextAnchor) {
      return this as RichTextAnchor;
    }
    return null;
  }

  /// A link to an anchor on the same web page
  RichTextAnchorLink? get richTextAnchorLink {
    if (this is RichTextAnchorLink) {
      return this as RichTextAnchorLink;
    }
    return null;
  }

  /// A rich text email link
  RichTextEmailAddress? get richTextEmailAddress {
    if (this is RichTextEmailAddress) {
      return this as RichTextEmailAddress;
    }
    return null;
  }

  /// An italicized rich text
  RichTextItalic? get richTextItalic {
    if (this is RichTextItalic) {
      return this as RichTextItalic;
    }
    return null;
  }

  /// A marked rich text
  RichTextMarked? get richTextMarked {
    if (this is RichTextMarked) {
      return this as RichTextMarked;
    }
    return null;
  }

  /// A fixed-width rich text
  RichTextFixed? get richTextFixed {
    if (this is RichTextFixed) {
      return this as RichTextFixed;
    }
    return null;
  }

  /// A bold rich text
  RichTextBold? get richTextBold {
    if (this is RichTextBold) {
      return this as RichTextBold;
    }
    return null;
  }
}

extension PageBlockHorizontalAlignmentExt on PageBlockHorizontalAlignment {
  /// The content must be left-aligned
  PageBlockHorizontalAlignmentLeft? get pageBlockHorizontalAlignmentLeft {
    if (this is PageBlockHorizontalAlignmentLeft) {
      return this as PageBlockHorizontalAlignmentLeft;
    }
    return null;
  }

  /// The content must be right-aligned
  PageBlockHorizontalAlignmentRight? get pageBlockHorizontalAlignmentRight {
    if (this is PageBlockHorizontalAlignmentRight) {
      return this as PageBlockHorizontalAlignmentRight;
    }
    return null;
  }

  /// The content must be center-aligned
  PageBlockHorizontalAlignmentCenter? get pageBlockHorizontalAlignmentCenter {
    if (this is PageBlockHorizontalAlignmentCenter) {
      return this as PageBlockHorizontalAlignmentCenter;
    }
    return null;
  }
}

extension PageBlockVerticalAlignmentExt on PageBlockVerticalAlignment {
  /// The content must be middle-aligned
  PageBlockVerticalAlignmentMiddle? get pageBlockVerticalAlignmentMiddle {
    if (this is PageBlockVerticalAlignmentMiddle) {
      return this as PageBlockVerticalAlignmentMiddle;
    }
    return null;
  }

  /// The content must be bottom-aligned
  PageBlockVerticalAlignmentBottom? get pageBlockVerticalAlignmentBottom {
    if (this is PageBlockVerticalAlignmentBottom) {
      return this as PageBlockVerticalAlignmentBottom;
    }
    return null;
  }

  /// The content must be top-aligned
  PageBlockVerticalAlignmentTop? get pageBlockVerticalAlignmentTop {
    if (this is PageBlockVerticalAlignmentTop) {
      return this as PageBlockVerticalAlignmentTop;
    }
    return null;
  }
}

extension PageBlockExt on PageBlock {
  /// A list of data blocks
  PageBlockList? get pageBlockList {
    if (this is PageBlockList) {
      return this as PageBlockList;
    }
    return null;
  }

  /// A video
  PageBlockVideo? get pageBlockVideo {
    if (this is PageBlockVideo) {
      return this as PageBlockVideo;
    }
    return null;
  }

  /// An animation
  PageBlockAnimation? get pageBlockAnimation {
    if (this is PageBlockAnimation) {
      return this as PageBlockAnimation;
    }
    return null;
  }

  /// Related articles
  PageBlockRelatedArticles? get pageBlockRelatedArticles {
    if (this is PageBlockRelatedArticles) {
      return this as PageBlockRelatedArticles;
    }
    return null;
  }

  /// An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor
  PageBlockAnchor? get pageBlockAnchor {
    if (this is PageBlockAnchor) {
      return this as PageBlockAnchor;
    }
    return null;
  }

  /// An audio file
  PageBlockAudio? get pageBlockAudio {
    if (this is PageBlockAudio) {
      return this as PageBlockAudio;
    }
    return null;
  }

  /// A slideshow
  PageBlockSlideshow? get pageBlockSlideshow {
    if (this is PageBlockSlideshow) {
      return this as PageBlockSlideshow;
    }
    return null;
  }

  /// The author and publishing date of a page
  PageBlockAuthorDate? get pageBlockAuthorDate {
    if (this is PageBlockAuthorDate) {
      return this as PageBlockAuthorDate;
    }
    return null;
  }

  /// The footer of a page
  PageBlockFooter? get pageBlockFooter {
    if (this is PageBlockFooter) {
      return this as PageBlockFooter;
    }
    return null;
  }

  /// An embedded post
  PageBlockEmbeddedPost? get pageBlockEmbeddedPost {
    if (this is PageBlockEmbeddedPost) {
      return this as PageBlockEmbeddedPost;
    }
    return null;
  }

  /// A collage
  PageBlockCollage? get pageBlockCollage {
    if (this is PageBlockCollage) {
      return this as PageBlockCollage;
    }
    return null;
  }

  /// A voice note
  PageBlockVoiceNote? get pageBlockVoiceNote {
    if (this is PageBlockVoiceNote) {
      return this as PageBlockVoiceNote;
    }
    return null;
  }

  /// A kicker
  PageBlockKicker? get pageBlockKicker {
    if (this is PageBlockKicker) {
      return this as PageBlockKicker;
    }
    return null;
  }

  /// A link to a chat
  PageBlockChatLink? get pageBlockChatLink {
    if (this is PageBlockChatLink) {
      return this as PageBlockChatLink;
    }
    return null;
  }

  /// A subheader
  PageBlockSubheader? get pageBlockSubheader {
    if (this is PageBlockSubheader) {
      return this as PageBlockSubheader;
    }
    return null;
  }

  /// The title of a page
  PageBlockTitle? get pageBlockTitle {
    if (this is PageBlockTitle) {
      return this as PageBlockTitle;
    }
    return null;
  }

  /// A preformatted text paragraph
  PageBlockPreformatted? get pageBlockPreformatted {
    if (this is PageBlockPreformatted) {
      return this as PageBlockPreformatted;
    }
    return null;
  }

  /// A map
  PageBlockMap? get pageBlockMap {
    if (this is PageBlockMap) {
      return this as PageBlockMap;
    }
    return null;
  }

  /// A collapsible block
  PageBlockDetails? get pageBlockDetails {
    if (this is PageBlockDetails) {
      return this as PageBlockDetails;
    }
    return null;
  }

  /// A header
  PageBlockHeader? get pageBlockHeader {
    if (this is PageBlockHeader) {
      return this as PageBlockHeader;
    }
    return null;
  }

  /// An empty block separating a page
  PageBlockDivider? get pageBlockDivider {
    if (this is PageBlockDivider) {
      return this as PageBlockDivider;
    }
    return null;
  }

  /// An embedded web page
  PageBlockEmbedded? get pageBlockEmbedded {
    if (this is PageBlockEmbedded) {
      return this as PageBlockEmbedded;
    }
    return null;
  }

  /// A table
  PageBlockTable? get pageBlockTable {
    if (this is PageBlockTable) {
      return this as PageBlockTable;
    }
    return null;
  }

  /// A photo
  PageBlockPhoto? get pageBlockPhoto {
    if (this is PageBlockPhoto) {
      return this as PageBlockPhoto;
    }
    return null;
  }

  /// A page cover
  PageBlockCover? get pageBlockCover {
    if (this is PageBlockCover) {
      return this as PageBlockCover;
    }
    return null;
  }

  /// A pull quote
  PageBlockPullQuote? get pageBlockPullQuote {
    if (this is PageBlockPullQuote) {
      return this as PageBlockPullQuote;
    }
    return null;
  }

  /// A text paragraph
  PageBlockParagraph? get pageBlockParagraph {
    if (this is PageBlockParagraph) {
      return this as PageBlockParagraph;
    }
    return null;
  }

  /// A block quote
  PageBlockBlockQuote? get pageBlockBlockQuote {
    if (this is PageBlockBlockQuote) {
      return this as PageBlockBlockQuote;
    }
    return null;
  }

  /// The subtitle of a page
  PageBlockSubtitle? get pageBlockSubtitle {
    if (this is PageBlockSubtitle) {
      return this as PageBlockSubtitle;
    }
    return null;
  }
}

extension InputCredentialsExt on InputCredentials {
  /// Applies if a user enters new credentials using Google Pay
  InputCredentialsGooglePay? get inputCredentialsGooglePay {
    if (this is InputCredentialsGooglePay) {
      return this as InputCredentialsGooglePay;
    }
    return null;
  }

  /// Applies if a user enters new credentials using Apple Pay
  InputCredentialsApplePay? get inputCredentialsApplePay {
    if (this is InputCredentialsApplePay) {
      return this as InputCredentialsApplePay;
    }
    return null;
  }

  /// Applies if a user chooses some previously saved payment credentials. To use their previously saved credentials, the user must have a valid temporary password
  InputCredentialsSaved? get inputCredentialsSaved {
    if (this is InputCredentialsSaved) {
      return this as InputCredentialsSaved;
    }
    return null;
  }

  /// Applies if a user enters new credentials on a payment provider website
  InputCredentialsNew? get inputCredentialsNew {
    if (this is InputCredentialsNew) {
      return this as InputCredentialsNew;
    }
    return null;
  }
}

extension PaymentProviderExt on PaymentProvider {
  /// Smart Glocal payment provider
  PaymentProviderSmartGlocal? get paymentProviderSmartGlocal {
    if (this is PaymentProviderSmartGlocal) {
      return this as PaymentProviderSmartGlocal;
    }
    return null;
  }

  /// Stripe payment provider
  PaymentProviderStripe? get paymentProviderStripe {
    if (this is PaymentProviderStripe) {
      return this as PaymentProviderStripe;
    }
    return null;
  }

  /// Some other payment provider, for which a web payment form must be shown
  PaymentProviderOther? get paymentProviderOther {
    if (this is PaymentProviderOther) {
      return this as PaymentProviderOther;
    }
    return null;
  }
}

extension InputInvoiceExt on InputInvoice {
  /// An invoice from a link of the type internalLinkTypeInvoice
  InputInvoiceName? get inputInvoiceName {
    if (this is InputInvoiceName) {
      return this as InputInvoiceName;
    }
    return null;
  }

  /// An invoice from a message of the type messageInvoice
  InputInvoiceMessage? get inputInvoiceMessage {
    if (this is InputInvoiceMessage) {
      return this as InputInvoiceMessage;
    }
    return null;
  }
}

extension MessageExtendedMediaExt on MessageExtendedMedia {
  /// The media is hidden until the invoice is paid
  MessageExtendedMediaPreview? get messageExtendedMediaPreview {
    if (this is MessageExtendedMediaPreview) {
      return this as MessageExtendedMediaPreview;
    }
    return null;
  }

  /// The media is unsupported
  MessageExtendedMediaUnsupported? get messageExtendedMediaUnsupported {
    if (this is MessageExtendedMediaUnsupported) {
      return this as MessageExtendedMediaUnsupported;
    }
    return null;
  }

  /// The media is a video
  MessageExtendedMediaVideo? get messageExtendedMediaVideo {
    if (this is MessageExtendedMediaVideo) {
      return this as MessageExtendedMediaVideo;
    }
    return null;
  }

  /// The media is a photo
  MessageExtendedMediaPhoto? get messageExtendedMediaPhoto {
    if (this is MessageExtendedMediaPhoto) {
      return this as MessageExtendedMediaPhoto;
    }
    return null;
  }
}

extension PassportElementTypeExt on PassportElementType {
  /// A Telegram Passport element containing the user's phone number
  PassportElementTypePhoneNumber? get passportElementTypePhoneNumber {
    if (this is PassportElementTypePhoneNumber) {
      return this as PassportElementTypePhoneNumber;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's utility bill
  PassportElementTypeUtilityBill? get passportElementTypeUtilityBill {
    if (this is PassportElementTypeUtilityBill) {
      return this as PassportElementTypeUtilityBill;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's address
  PassportElementTypeAddress? get passportElementTypeAddress {
    if (this is PassportElementTypeAddress) {
      return this as PassportElementTypeAddress;
    }
    return null;
  }

  /// A Telegram Passport element containing the registration page of the user's passport
  PassportElementTypePassportRegistration?
      get passportElementTypePassportRegistration {
    if (this is PassportElementTypePassportRegistration) {
      return this as PassportElementTypePassportRegistration;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's rental agreement
  PassportElementTypeRentalAgreement? get passportElementTypeRentalAgreement {
    if (this is PassportElementTypeRentalAgreement) {
      return this as PassportElementTypeRentalAgreement;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's email address
  PassportElementTypeEmailAddress? get passportElementTypeEmailAddress {
    if (this is PassportElementTypeEmailAddress) {
      return this as PassportElementTypeEmailAddress;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's bank statement
  PassportElementTypeBankStatement? get passportElementTypeBankStatement {
    if (this is PassportElementTypeBankStatement) {
      return this as PassportElementTypeBankStatement;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's driver license
  PassportElementTypeDriverLicense? get passportElementTypeDriverLicense {
    if (this is PassportElementTypeDriverLicense) {
      return this as PassportElementTypeDriverLicense;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's internal passport
  PassportElementTypeInternalPassport? get passportElementTypeInternalPassport {
    if (this is PassportElementTypeInternalPassport) {
      return this as PassportElementTypeInternalPassport;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's passport
  PassportElementTypePassport? get passportElementTypePassport {
    if (this is PassportElementTypePassport) {
      return this as PassportElementTypePassport;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's personal details
  PassportElementTypePersonalDetails? get passportElementTypePersonalDetails {
    if (this is PassportElementTypePersonalDetails) {
      return this as PassportElementTypePersonalDetails;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's temporary registration
  PassportElementTypeTemporaryRegistration?
      get passportElementTypeTemporaryRegistration {
    if (this is PassportElementTypeTemporaryRegistration) {
      return this as PassportElementTypeTemporaryRegistration;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's identity card
  PassportElementTypeIdentityCard? get passportElementTypeIdentityCard {
    if (this is PassportElementTypeIdentityCard) {
      return this as PassportElementTypeIdentityCard;
    }
    return null;
  }
}

extension PassportElementExt on PassportElement {
  /// A Telegram Passport element containing the user's temporary registration
  PassportElementTemporaryRegistration?
      get passportElementTemporaryRegistration {
    if (this is PassportElementTemporaryRegistration) {
      return this as PassportElementTemporaryRegistration;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's rental agreement
  PassportElementRentalAgreement? get passportElementRentalAgreement {
    if (this is PassportElementRentalAgreement) {
      return this as PassportElementRentalAgreement;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's utility bill
  PassportElementUtilityBill? get passportElementUtilityBill {
    if (this is PassportElementUtilityBill) {
      return this as PassportElementUtilityBill;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's passport registration pages
  PassportElementPassportRegistration? get passportElementPassportRegistration {
    if (this is PassportElementPassportRegistration) {
      return this as PassportElementPassportRegistration;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's passport
  PassportElementPassport? get passportElementPassport {
    if (this is PassportElementPassport) {
      return this as PassportElementPassport;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's identity card
  PassportElementIdentityCard? get passportElementIdentityCard {
    if (this is PassportElementIdentityCard) {
      return this as PassportElementIdentityCard;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's driver license
  PassportElementDriverLicense? get passportElementDriverLicense {
    if (this is PassportElementDriverLicense) {
      return this as PassportElementDriverLicense;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's internal passport
  PassportElementInternalPassport? get passportElementInternalPassport {
    if (this is PassportElementInternalPassport) {
      return this as PassportElementInternalPassport;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's email address
  PassportElementEmailAddress? get passportElementEmailAddress {
    if (this is PassportElementEmailAddress) {
      return this as PassportElementEmailAddress;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's personal details
  PassportElementPersonalDetails? get passportElementPersonalDetails {
    if (this is PassportElementPersonalDetails) {
      return this as PassportElementPersonalDetails;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's phone number
  PassportElementPhoneNumber? get passportElementPhoneNumber {
    if (this is PassportElementPhoneNumber) {
      return this as PassportElementPhoneNumber;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's address
  PassportElementAddress? get passportElementAddress {
    if (this is PassportElementAddress) {
      return this as PassportElementAddress;
    }
    return null;
  }

  /// A Telegram Passport element containing the user's bank statement
  PassportElementBankStatement? get passportElementBankStatement {
    if (this is PassportElementBankStatement) {
      return this as PassportElementBankStatement;
    }
    return null;
  }
}

extension InputPassportElementExt on InputPassportElement {
  /// A Telegram Passport element to be saved containing the user's internal passport
  InputPassportElementInternalPassport?
      get inputPassportElementInternalPassport {
    if (this is InputPassportElementInternalPassport) {
      return this as InputPassportElementInternalPassport;
    }
    return null;
  }

  /// A Telegram Passport element to be saved containing the user's personal details
  InputPassportElementPersonalDetails? get inputPassportElementPersonalDetails {
    if (this is InputPassportElementPersonalDetails) {
      return this as InputPassportElementPersonalDetails;
    }
    return null;
  }

  /// A Telegram Passport element to be saved containing the user's email address
  InputPassportElementEmailAddress? get inputPassportElementEmailAddress {
    if (this is InputPassportElementEmailAddress) {
      return this as InputPassportElementEmailAddress;
    }
    return null;
  }

  /// A Telegram Passport element to be saved containing the user's identity card
  InputPassportElementIdentityCard? get inputPassportElementIdentityCard {
    if (this is InputPassportElementIdentityCard) {
      return this as InputPassportElementIdentityCard;
    }
    return null;
  }

  /// A Telegram Passport element to be saved containing the user's passport registration
  InputPassportElementPassportRegistration?
      get inputPassportElementPassportRegistration {
    if (this is InputPassportElementPassportRegistration) {
      return this as InputPassportElementPassportRegistration;
    }
    return null;
  }

  /// A Telegram Passport element to be saved containing the user's passport
  InputPassportElementPassport? get inputPassportElementPassport {
    if (this is InputPassportElementPassport) {
      return this as InputPassportElementPassport;
    }
    return null;
  }

  /// A Telegram Passport element to be saved containing the user's utility bill
  InputPassportElementUtilityBill? get inputPassportElementUtilityBill {
    if (this is InputPassportElementUtilityBill) {
      return this as InputPassportElementUtilityBill;
    }
    return null;
  }

  /// A Telegram Passport element to be saved containing the user's phone number
  InputPassportElementPhoneNumber? get inputPassportElementPhoneNumber {
    if (this is InputPassportElementPhoneNumber) {
      return this as InputPassportElementPhoneNumber;
    }
    return null;
  }

  /// A Telegram Passport element to be saved containing the user's bank statement
  InputPassportElementBankStatement? get inputPassportElementBankStatement {
    if (this is InputPassportElementBankStatement) {
      return this as InputPassportElementBankStatement;
    }
    return null;
  }

  /// A Telegram Passport element to be saved containing the user's rental agreement
  InputPassportElementRentalAgreement? get inputPassportElementRentalAgreement {
    if (this is InputPassportElementRentalAgreement) {
      return this as InputPassportElementRentalAgreement;
    }
    return null;
  }

  /// A Telegram Passport element to be saved containing the user's driver license
  InputPassportElementDriverLicense? get inputPassportElementDriverLicense {
    if (this is InputPassportElementDriverLicense) {
      return this as InputPassportElementDriverLicense;
    }
    return null;
  }

  /// A Telegram Passport element to be saved containing the user's temporary registration
  InputPassportElementTemporaryRegistration?
      get inputPassportElementTemporaryRegistration {
    if (this is InputPassportElementTemporaryRegistration) {
      return this as InputPassportElementTemporaryRegistration;
    }
    return null;
  }

  /// A Telegram Passport element to be saved containing the user's address
  InputPassportElementAddress? get inputPassportElementAddress {
    if (this is InputPassportElementAddress) {
      return this as InputPassportElementAddress;
    }
    return null;
  }
}

extension PassportElementErrorSourceExt on PassportElementErrorSource {
  /// One of the data fields contains an error. The error will be considered resolved when the value of the field changes
  PassportElementErrorSourceDataField? get passportElementErrorSourceDataField {
    if (this is PassportElementErrorSourceDataField) {
      return this as PassportElementErrorSourceDataField;
    }
    return null;
  }

  /// The file contains an error. The error will be considered resolved when the file changes
  PassportElementErrorSourceFile? get passportElementErrorSourceFile {
    if (this is PassportElementErrorSourceFile) {
      return this as PassportElementErrorSourceFile;
    }
    return null;
  }

  /// The reverse side of the document contains an error. The error will be considered resolved when the file with the reverse side changes
  PassportElementErrorSourceReverseSide?
      get passportElementErrorSourceReverseSide {
    if (this is PassportElementErrorSourceReverseSide) {
      return this as PassportElementErrorSourceReverseSide;
    }
    return null;
  }

  /// The element contains an error in an unspecified place. The error will be considered resolved when new data is added
  PassportElementErrorSourceUnspecified?
      get passportElementErrorSourceUnspecified {
    if (this is PassportElementErrorSourceUnspecified) {
      return this as PassportElementErrorSourceUnspecified;
    }
    return null;
  }

  /// The translation of the document contains an error. The error will be considered resolved when the list of translation files changes
  PassportElementErrorSourceTranslationFiles?
      get passportElementErrorSourceTranslationFiles {
    if (this is PassportElementErrorSourceTranslationFiles) {
      return this as PassportElementErrorSourceTranslationFiles;
    }
    return null;
  }

  /// The list of attached files contains an error. The error will be considered resolved when the list of files changes
  PassportElementErrorSourceFiles? get passportElementErrorSourceFiles {
    if (this is PassportElementErrorSourceFiles) {
      return this as PassportElementErrorSourceFiles;
    }
    return null;
  }

  /// One of files with the translation of the document contains an error. The error will be considered resolved when the file changes
  PassportElementErrorSourceTranslationFile?
      get passportElementErrorSourceTranslationFile {
    if (this is PassportElementErrorSourceTranslationFile) {
      return this as PassportElementErrorSourceTranslationFile;
    }
    return null;
  }

  /// The front side of the document contains an error. The error will be considered resolved when the file with the front side changes
  PassportElementErrorSourceFrontSide? get passportElementErrorSourceFrontSide {
    if (this is PassportElementErrorSourceFrontSide) {
      return this as PassportElementErrorSourceFrontSide;
    }
    return null;
  }

  /// The selfie with the document contains an error. The error will be considered resolved when the file with the selfie changes
  PassportElementErrorSourceSelfie? get passportElementErrorSourceSelfie {
    if (this is PassportElementErrorSourceSelfie) {
      return this as PassportElementErrorSourceSelfie;
    }
    return null;
  }
}

extension InputPassportElementErrorSourceExt
    on InputPassportElementErrorSource {
  /// The selfie contains an error. The error is considered resolved when the file with the selfie changes
  InputPassportElementErrorSourceSelfie?
      get inputPassportElementErrorSourceSelfie {
    if (this is InputPassportElementErrorSourceSelfie) {
      return this as InputPassportElementErrorSourceSelfie;
    }
    return null;
  }

  /// The list of attached files contains an error. The error is considered resolved when the file list changes
  InputPassportElementErrorSourceFiles?
      get inputPassportElementErrorSourceFiles {
    if (this is InputPassportElementErrorSourceFiles) {
      return this as InputPassportElementErrorSourceFiles;
    }
    return null;
  }

  /// The element contains an error in an unspecified place. The error will be considered resolved when new data is added
  InputPassportElementErrorSourceUnspecified?
      get inputPassportElementErrorSourceUnspecified {
    if (this is InputPassportElementErrorSourceUnspecified) {
      return this as InputPassportElementErrorSourceUnspecified;
    }
    return null;
  }

  /// The reverse side of the document contains an error. The error is considered resolved when the file with the reverse side of the document changes
  InputPassportElementErrorSourceReverseSide?
      get inputPassportElementErrorSourceReverseSide {
    if (this is InputPassportElementErrorSourceReverseSide) {
      return this as InputPassportElementErrorSourceReverseSide;
    }
    return null;
  }

  /// The front side of the document contains an error. The error is considered resolved when the file with the front side of the document changes
  InputPassportElementErrorSourceFrontSide?
      get inputPassportElementErrorSourceFrontSide {
    if (this is InputPassportElementErrorSourceFrontSide) {
      return this as InputPassportElementErrorSourceFrontSide;
    }
    return null;
  }

  /// The translation of the document contains an error. The error is considered resolved when the list of files changes
  InputPassportElementErrorSourceTranslationFiles?
      get inputPassportElementErrorSourceTranslationFiles {
    if (this is InputPassportElementErrorSourceTranslationFiles) {
      return this as InputPassportElementErrorSourceTranslationFiles;
    }
    return null;
  }

  /// A data field contains an error. The error is considered resolved when the field's value changes
  InputPassportElementErrorSourceDataField?
      get inputPassportElementErrorSourceDataField {
    if (this is InputPassportElementErrorSourceDataField) {
      return this as InputPassportElementErrorSourceDataField;
    }
    return null;
  }

  /// One of the files containing the translation of the document contains an error. The error is considered resolved when the file with the translation changes
  InputPassportElementErrorSourceTranslationFile?
      get inputPassportElementErrorSourceTranslationFile {
    if (this is InputPassportElementErrorSourceTranslationFile) {
      return this as InputPassportElementErrorSourceTranslationFile;
    }
    return null;
  }

  /// The file contains an error. The error is considered resolved when the file changes
  InputPassportElementErrorSourceFile? get inputPassportElementErrorSourceFile {
    if (this is InputPassportElementErrorSourceFile) {
      return this as InputPassportElementErrorSourceFile;
    }
    return null;
  }
}

extension MessageContentExt on MessageContent {
  /// A video note message
  MessageVideoNote? get messageVideoNote {
    if (this is MessageVideoNote) {
      return this as MessageVideoNote;
    }
    return null;
  }

  /// A non-standard action has happened in the chat
  MessageCustomServiceAction? get messageCustomServiceAction {
    if (this is MessageCustomServiceAction) {
      return this as MessageCustomServiceAction;
    }
    return null;
  }

  /// A screenshot of a message in the chat has been taken
  MessageScreenshotTaken? get messageScreenshotTaken {
    if (this is MessageScreenshotTaken) {
      return this as MessageScreenshotTaken;
    }
    return null;
  }

  /// The current user shared a user, which was requested by the bot
  MessageUserShared? get messageUserShared {
    if (this is MessageUserShared) {
      return this as MessageUserShared;
    }
    return null;
  }

  /// A contact has registered with Telegram
  MessageContactRegistered? get messageContactRegistered {
    if (this is MessageContactRegistered) {
      return this as MessageContactRegistered;
    }
    return null;
  }

  /// A message with a game
  MessageGame? get messageGame {
    if (this is MessageGame) {
      return this as MessageGame;
    }
    return null;
  }

  /// A new high score was achieved in a game
  MessageGameScore? get messageGameScore {
    if (this is MessageGameScore) {
      return this as MessageGameScore;
    }
    return null;
  }

  /// A video message
  MessageVideo? get messageVideo {
    if (this is MessageVideo) {
      return this as MessageVideo;
    }
    return null;
  }

  /// A forum topic has been created
  MessageForumTopicCreated? get messageForumTopicCreated {
    if (this is MessageForumTopicCreated) {
      return this as MessageForumTopicCreated;
    }
    return null;
  }

  /// Data from a Web App has been sent to a bot
  MessageWebAppDataSent? get messageWebAppDataSent {
    if (this is MessageWebAppDataSent) {
      return this as MessageWebAppDataSent;
    }
    return null;
  }

  /// A forum topic has been edited
  MessageForumTopicEdited? get messageForumTopicEdited {
    if (this is MessageForumTopicEdited) {
      return this as MessageForumTopicEdited;
    }
    return null;
  }

  /// A message content that is not supported in the current TDLib version
  MessageUnsupported? get messageUnsupported {
    if (this is MessageUnsupported) {
      return this as MessageUnsupported;
    }
    return null;
  }

  /// Telegram Premium was gifted to the user
  MessageGiftedPremium? get messageGiftedPremium {
    if (this is MessageGiftedPremium) {
      return this as MessageGiftedPremium;
    }
    return null;
  }

  /// A new video chat was scheduled
  MessageVideoChatScheduled? get messageVideoChatScheduled {
    if (this is MessageVideoChatScheduled) {
      return this as MessageVideoChatScheduled;
    }
    return null;
  }

  /// A dice message. The dice value is randomly generated by the server
  MessageDice? get messageDice {
    if (this is MessageDice) {
      return this as MessageDice;
    }
    return null;
  }

  /// A document message (general file)
  MessageDocument? get messageDocument {
    if (this is MessageDocument) {
      return this as MessageDocument;
    }
    return null;
  }

  /// An updated chat title
  MessageChatChangeTitle? get messageChatChangeTitle {
    if (this is MessageChatChangeTitle) {
      return this as MessageChatChangeTitle;
    }
    return null;
  }

  /// Data from a Web App has been received; for bots only
  MessageWebAppDataReceived? get messageWebAppDataReceived {
    if (this is MessageWebAppDataReceived) {
      return this as MessageWebAppDataReceived;
    }
    return null;
  }

  /// A deleted chat photo
  MessageChatDeletePhoto? get messageChatDeletePhoto {
    if (this is MessageChatDeletePhoto) {
      return this as MessageChatDeletePhoto;
    }
    return null;
  }

  /// A profile photo was suggested to a user in a private chat
  MessageSuggestProfilePhoto? get messageSuggestProfilePhoto {
    if (this is MessageSuggestProfilePhoto) {
      return this as MessageSuggestProfilePhoto;
    }
    return null;
  }

  /// A new member joined the chat via an invite link
  MessageChatJoinByLink? get messageChatJoinByLink {
    if (this is MessageChatJoinByLink) {
      return this as MessageChatJoinByLink;
    }
    return null;
  }

  /// A self-destructed photo message
  MessageExpiredPhoto? get messageExpiredPhoto {
    if (this is MessageExpiredPhoto) {
      return this as MessageExpiredPhoto;
    }
    return null;
  }

  /// Telegram Passport data has been sent to a bot
  MessagePassportDataSent? get messagePassportDataSent {
    if (this is MessagePassportDataSent) {
      return this as MessagePassportDataSent;
    }
    return null;
  }

  /// A user in the chat came within proximity alert range
  MessageProximityAlertTriggered? get messageProximityAlertTriggered {
    if (this is MessageProximityAlertTriggered) {
      return this as MessageProximityAlertTriggered;
    }
    return null;
  }

  /// A General forum topic has been hidden or unhidden
  MessageForumTopicIsHiddenToggled? get messageForumTopicIsHiddenToggled {
    if (this is MessageForumTopicIsHiddenToggled) {
      return this as MessageForumTopicIsHiddenToggled;
    }
    return null;
  }

  /// A message with a location
  MessageLocation? get messageLocation {
    if (this is MessageLocation) {
      return this as MessageLocation;
    }
    return null;
  }

  /// A voice note message
  MessageVoiceNote? get messageVoiceNote {
    if (this is MessageVoiceNote) {
      return this as MessageVoiceNote;
    }
    return null;
  }

  /// A message with information about an ended video chat
  MessageVideoChatEnded? get messageVideoChatEnded {
    if (this is MessageVideoChatEnded) {
      return this as MessageVideoChatEnded;
    }
    return null;
  }

  /// A newly created basic group
  MessageBasicGroupChatCreate? get messageBasicGroupChatCreate {
    if (this is MessageBasicGroupChatCreate) {
      return this as MessageBasicGroupChatCreate;
    }
    return null;
  }

  /// A message with information about a venue
  MessageVenue? get messageVenue {
    if (this is MessageVenue) {
      return this as MessageVenue;
    }
    return null;
  }

  /// A message with a forwarded story
  MessageStory? get messageStory {
    if (this is MessageStory) {
      return this as MessageStory;
    }
    return null;
  }

  /// A message has been pinned
  MessagePinMessage? get messagePinMessage {
    if (this is MessagePinMessage) {
      return this as MessagePinMessage;
    }
    return null;
  }

  /// A forum topic has been closed or opened
  MessageForumTopicIsClosedToggled? get messageForumTopicIsClosedToggled {
    if (this is MessageForumTopicIsClosedToggled) {
      return this as MessageForumTopicIsClosedToggled;
    }
    return null;
  }

  /// A message with a user contact
  MessageContact? get messageContact {
    if (this is MessageContact) {
      return this as MessageContact;
    }
    return null;
  }

  /// A newly created video chat
  MessageVideoChatStarted? get messageVideoChatStarted {
    if (this is MessageVideoChatStarted) {
      return this as MessageVideoChatStarted;
    }
    return null;
  }

  /// A newly created supergroup or channel
  MessageSupergroupChatCreate? get messageSupergroupChatCreate {
    if (this is MessageSupergroupChatCreate) {
      return this as MessageSupergroupChatCreate;
    }
    return null;
  }

  /// A self-destructed video message
  MessageExpiredVideo? get messageExpiredVideo {
    if (this is MessageExpiredVideo) {
      return this as MessageExpiredVideo;
    }
    return null;
  }

  /// A message with an invoice from a bot. Use getInternalLink with internalLinkTypeBotStart to share the invoice
  MessageInvoice? get messageInvoice {
    if (this is MessageInvoice) {
      return this as MessageInvoice;
    }
    return null;
  }

  /// A new member was accepted to the chat by an administrator
  MessageChatJoinByRequest? get messageChatJoinByRequest {
    if (this is MessageChatJoinByRequest) {
      return this as MessageChatJoinByRequest;
    }
    return null;
  }

  /// The auto-delete or self-destruct timer for messages in the chat has been changed
  MessageChatSetMessageAutoDeleteTime? get messageChatSetMessageAutoDeleteTime {
    if (this is MessageChatSetMessageAutoDeleteTime) {
      return this as MessageChatSetMessageAutoDeleteTime;
    }
    return null;
  }

  /// A payment has been completed; for bots only
  MessagePaymentSuccessfulBot? get messagePaymentSuccessfulBot {
    if (this is MessagePaymentSuccessfulBot) {
      return this as MessagePaymentSuccessfulBot;
    }
    return null;
  }

  /// A new background was set in the chat
  MessageChatSetBackground? get messageChatSetBackground {
    if (this is MessageChatSetBackground) {
      return this as MessageChatSetBackground;
    }
    return null;
  }

  /// A supergroup has been created from a basic group
  MessageChatUpgradeFrom? get messageChatUpgradeFrom {
    if (this is MessageChatUpgradeFrom) {
      return this as MessageChatUpgradeFrom;
    }
    return null;
  }

  /// An updated chat photo
  MessageChatChangePhoto? get messageChatChangePhoto {
    if (this is MessageChatChangePhoto) {
      return this as MessageChatChangePhoto;
    }
    return null;
  }

  /// New chat members were added
  MessageChatAddMembers? get messageChatAddMembers {
    if (this is MessageChatAddMembers) {
      return this as MessageChatAddMembers;
    }
    return null;
  }

  /// A sticker message
  MessageSticker? get messageSticker {
    if (this is MessageSticker) {
      return this as MessageSticker;
    }
    return null;
  }

  /// A theme in the chat has been changed
  MessageChatSetTheme? get messageChatSetTheme {
    if (this is MessageChatSetTheme) {
      return this as MessageChatSetTheme;
    }
    return null;
  }

  /// The current user shared a chat, which was requested by the bot
  MessageChatShared? get messageChatShared {
    if (this is MessageChatShared) {
      return this as MessageChatShared;
    }
    return null;
  }

  /// Telegram Passport data has been received; for bots only
  MessagePassportDataReceived? get messagePassportDataReceived {
    if (this is MessagePassportDataReceived) {
      return this as MessagePassportDataReceived;
    }
    return null;
  }

  /// An audio message
  MessageAudio? get messageAudio {
    if (this is MessageAudio) {
      return this as MessageAudio;
    }
    return null;
  }

  /// A payment has been completed
  MessagePaymentSuccessful? get messagePaymentSuccessful {
    if (this is MessagePaymentSuccessful) {
      return this as MessagePaymentSuccessful;
    }
    return null;
  }

  /// A message with information about an invite to a video chat
  MessageInviteVideoChatParticipants? get messageInviteVideoChatParticipants {
    if (this is MessageInviteVideoChatParticipants) {
      return this as MessageInviteVideoChatParticipants;
    }
    return null;
  }

  /// A photo message
  MessagePhoto? get messagePhoto {
    if (this is MessagePhoto) {
      return this as MessagePhoto;
    }
    return null;
  }

  /// A text message
  MessageText? get messageText {
    if (this is MessageText) {
      return this as MessageText;
    }
    return null;
  }

  /// A message with an animated emoji
  MessageAnimatedEmoji? get messageAnimatedEmoji {
    if (this is MessageAnimatedEmoji) {
      return this as MessageAnimatedEmoji;
    }
    return null;
  }

  /// An animation message (GIF-style).
  MessageAnimation? get messageAnimation {
    if (this is MessageAnimation) {
      return this as MessageAnimation;
    }
    return null;
  }

  /// A message with information about an ended call
  MessageCall? get messageCall {
    if (this is MessageCall) {
      return this as MessageCall;
    }
    return null;
  }

  /// A chat member was deleted
  MessageChatDeleteMember? get messageChatDeleteMember {
    if (this is MessageChatDeleteMember) {
      return this as MessageChatDeleteMember;
    }
    return null;
  }

  /// A basic group was upgraded to a supergroup and was deactivated as the result
  MessageChatUpgradeTo? get messageChatUpgradeTo {
    if (this is MessageChatUpgradeTo) {
      return this as MessageChatUpgradeTo;
    }
    return null;
  }

  /// The user allowed the bot to send messages
  MessageBotWriteAccessAllowed? get messageBotWriteAccessAllowed {
    if (this is MessageBotWriteAccessAllowed) {
      return this as MessageBotWriteAccessAllowed;
    }
    return null;
  }

  /// The current user has connected a website by logging in using Telegram Login Widget on it
  MessageWebsiteConnected? get messageWebsiteConnected {
    if (this is MessageWebsiteConnected) {
      return this as MessageWebsiteConnected;
    }
    return null;
  }

  /// A message with a poll
  MessagePoll? get messagePoll {
    if (this is MessagePoll) {
      return this as MessagePoll;
    }
    return null;
  }
}

extension TextEntityTypeExt on TextEntityType {
  /// A bold text
  TextEntityTypeBold? get textEntityTypeBold {
    if (this is TextEntityTypeBold) {
      return this as TextEntityTypeBold;
    }
    return null;
  }

  /// A custom emoji. The text behind a custom emoji must be an emoji. Only premium users can use premium custom emoji
  TextEntityTypeCustomEmoji? get textEntityTypeCustomEmoji {
    if (this is TextEntityTypeCustomEmoji) {
      return this as TextEntityTypeCustomEmoji;
    }
    return null;
  }

  /// A spoiler text
  TextEntityTypeSpoiler? get textEntityTypeSpoiler {
    if (this is TextEntityTypeSpoiler) {
      return this as TextEntityTypeSpoiler;
    }
    return null;
  }

  /// An underlined text
  TextEntityTypeUnderline? get textEntityTypeUnderline {
    if (this is TextEntityTypeUnderline) {
      return this as TextEntityTypeUnderline;
    }
    return null;
  }

  /// An italic text
  TextEntityTypeItalic? get textEntityTypeItalic {
    if (this is TextEntityTypeItalic) {
      return this as TextEntityTypeItalic;
    }
    return null;
  }

  /// A bot command, beginning with "/"
  TextEntityTypeBotCommand? get textEntityTypeBotCommand {
    if (this is TextEntityTypeBotCommand) {
      return this as TextEntityTypeBotCommand;
    }
    return null;
  }

  /// A mention of a user, a supergroup, or a channel by their username
  TextEntityTypeMention? get textEntityTypeMention {
    if (this is TextEntityTypeMention) {
      return this as TextEntityTypeMention;
    }
    return null;
  }

  /// An HTTP URL
  TextEntityTypeUrl? get textEntityTypeUrl {
    if (this is TextEntityTypeUrl) {
      return this as TextEntityTypeUrl;
    }
    return null;
  }

  /// Text that must be formatted as if inside a pre HTML tag
  TextEntityTypePre? get textEntityTypePre {
    if (this is TextEntityTypePre) {
      return this as TextEntityTypePre;
    }
    return null;
  }

  /// A hashtag text, beginning with "#"
  TextEntityTypeHashtag? get textEntityTypeHashtag {
    if (this is TextEntityTypeHashtag) {
      return this as TextEntityTypeHashtag;
    }
    return null;
  }

  /// A strikethrough text
  TextEntityTypeStrikethrough? get textEntityTypeStrikethrough {
    if (this is TextEntityTypeStrikethrough) {
      return this as TextEntityTypeStrikethrough;
    }
    return null;
  }

  /// A phone number
  TextEntityTypePhoneNumber? get textEntityTypePhoneNumber {
    if (this is TextEntityTypePhoneNumber) {
      return this as TextEntityTypePhoneNumber;
    }
    return null;
  }

  /// A text description shown instead of a raw URL
  TextEntityTypeTextUrl? get textEntityTypeTextUrl {
    if (this is TextEntityTypeTextUrl) {
      return this as TextEntityTypeTextUrl;
    }
    return null;
  }

  /// An email address
  TextEntityTypeEmailAddress? get textEntityTypeEmailAddress {
    if (this is TextEntityTypeEmailAddress) {
      return this as TextEntityTypeEmailAddress;
    }
    return null;
  }

  /// A bank card number. The getBankCardInfo method can be used to get information about the bank card
  TextEntityTypeBankCardNumber? get textEntityTypeBankCardNumber {
    if (this is TextEntityTypeBankCardNumber) {
      return this as TextEntityTypeBankCardNumber;
    }
    return null;
  }

  /// A media timestamp
  TextEntityTypeMediaTimestamp? get textEntityTypeMediaTimestamp {
    if (this is TextEntityTypeMediaTimestamp) {
      return this as TextEntityTypeMediaTimestamp;
    }
    return null;
  }

  /// A cashtag text, beginning with "$" and consisting of capital English letters (e.g., "$USD")
  TextEntityTypeCashtag? get textEntityTypeCashtag {
    if (this is TextEntityTypeCashtag) {
      return this as TextEntityTypeCashtag;
    }
    return null;
  }

  /// A text shows instead of a raw mention of the user (e.g., when the user has no username)
  TextEntityTypeMentionName? get textEntityTypeMentionName {
    if (this is TextEntityTypeMentionName) {
      return this as TextEntityTypeMentionName;
    }
    return null;
  }

  /// Text that must be formatted as if inside a code HTML tag
  TextEntityTypeCode? get textEntityTypeCode {
    if (this is TextEntityTypeCode) {
      return this as TextEntityTypeCode;
    }
    return null;
  }

  /// Text that must be formatted as if inside pre, and code HTML tags
  TextEntityTypePreCode? get textEntityTypePreCode {
    if (this is TextEntityTypePreCode) {
      return this as TextEntityTypePreCode;
    }
    return null;
  }
}

extension MessageSchedulingStateExt on MessageSchedulingState {
  /// The message will be sent at the specified date
  MessageSchedulingStateSendAtDate? get messageSchedulingStateSendAtDate {
    if (this is MessageSchedulingStateSendAtDate) {
      return this as MessageSchedulingStateSendAtDate;
    }
    return null;
  }

  /// The message will be sent when the peer will be online. Applicable to private chats only and when the exact online status of the peer is known
  MessageSchedulingStateSendWhenOnline?
      get messageSchedulingStateSendWhenOnline {
    if (this is MessageSchedulingStateSendWhenOnline) {
      return this as MessageSchedulingStateSendWhenOnline;
    }
    return null;
  }
}

extension MessageSelfDestructTypeExt on MessageSelfDestructType {
  /// The message will be self-destructed in the specified time after its content was opened
  MessageSelfDestructTypeTimer? get messageSelfDestructTypeTimer {
    if (this is MessageSelfDestructTypeTimer) {
      return this as MessageSelfDestructTypeTimer;
    }
    return null;
  }

  /// The message can be opened only once and will be self-destructed once closed
  MessageSelfDestructTypeImmediately? get messageSelfDestructTypeImmediately {
    if (this is MessageSelfDestructTypeImmediately) {
      return this as MessageSelfDestructTypeImmediately;
    }
    return null;
  }
}

extension InputMessageContentExt on InputMessageContent {
  /// A dice message
  InputMessageDice? get inputMessageDice {
    if (this is InputMessageDice) {
      return this as InputMessageDice;
    }
    return null;
  }

  /// An audio message
  InputMessageAudio? get inputMessageAudio {
    if (this is InputMessageAudio) {
      return this as InputMessageAudio;
    }
    return null;
  }

  /// A text message
  InputMessageText? get inputMessageText {
    if (this is InputMessageText) {
      return this as InputMessageText;
    }
    return null;
  }

  /// An animation message (GIF-style).
  InputMessageAnimation? get inputMessageAnimation {
    if (this is InputMessageAnimation) {
      return this as InputMessageAnimation;
    }
    return null;
  }

  /// A sticker message
  InputMessageSticker? get inputMessageSticker {
    if (this is InputMessageSticker) {
      return this as InputMessageSticker;
    }
    return null;
  }

  /// A message with a forwarded story. Stories can't be sent to secret chats. A story can be forwarded only if story.can_be_forwarded
  InputMessageStory? get inputMessageStory {
    if (this is InputMessageStory) {
      return this as InputMessageStory;
    }
    return null;
  }

  /// A message with an invoice; can be used only by bots
  InputMessageInvoice? get inputMessageInvoice {
    if (this is InputMessageInvoice) {
      return this as InputMessageInvoice;
    }
    return null;
  }

  /// A photo message
  InputMessagePhoto? get inputMessagePhoto {
    if (this is InputMessagePhoto) {
      return this as InputMessagePhoto;
    }
    return null;
  }

  /// A message with a location
  InputMessageLocation? get inputMessageLocation {
    if (this is InputMessageLocation) {
      return this as InputMessageLocation;
    }
    return null;
  }

  /// A forwarded message
  InputMessageForwarded? get inputMessageForwarded {
    if (this is InputMessageForwarded) {
      return this as InputMessageForwarded;
    }
    return null;
  }

  /// A voice note message
  InputMessageVoiceNote? get inputMessageVoiceNote {
    if (this is InputMessageVoiceNote) {
      return this as InputMessageVoiceNote;
    }
    return null;
  }

  /// A video message
  InputMessageVideo? get inputMessageVideo {
    if (this is InputMessageVideo) {
      return this as InputMessageVideo;
    }
    return null;
  }

  /// A message with information about a venue
  InputMessageVenue? get inputMessageVenue {
    if (this is InputMessageVenue) {
      return this as InputMessageVenue;
    }
    return null;
  }

  /// A document message (general file)
  InputMessageDocument? get inputMessageDocument {
    if (this is InputMessageDocument) {
      return this as InputMessageDocument;
    }
    return null;
  }

  /// A video note message
  InputMessageVideoNote? get inputMessageVideoNote {
    if (this is InputMessageVideoNote) {
      return this as InputMessageVideoNote;
    }
    return null;
  }

  /// A message with a poll. Polls can't be sent to secret chats. Polls can be sent only to a private chat with a bot
  InputMessagePoll? get inputMessagePoll {
    if (this is InputMessagePoll) {
      return this as InputMessagePoll;
    }
    return null;
  }

  /// A message containing a user contact
  InputMessageContact? get inputMessageContact {
    if (this is InputMessageContact) {
      return this as InputMessageContact;
    }
    return null;
  }

  /// A message with a game; not supported for channels or secret chats
  InputMessageGame? get inputMessageGame {
    if (this is InputMessageGame) {
      return this as InputMessageGame;
    }
    return null;
  }
}

extension SearchMessagesFilterExt on SearchMessagesFilter {
  /// Returns only messages with unread reactions for the current user. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user
  SearchMessagesFilterUnreadReaction? get searchMessagesFilterUnreadReaction {
    if (this is SearchMessagesFilterUnreadReaction) {
      return this as SearchMessagesFilterUnreadReaction;
    }
    return null;
  }

  /// Returns only audio messages
  SearchMessagesFilterAudio? get searchMessagesFilterAudio {
    if (this is SearchMessagesFilterAudio) {
      return this as SearchMessagesFilterAudio;
    }
    return null;
  }

  /// Returns only failed to send messages. This filter can be used only if the message database is used
  SearchMessagesFilterFailedToSend? get searchMessagesFilterFailedToSend {
    if (this is SearchMessagesFilterFailedToSend) {
      return this as SearchMessagesFilterFailedToSend;
    }
    return null;
  }

  /// Returns only voice and video note messages
  SearchMessagesFilterVoiceAndVideoNote?
      get searchMessagesFilterVoiceAndVideoNote {
    if (this is SearchMessagesFilterVoiceAndVideoNote) {
      return this as SearchMessagesFilterVoiceAndVideoNote;
    }
    return null;
  }

  /// Returns only messages containing chat photos
  SearchMessagesFilterChatPhoto? get searchMessagesFilterChatPhoto {
    if (this is SearchMessagesFilterChatPhoto) {
      return this as SearchMessagesFilterChatPhoto;
    }
    return null;
  }

  /// Returns only animation messages
  SearchMessagesFilterAnimation? get searchMessagesFilterAnimation {
    if (this is SearchMessagesFilterAnimation) {
      return this as SearchMessagesFilterAnimation;
    }
    return null;
  }

  /// Returns only voice note messages
  SearchMessagesFilterVoiceNote? get searchMessagesFilterVoiceNote {
    if (this is SearchMessagesFilterVoiceNote) {
      return this as SearchMessagesFilterVoiceNote;
    }
    return null;
  }

  /// Returns only document messages
  SearchMessagesFilterDocument? get searchMessagesFilterDocument {
    if (this is SearchMessagesFilterDocument) {
      return this as SearchMessagesFilterDocument;
    }
    return null;
  }

  /// Returns only photo and video messages
  SearchMessagesFilterPhotoAndVideo? get searchMessagesFilterPhotoAndVideo {
    if (this is SearchMessagesFilterPhotoAndVideo) {
      return this as SearchMessagesFilterPhotoAndVideo;
    }
    return null;
  }

  /// Returns only messages with unread mentions of the current user, or messages that are replies to their messages. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user
  SearchMessagesFilterUnreadMention? get searchMessagesFilterUnreadMention {
    if (this is SearchMessagesFilterUnreadMention) {
      return this as SearchMessagesFilterUnreadMention;
    }
    return null;
  }

  /// Returns only pinned messages
  SearchMessagesFilterPinned? get searchMessagesFilterPinned {
    if (this is SearchMessagesFilterPinned) {
      return this as SearchMessagesFilterPinned;
    }
    return null;
  }

  /// Returns only messages with mentions of the current user, or messages that are replies to their messages
  SearchMessagesFilterMention? get searchMessagesFilterMention {
    if (this is SearchMessagesFilterMention) {
      return this as SearchMessagesFilterMention;
    }
    return null;
  }

  /// Returns all found messages, no filter is applied
  SearchMessagesFilterEmpty? get searchMessagesFilterEmpty {
    if (this is SearchMessagesFilterEmpty) {
      return this as SearchMessagesFilterEmpty;
    }
    return null;
  }

  /// Returns only video note messages
  SearchMessagesFilterVideoNote? get searchMessagesFilterVideoNote {
    if (this is SearchMessagesFilterVideoNote) {
      return this as SearchMessagesFilterVideoNote;
    }
    return null;
  }

  /// Returns only messages containing URLs
  SearchMessagesFilterUrl? get searchMessagesFilterUrl {
    if (this is SearchMessagesFilterUrl) {
      return this as SearchMessagesFilterUrl;
    }
    return null;
  }

  /// Returns only video messages
  SearchMessagesFilterVideo? get searchMessagesFilterVideo {
    if (this is SearchMessagesFilterVideo) {
      return this as SearchMessagesFilterVideo;
    }
    return null;
  }

  /// Returns only photo messages
  SearchMessagesFilterPhoto? get searchMessagesFilterPhoto {
    if (this is SearchMessagesFilterPhoto) {
      return this as SearchMessagesFilterPhoto;
    }
    return null;
  }
}

extension ChatActionExt on ChatAction {
  /// The user is recording a video
  ChatActionRecordingVideo? get chatActionRecordingVideo {
    if (this is ChatActionRecordingVideo) {
      return this as ChatActionRecordingVideo;
    }
    return null;
  }

  /// The user is uploading a document
  ChatActionUploadingDocument? get chatActionUploadingDocument {
    if (this is ChatActionUploadingDocument) {
      return this as ChatActionUploadingDocument;
    }
    return null;
  }

  /// The user has started to play a game
  ChatActionStartPlayingGame? get chatActionStartPlayingGame {
    if (this is ChatActionStartPlayingGame) {
      return this as ChatActionStartPlayingGame;
    }
    return null;
  }

  /// The user is picking a contact to send
  ChatActionChoosingContact? get chatActionChoosingContact {
    if (this is ChatActionChoosingContact) {
      return this as ChatActionChoosingContact;
    }
    return null;
  }

  /// The user is recording a video note
  ChatActionRecordingVideoNote? get chatActionRecordingVideoNote {
    if (this is ChatActionRecordingVideoNote) {
      return this as ChatActionRecordingVideoNote;
    }
    return null;
  }

  /// The user is watching animations sent by the other party by clicking on an animated emoji
  ChatActionWatchingAnimations? get chatActionWatchingAnimations {
    if (this is ChatActionWatchingAnimations) {
      return this as ChatActionWatchingAnimations;
    }
    return null;
  }

  /// The user is picking a sticker to send
  ChatActionChoosingSticker? get chatActionChoosingSticker {
    if (this is ChatActionChoosingSticker) {
      return this as ChatActionChoosingSticker;
    }
    return null;
  }

  /// The user is uploading a video
  ChatActionUploadingVideo? get chatActionUploadingVideo {
    if (this is ChatActionUploadingVideo) {
      return this as ChatActionUploadingVideo;
    }
    return null;
  }

  /// The user is picking a location or venue to send
  ChatActionChoosingLocation? get chatActionChoosingLocation {
    if (this is ChatActionChoosingLocation) {
      return this as ChatActionChoosingLocation;
    }
    return null;
  }

  /// The user has canceled the previous action
  ChatActionCancel? get chatActionCancel {
    if (this is ChatActionCancel) {
      return this as ChatActionCancel;
    }
    return null;
  }

  /// The user is typing a message
  ChatActionTyping? get chatActionTyping {
    if (this is ChatActionTyping) {
      return this as ChatActionTyping;
    }
    return null;
  }

  /// The user is uploading a photo
  ChatActionUploadingPhoto? get chatActionUploadingPhoto {
    if (this is ChatActionUploadingPhoto) {
      return this as ChatActionUploadingPhoto;
    }
    return null;
  }

  /// The user is uploading a voice note
  ChatActionUploadingVoiceNote? get chatActionUploadingVoiceNote {
    if (this is ChatActionUploadingVoiceNote) {
      return this as ChatActionUploadingVoiceNote;
    }
    return null;
  }

  /// The user is uploading a video note
  ChatActionUploadingVideoNote? get chatActionUploadingVideoNote {
    if (this is ChatActionUploadingVideoNote) {
      return this as ChatActionUploadingVideoNote;
    }
    return null;
  }

  /// The user is recording a voice note
  ChatActionRecordingVoiceNote? get chatActionRecordingVoiceNote {
    if (this is ChatActionRecordingVoiceNote) {
      return this as ChatActionRecordingVoiceNote;
    }
    return null;
  }
}

extension UserStatusExt on UserStatus {
  /// The user is online
  UserStatusOnline? get userStatusOnline {
    if (this is UserStatusOnline) {
      return this as UserStatusOnline;
    }
    return null;
  }

  /// The user status was never changed
  UserStatusEmpty? get userStatusEmpty {
    if (this is UserStatusEmpty) {
      return this as UserStatusEmpty;
    }
    return null;
  }

  /// The user is offline
  UserStatusOffline? get userStatusOffline {
    if (this is UserStatusOffline) {
      return this as UserStatusOffline;
    }
    return null;
  }

  /// The user is offline, but was online last month
  UserStatusLastMonth? get userStatusLastMonth {
    if (this is UserStatusLastMonth) {
      return this as UserStatusLastMonth;
    }
    return null;
  }

  /// The user was online recently
  UserStatusRecently? get userStatusRecently {
    if (this is UserStatusRecently) {
      return this as UserStatusRecently;
    }
    return null;
  }

  /// The user is offline, but was online last week
  UserStatusLastWeek? get userStatusLastWeek {
    if (this is UserStatusLastWeek) {
      return this as UserStatusLastWeek;
    }
    return null;
  }
}

extension EmojiCategoryTypeExt on EmojiCategoryType {
  /// The category must be used for chat photo emoji selection
  EmojiCategoryTypeChatPhoto? get emojiCategoryTypeChatPhoto {
    if (this is EmojiCategoryTypeChatPhoto) {
      return this as EmojiCategoryTypeChatPhoto;
    }
    return null;
  }

  /// The category must be used by default
  EmojiCategoryTypeDefault? get emojiCategoryTypeDefault {
    if (this is EmojiCategoryTypeDefault) {
      return this as EmojiCategoryTypeDefault;
    }
    return null;
  }

  /// The category must be used for emoji status selection
  EmojiCategoryTypeEmojiStatus? get emojiCategoryTypeEmojiStatus {
    if (this is EmojiCategoryTypeEmojiStatus) {
      return this as EmojiCategoryTypeEmojiStatus;
    }
    return null;
  }
}

extension StoryAreaTypeExt on StoryAreaType {
  /// An area pointing to a suggested reaction. App needs to show a clickable reaction on the area and call setStoryReaction when the are is clicked
  StoryAreaTypeSuggestedReaction? get storyAreaTypeSuggestedReaction {
    if (this is StoryAreaTypeSuggestedReaction) {
      return this as StoryAreaTypeSuggestedReaction;
    }
    return null;
  }

  /// An area pointing to a venue
  StoryAreaTypeVenue? get storyAreaTypeVenue {
    if (this is StoryAreaTypeVenue) {
      return this as StoryAreaTypeVenue;
    }
    return null;
  }

  /// An area pointing to a location
  StoryAreaTypeLocation? get storyAreaTypeLocation {
    if (this is StoryAreaTypeLocation) {
      return this as StoryAreaTypeLocation;
    }
    return null;
  }
}

extension InputStoryAreaTypeExt on InputStoryAreaType {
  /// An area pointing to a venue found by the bot getOption("venue_search_bot_username")
  InputStoryAreaTypeFoundVenue? get inputStoryAreaTypeFoundVenue {
    if (this is InputStoryAreaTypeFoundVenue) {
      return this as InputStoryAreaTypeFoundVenue;
    }
    return null;
  }

  /// An area pointing to a location
  InputStoryAreaTypeLocation? get inputStoryAreaTypeLocation {
    if (this is InputStoryAreaTypeLocation) {
      return this as InputStoryAreaTypeLocation;
    }
    return null;
  }

  /// An area pointing to a suggested reaction
  InputStoryAreaTypeSuggestedReaction? get inputStoryAreaTypeSuggestedReaction {
    if (this is InputStoryAreaTypeSuggestedReaction) {
      return this as InputStoryAreaTypeSuggestedReaction;
    }
    return null;
  }

  /// An area pointing to a venue already added to the story
  InputStoryAreaTypePreviousVenue? get inputStoryAreaTypePreviousVenue {
    if (this is InputStoryAreaTypePreviousVenue) {
      return this as InputStoryAreaTypePreviousVenue;
    }
    return null;
  }
}

extension StoryContentExt on StoryContent {
  /// A video story
  StoryContentVideo? get storyContentVideo {
    if (this is StoryContentVideo) {
      return this as StoryContentVideo;
    }
    return null;
  }

  /// A story content that is not supported in the current TDLib version
  StoryContentUnsupported? get storyContentUnsupported {
    if (this is StoryContentUnsupported) {
      return this as StoryContentUnsupported;
    }
    return null;
  }

  /// A photo story
  StoryContentPhoto? get storyContentPhoto {
    if (this is StoryContentPhoto) {
      return this as StoryContentPhoto;
    }
    return null;
  }
}

extension InputStoryContentExt on InputStoryContent {
  /// A photo story
  InputStoryContentPhoto? get inputStoryContentPhoto {
    if (this is InputStoryContentPhoto) {
      return this as InputStoryContentPhoto;
    }
    return null;
  }

  /// A video story
  InputStoryContentVideo? get inputStoryContentVideo {
    if (this is InputStoryContentVideo) {
      return this as InputStoryContentVideo;
    }
    return null;
  }
}

extension StoryListExt on StoryList {
  /// The list of stories, shown in the Arvhive chat list
  StoryListArchive? get storyListArchive {
    if (this is StoryListArchive) {
      return this as StoryListArchive;
    }
    return null;
  }

  /// The list of stories, shown in the main chat list and folder chat lists
  StoryListMain? get storyListMain {
    if (this is StoryListMain) {
      return this as StoryListMain;
    }
    return null;
  }
}

extension CallDiscardReasonExt on CallDiscardReason {
  /// The call was ended during the conversation because the users were disconnected
  CallDiscardReasonDisconnected? get callDiscardReasonDisconnected {
    if (this is CallDiscardReasonDisconnected) {
      return this as CallDiscardReasonDisconnected;
    }
    return null;
  }

  /// The call wasn't discarded, or the reason is unknown
  CallDiscardReasonEmpty? get callDiscardReasonEmpty {
    if (this is CallDiscardReasonEmpty) {
      return this as CallDiscardReasonEmpty;
    }
    return null;
  }

  /// The call was ended because one of the parties hung up
  CallDiscardReasonHungUp? get callDiscardReasonHungUp {
    if (this is CallDiscardReasonHungUp) {
      return this as CallDiscardReasonHungUp;
    }
    return null;
  }

  /// The call was ended before the conversation started. It was declined by the other party
  CallDiscardReasonDeclined? get callDiscardReasonDeclined {
    if (this is CallDiscardReasonDeclined) {
      return this as CallDiscardReasonDeclined;
    }
    return null;
  }

  /// The call was ended before the conversation started. It was canceled by the caller or missed by the other party
  CallDiscardReasonMissed? get callDiscardReasonMissed {
    if (this is CallDiscardReasonMissed) {
      return this as CallDiscardReasonMissed;
    }
    return null;
  }
}

extension CallServerTypeExt on CallServerType {
  /// A Telegram call reflector
  CallServerTypeTelegramReflector? get callServerTypeTelegramReflector {
    if (this is CallServerTypeTelegramReflector) {
      return this as CallServerTypeTelegramReflector;
    }
    return null;
  }

  /// A WebRTC server
  CallServerTypeWebrtc? get callServerTypeWebrtc {
    if (this is CallServerTypeWebrtc) {
      return this as CallServerTypeWebrtc;
    }
    return null;
  }
}

extension CallStateExt on CallState {
  /// The call has ended with an error
  CallStateError? get callStateError {
    if (this is CallStateError) {
      return this as CallStateError;
    }
    return null;
  }

  /// The call has ended successfully
  CallStateDiscarded? get callStateDiscarded {
    if (this is CallStateDiscarded) {
      return this as CallStateDiscarded;
    }
    return null;
  }

  /// The call has been answered and encryption keys are being exchanged
  CallStateExchangingKeys? get callStateExchangingKeys {
    if (this is CallStateExchangingKeys) {
      return this as CallStateExchangingKeys;
    }
    return null;
  }

  /// The call is pending, waiting to be accepted by a user
  CallStatePending? get callStatePending {
    if (this is CallStatePending) {
      return this as CallStatePending;
    }
    return null;
  }

  /// The call is ready to use
  CallStateReady? get callStateReady {
    if (this is CallStateReady) {
      return this as CallStateReady;
    }
    return null;
  }

  /// The call is hanging up after discardCall has been called
  CallStateHangingUp? get callStateHangingUp {
    if (this is CallStateHangingUp) {
      return this as CallStateHangingUp;
    }
    return null;
  }
}

extension GroupCallVideoQualityExt on GroupCallVideoQuality {
  /// The medium video quality
  GroupCallVideoQualityMedium? get groupCallVideoQualityMedium {
    if (this is GroupCallVideoQualityMedium) {
      return this as GroupCallVideoQualityMedium;
    }
    return null;
  }

  /// The worst available video quality
  GroupCallVideoQualityThumbnail? get groupCallVideoQualityThumbnail {
    if (this is GroupCallVideoQualityThumbnail) {
      return this as GroupCallVideoQualityThumbnail;
    }
    return null;
  }

  /// The best available video quality
  GroupCallVideoQualityFull? get groupCallVideoQualityFull {
    if (this is GroupCallVideoQualityFull) {
      return this as GroupCallVideoQualityFull;
    }
    return null;
  }
}

extension CallProblemExt on CallProblem {
  /// The other side kept disappearing
  CallProblemInterruptions? get callProblemInterruptions {
    if (this is CallProblemInterruptions) {
      return this as CallProblemInterruptions;
    }
    return null;
  }

  /// The video was distorted
  CallProblemDistortedVideo? get callProblemDistortedVideo {
    if (this is CallProblemDistortedVideo) {
      return this as CallProblemDistortedVideo;
    }
    return null;
  }

  /// The user heard their own voice
  CallProblemEcho? get callProblemEcho {
    if (this is CallProblemEcho) {
      return this as CallProblemEcho;
    }
    return null;
  }

  /// The speech was distorted
  CallProblemDistortedSpeech? get callProblemDistortedSpeech {
    if (this is CallProblemDistortedSpeech) {
      return this as CallProblemDistortedSpeech;
    }
    return null;
  }

  /// The video was pixelated
  CallProblemPixelatedVideo? get callProblemPixelatedVideo {
    if (this is CallProblemPixelatedVideo) {
      return this as CallProblemPixelatedVideo;
    }
    return null;
  }

  /// The user couldn't hear the other side
  CallProblemSilentLocal? get callProblemSilentLocal {
    if (this is CallProblemSilentLocal) {
      return this as CallProblemSilentLocal;
    }
    return null;
  }

  /// The other side couldn't hear the user
  CallProblemSilentRemote? get callProblemSilentRemote {
    if (this is CallProblemSilentRemote) {
      return this as CallProblemSilentRemote;
    }
    return null;
  }

  /// The user heard background noise
  CallProblemNoise? get callProblemNoise {
    if (this is CallProblemNoise) {
      return this as CallProblemNoise;
    }
    return null;
  }

  /// The call ended unexpectedly
  CallProblemDropped? get callProblemDropped {
    if (this is CallProblemDropped) {
      return this as CallProblemDropped;
    }
    return null;
  }
}

extension FirebaseAuthenticationSettingsExt on FirebaseAuthenticationSettings {
  /// Settings for Firebase Authentication in the official iOS application
  FirebaseAuthenticationSettingsIos? get firebaseAuthenticationSettingsIos {
    if (this is FirebaseAuthenticationSettingsIos) {
      return this as FirebaseAuthenticationSettingsIos;
    }
    return null;
  }

  /// Settings for Firebase Authentication in the official Android application
  FirebaseAuthenticationSettingsAndroid?
      get firebaseAuthenticationSettingsAndroid {
    if (this is FirebaseAuthenticationSettingsAndroid) {
      return this as FirebaseAuthenticationSettingsAndroid;
    }
    return null;
  }
}

extension DiceStickersExt on DiceStickers {
  /// A regular animated sticker
  DiceStickersRegular? get diceStickersRegular {
    if (this is DiceStickersRegular) {
      return this as DiceStickersRegular;
    }
    return null;
  }

  /// Animated stickers to be combined into a slot machine
  DiceStickersSlotMachine? get diceStickersSlotMachine {
    if (this is DiceStickersSlotMachine) {
      return this as DiceStickersSlotMachine;
    }
    return null;
  }
}

extension SpeechRecognitionResultExt on SpeechRecognitionResult {
  /// The speech recognition failed
  SpeechRecognitionResultError? get speechRecognitionResultError {
    if (this is SpeechRecognitionResultError) {
      return this as SpeechRecognitionResultError;
    }
    return null;
  }

  /// The speech recognition successfully finished
  SpeechRecognitionResultText? get speechRecognitionResultText {
    if (this is SpeechRecognitionResultText) {
      return this as SpeechRecognitionResultText;
    }
    return null;
  }

  /// The speech recognition is ongoing
  SpeechRecognitionResultPending? get speechRecognitionResultPending {
    if (this is SpeechRecognitionResultPending) {
      return this as SpeechRecognitionResultPending;
    }
    return null;
  }
}

extension InputInlineQueryResultExt on InputInlineQueryResult {
  /// Represents a link to an animated GIF or an animated (i.e., without sound) H.264/MPEG-4 AVC video
  InputInlineQueryResultAnimation? get inputInlineQueryResultAnimation {
    if (this is InputInlineQueryResultAnimation) {
      return this as InputInlineQueryResultAnimation;
    }
    return null;
  }

  /// Represents information about a venue
  InputInlineQueryResultVenue? get inputInlineQueryResultVenue {
    if (this is InputInlineQueryResultVenue) {
      return this as InputInlineQueryResultVenue;
    }
    return null;
  }

  /// Represents a link to a WEBP, TGS, or WEBM sticker
  InputInlineQueryResultSticker? get inputInlineQueryResultSticker {
    if (this is InputInlineQueryResultSticker) {
      return this as InputInlineQueryResultSticker;
    }
    return null;
  }

  /// Represents a game
  InputInlineQueryResultGame? get inputInlineQueryResultGame {
    if (this is InputInlineQueryResultGame) {
      return this as InputInlineQueryResultGame;
    }
    return null;
  }

  /// Represents a link to a page containing an embedded video player or a video file
  InputInlineQueryResultVideo? get inputInlineQueryResultVideo {
    if (this is InputInlineQueryResultVideo) {
      return this as InputInlineQueryResultVideo;
    }
    return null;
  }

  /// Represents a user contact
  InputInlineQueryResultContact? get inputInlineQueryResultContact {
    if (this is InputInlineQueryResultContact) {
      return this as InputInlineQueryResultContact;
    }
    return null;
  }

  /// Represents a link to an article or web page
  InputInlineQueryResultArticle? get inputInlineQueryResultArticle {
    if (this is InputInlineQueryResultArticle) {
      return this as InputInlineQueryResultArticle;
    }
    return null;
  }

  /// Represents a link to an MP3 audio file
  InputInlineQueryResultAudio? get inputInlineQueryResultAudio {
    if (this is InputInlineQueryResultAudio) {
      return this as InputInlineQueryResultAudio;
    }
    return null;
  }

  /// Represents link to a JPEG image
  InputInlineQueryResultPhoto? get inputInlineQueryResultPhoto {
    if (this is InputInlineQueryResultPhoto) {
      return this as InputInlineQueryResultPhoto;
    }
    return null;
  }

  /// Represents a point on the map
  InputInlineQueryResultLocation? get inputInlineQueryResultLocation {
    if (this is InputInlineQueryResultLocation) {
      return this as InputInlineQueryResultLocation;
    }
    return null;
  }

  /// Represents a link to a file
  InputInlineQueryResultDocument? get inputInlineQueryResultDocument {
    if (this is InputInlineQueryResultDocument) {
      return this as InputInlineQueryResultDocument;
    }
    return null;
  }

  /// Represents a link to an opus-encoded audio file within an OGG container, single channel audio
  InputInlineQueryResultVoiceNote? get inputInlineQueryResultVoiceNote {
    if (this is InputInlineQueryResultVoiceNote) {
      return this as InputInlineQueryResultVoiceNote;
    }
    return null;
  }
}

extension InlineQueryResultExt on InlineQueryResult {
  /// Represents an audio file
  InlineQueryResultAudio? get inlineQueryResultAudio {
    if (this is InlineQueryResultAudio) {
      return this as InlineQueryResultAudio;
    }
    return null;
  }

  /// Represents information about a venue
  InlineQueryResultVenue? get inlineQueryResultVenue {
    if (this is InlineQueryResultVenue) {
      return this as InlineQueryResultVenue;
    }
    return null;
  }

  /// Represents a photo
  InlineQueryResultPhoto? get inlineQueryResultPhoto {
    if (this is InlineQueryResultPhoto) {
      return this as InlineQueryResultPhoto;
    }
    return null;
  }

  /// Represents a video
  InlineQueryResultVideo? get inlineQueryResultVideo {
    if (this is InlineQueryResultVideo) {
      return this as InlineQueryResultVideo;
    }
    return null;
  }

  /// Represents a sticker
  InlineQueryResultSticker? get inlineQueryResultSticker {
    if (this is InlineQueryResultSticker) {
      return this as InlineQueryResultSticker;
    }
    return null;
  }

  /// Represents a user contact
  InlineQueryResultContact? get inlineQueryResultContact {
    if (this is InlineQueryResultContact) {
      return this as InlineQueryResultContact;
    }
    return null;
  }

  /// Represents information about a game
  InlineQueryResultGame? get inlineQueryResultGame {
    if (this is InlineQueryResultGame) {
      return this as InlineQueryResultGame;
    }
    return null;
  }

  /// Represents a document
  InlineQueryResultDocument? get inlineQueryResultDocument {
    if (this is InlineQueryResultDocument) {
      return this as InlineQueryResultDocument;
    }
    return null;
  }

  /// Represents a voice note
  InlineQueryResultVoiceNote? get inlineQueryResultVoiceNote {
    if (this is InlineQueryResultVoiceNote) {
      return this as InlineQueryResultVoiceNote;
    }
    return null;
  }

  /// Represents an animation file
  InlineQueryResultAnimation? get inlineQueryResultAnimation {
    if (this is InlineQueryResultAnimation) {
      return this as InlineQueryResultAnimation;
    }
    return null;
  }

  /// Represents a link to an article or web page
  InlineQueryResultArticle? get inlineQueryResultArticle {
    if (this is InlineQueryResultArticle) {
      return this as InlineQueryResultArticle;
    }
    return null;
  }

  /// Represents a point on the map
  InlineQueryResultLocation? get inlineQueryResultLocation {
    if (this is InlineQueryResultLocation) {
      return this as InlineQueryResultLocation;
    }
    return null;
  }
}

extension InlineQueryResultsButtonTypeExt on InlineQueryResultsButtonType {
  /// Describes the button that opens a private chat with the bot and sends a start message to the bot with the given parameter
  InlineQueryResultsButtonTypeStartBot?
      get inlineQueryResultsButtonTypeStartBot {
    if (this is InlineQueryResultsButtonTypeStartBot) {
      return this as InlineQueryResultsButtonTypeStartBot;
    }
    return null;
  }

  /// Describes the button that opens a Web App by calling getWebAppUrl
  InlineQueryResultsButtonTypeWebApp? get inlineQueryResultsButtonTypeWebApp {
    if (this is InlineQueryResultsButtonTypeWebApp) {
      return this as InlineQueryResultsButtonTypeWebApp;
    }
    return null;
  }
}

extension CallbackQueryPayloadExt on CallbackQueryPayload {
  /// The payload for a game callback button
  CallbackQueryPayloadGame? get callbackQueryPayloadGame {
    if (this is CallbackQueryPayloadGame) {
      return this as CallbackQueryPayloadGame;
    }
    return null;
  }

  /// The payload for a callback button requiring password
  CallbackQueryPayloadDataWithPassword?
      get callbackQueryPayloadDataWithPassword {
    if (this is CallbackQueryPayloadDataWithPassword) {
      return this as CallbackQueryPayloadDataWithPassword;
    }
    return null;
  }

  /// The payload for a general callback button
  CallbackQueryPayloadData? get callbackQueryPayloadData {
    if (this is CallbackQueryPayloadData) {
      return this as CallbackQueryPayloadData;
    }
    return null;
  }
}

extension ChatEventActionExt on ChatEventAction {
  /// The chat editable username was changed
  ChatEventUsernameChanged? get chatEventUsernameChanged {
    if (this is ChatEventUsernameChanged) {
      return this as ChatEventUsernameChanged;
    }
    return null;
  }

  /// A revoked chat invite link was deleted
  ChatEventInviteLinkDeleted? get chatEventInviteLinkDeleted {
    if (this is ChatEventInviteLinkDeleted) {
      return this as ChatEventInviteLinkDeleted;
    }
    return null;
  }

  /// The linked chat of a supergroup was changed
  ChatEventLinkedChatChanged? get chatEventLinkedChatChanged {
    if (this is ChatEventLinkedChatChanged) {
      return this as ChatEventLinkedChatChanged;
    }
    return null;
  }

  /// The message auto-delete timer was changed
  ChatEventMessageAutoDeleteTimeChanged?
      get chatEventMessageAutoDeleteTimeChanged {
    if (this is ChatEventMessageAutoDeleteTimeChanged) {
      return this as ChatEventMessageAutoDeleteTimeChanged;
    }
    return null;
  }

  /// A chat invite link was revoked
  ChatEventInviteLinkRevoked? get chatEventInviteLinkRevoked {
    if (this is ChatEventInviteLinkRevoked) {
      return this as ChatEventInviteLinkRevoked;
    }
    return null;
  }

  /// A video chat was ended
  ChatEventVideoChatEnded? get chatEventVideoChatEnded {
    if (this is ChatEventVideoChatEnded) {
      return this as ChatEventVideoChatEnded;
    }
    return null;
  }

  /// A new forum topic was created
  ChatEventForumTopicCreated? get chatEventForumTopicCreated {
    if (this is ChatEventForumTopicCreated) {
      return this as ChatEventForumTopicCreated;
    }
    return null;
  }

  /// A new member was accepted to the chat by an administrator
  ChatEventMemberJoinedByRequest? get chatEventMemberJoinedByRequest {
    if (this is ChatEventMemberJoinedByRequest) {
      return this as ChatEventMemberJoinedByRequest;
    }
    return null;
  }

  /// A video chat was created
  ChatEventVideoChatCreated? get chatEventVideoChatCreated {
    if (this is ChatEventVideoChatCreated) {
      return this as ChatEventVideoChatCreated;
    }
    return null;
  }

  /// A pinned forum topic was changed
  ChatEventForumTopicPinned? get chatEventForumTopicPinned {
    if (this is ChatEventForumTopicPinned) {
      return this as ChatEventForumTopicPinned;
    }
    return null;
  }

  /// The chat title was changed
  ChatEventTitleChanged? get chatEventTitleChanged {
    if (this is ChatEventTitleChanged) {
      return this as ChatEventTitleChanged;
    }
    return null;
  }

  /// A chat invite link was edited
  ChatEventInviteLinkEdited? get chatEventInviteLinkEdited {
    if (this is ChatEventInviteLinkEdited) {
      return this as ChatEventInviteLinkEdited;
    }
    return null;
  }

  /// The slow_mode_delay setting of a supergroup was changed
  ChatEventSlowModeDelayChanged? get chatEventSlowModeDelayChanged {
    if (this is ChatEventSlowModeDelayChanged) {
      return this as ChatEventSlowModeDelayChanged;
    }
    return null;
  }

  /// The is_forum setting of a channel was toggled
  ChatEventIsForumToggled? get chatEventIsForumToggled {
    if (this is ChatEventIsForumToggled) {
      return this as ChatEventIsForumToggled;
    }
    return null;
  }

  /// The has_protected_content setting of a channel was toggled
  ChatEventHasProtectedContentToggled? get chatEventHasProtectedContentToggled {
    if (this is ChatEventHasProtectedContentToggled) {
      return this as ChatEventHasProtectedContentToggled;
    }
    return null;
  }

  /// A message was unpinned
  ChatEventMessageUnpinned? get chatEventMessageUnpinned {
    if (this is ChatEventMessageUnpinned) {
      return this as ChatEventMessageUnpinned;
    }
    return null;
  }

  /// A new member joined the chat via an invite link
  ChatEventMemberJoinedByInviteLink? get chatEventMemberJoinedByInviteLink {
    if (this is ChatEventMemberJoinedByInviteLink) {
      return this as ChatEventMemberJoinedByInviteLink;
    }
    return null;
  }

  /// The can_invite_users permission of a supergroup chat was toggled
  ChatEventInvitesToggled? get chatEventInvitesToggled {
    if (this is ChatEventInvitesToggled) {
      return this as ChatEventInvitesToggled;
    }
    return null;
  }

  /// The chat permissions was changed
  ChatEventPermissionsChanged? get chatEventPermissionsChanged {
    if (this is ChatEventPermissionsChanged) {
      return this as ChatEventPermissionsChanged;
    }
    return null;
  }

  /// The sign_messages setting of a channel was toggled
  ChatEventSignMessagesToggled? get chatEventSignMessagesToggled {
    if (this is ChatEventSignMessagesToggled) {
      return this as ChatEventSignMessagesToggled;
    }
    return null;
  }

  /// A poll in a message was stopped
  ChatEventPollStopped? get chatEventPollStopped {
    if (this is ChatEventPollStopped) {
      return this as ChatEventPollStopped;
    }
    return null;
  }

  /// The supergroup location was changed
  ChatEventLocationChanged? get chatEventLocationChanged {
    if (this is ChatEventLocationChanged) {
      return this as ChatEventLocationChanged;
    }
    return null;
  }

  /// The chat available reactions were changed
  ChatEventAvailableReactionsChanged? get chatEventAvailableReactionsChanged {
    if (this is ChatEventAvailableReactionsChanged) {
      return this as ChatEventAvailableReactionsChanged;
    }
    return null;
  }

  /// The supergroup sticker set was changed
  ChatEventStickerSetChanged? get chatEventStickerSetChanged {
    if (this is ChatEventStickerSetChanged) {
      return this as ChatEventStickerSetChanged;
    }
    return null;
  }

  /// The has_aggressive_anti_spam_enabled setting of a supergroup was toggled
  ChatEventHasAggressiveAntiSpamEnabledToggled?
      get chatEventHasAggressiveAntiSpamEnabledToggled {
    if (this is ChatEventHasAggressiveAntiSpamEnabledToggled) {
      return this as ChatEventHasAggressiveAntiSpamEnabledToggled;
    }
    return null;
  }

  /// A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed
  ChatEventMemberRestricted? get chatEventMemberRestricted {
    if (this is ChatEventMemberRestricted) {
      return this as ChatEventMemberRestricted;
    }
    return null;
  }

  /// The is_all_history_available setting of a supergroup was toggled
  ChatEventIsAllHistoryAvailableToggled?
      get chatEventIsAllHistoryAvailableToggled {
    if (this is ChatEventIsAllHistoryAvailableToggled) {
      return this as ChatEventIsAllHistoryAvailableToggled;
    }
    return null;
  }

  /// A new member joined the chat
  ChatEventMemberJoined? get chatEventMemberJoined {
    if (this is ChatEventMemberJoined) {
      return this as ChatEventMemberJoined;
    }
    return null;
  }

  /// A forum topic was edited
  ChatEventForumTopicEdited? get chatEventForumTopicEdited {
    if (this is ChatEventForumTopicEdited) {
      return this as ChatEventForumTopicEdited;
    }
    return null;
  }

  /// A new chat member was invited
  ChatEventMemberInvited? get chatEventMemberInvited {
    if (this is ChatEventMemberInvited) {
      return this as ChatEventMemberInvited;
    }
    return null;
  }

  /// A chat member has gained/lost administrator status, or the list of their administrator privileges has changed
  ChatEventMemberPromoted? get chatEventMemberPromoted {
    if (this is ChatEventMemberPromoted) {
      return this as ChatEventMemberPromoted;
    }
    return null;
  }

  /// A forum topic was closed or reopened
  ChatEventForumTopicToggleIsClosed? get chatEventForumTopicToggleIsClosed {
    if (this is ChatEventForumTopicToggleIsClosed) {
      return this as ChatEventForumTopicToggleIsClosed;
    }
    return null;
  }

  /// A member left the chat
  ChatEventMemberLeft? get chatEventMemberLeft {
    if (this is ChatEventMemberLeft) {
      return this as ChatEventMemberLeft;
    }
    return null;
  }

  /// The mute_new_participants setting of a video chat was toggled
  ChatEventVideoChatMuteNewParticipantsToggled?
      get chatEventVideoChatMuteNewParticipantsToggled {
    if (this is ChatEventVideoChatMuteNewParticipantsToggled) {
      return this as ChatEventVideoChatMuteNewParticipantsToggled;
    }
    return null;
  }

  /// A video chat participant was muted or unmuted
  ChatEventVideoChatParticipantIsMutedToggled?
      get chatEventVideoChatParticipantIsMutedToggled {
    if (this is ChatEventVideoChatParticipantIsMutedToggled) {
      return this as ChatEventVideoChatParticipantIsMutedToggled;
    }
    return null;
  }

  /// A forum topic was deleted
  ChatEventForumTopicDeleted? get chatEventForumTopicDeleted {
    if (this is ChatEventForumTopicDeleted) {
      return this as ChatEventForumTopicDeleted;
    }
    return null;
  }

  /// A message was pinned
  ChatEventMessagePinned? get chatEventMessagePinned {
    if (this is ChatEventMessagePinned) {
      return this as ChatEventMessagePinned;
    }
    return null;
  }

  /// A message was deleted
  ChatEventMessageDeleted? get chatEventMessageDeleted {
    if (this is ChatEventMessageDeleted) {
      return this as ChatEventMessageDeleted;
    }
    return null;
  }

  /// The chat description was changed
  ChatEventDescriptionChanged? get chatEventDescriptionChanged {
    if (this is ChatEventDescriptionChanged) {
      return this as ChatEventDescriptionChanged;
    }
    return null;
  }

  /// The chat active usernames were changed
  ChatEventActiveUsernamesChanged? get chatEventActiveUsernamesChanged {
    if (this is ChatEventActiveUsernamesChanged) {
      return this as ChatEventActiveUsernamesChanged;
    }
    return null;
  }

  /// A message was edited
  ChatEventMessageEdited? get chatEventMessageEdited {
    if (this is ChatEventMessageEdited) {
      return this as ChatEventMessageEdited;
    }
    return null;
  }

  /// The chat photo was changed
  ChatEventPhotoChanged? get chatEventPhotoChanged {
    if (this is ChatEventPhotoChanged) {
      return this as ChatEventPhotoChanged;
    }
    return null;
  }

  /// The General forum topic was hidden or unhidden
  ChatEventForumTopicToggleIsHidden? get chatEventForumTopicToggleIsHidden {
    if (this is ChatEventForumTopicToggleIsHidden) {
      return this as ChatEventForumTopicToggleIsHidden;
    }
    return null;
  }

  /// A video chat participant volume level was changed
  ChatEventVideoChatParticipantVolumeLevelChanged?
      get chatEventVideoChatParticipantVolumeLevelChanged {
    if (this is ChatEventVideoChatParticipantVolumeLevelChanged) {
      return this as ChatEventVideoChatParticipantVolumeLevelChanged;
    }
    return null;
  }
}

extension LanguagePackStringValueExt on LanguagePackStringValue {
  /// An ordinary language pack string
  LanguagePackStringValueOrdinary? get languagePackStringValueOrdinary {
    if (this is LanguagePackStringValueOrdinary) {
      return this as LanguagePackStringValueOrdinary;
    }
    return null;
  }

  /// A language pack string which has different forms based on the number of some object it mentions. See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more information
  LanguagePackStringValuePluralized? get languagePackStringValuePluralized {
    if (this is LanguagePackStringValuePluralized) {
      return this as LanguagePackStringValuePluralized;
    }
    return null;
  }

  /// A deleted language pack string, the value must be taken from the built-in English language pack
  LanguagePackStringValueDeleted? get languagePackStringValueDeleted {
    if (this is LanguagePackStringValueDeleted) {
      return this as LanguagePackStringValueDeleted;
    }
    return null;
  }
}

extension PremiumLimitTypeExt on PremiumLimitType {
  /// The maximum number of saved animations
  PremiumLimitTypeSavedAnimationCount? get premiumLimitTypeSavedAnimationCount {
    if (this is PremiumLimitTypeSavedAnimationCount) {
      return this as PremiumLimitTypeSavedAnimationCount;
    }
    return null;
  }

  /// The maximum number of pinned and always included, or always excluded chats in a chat folder
  PremiumLimitTypeChatFolderChosenChatCount?
      get premiumLimitTypeChatFolderChosenChatCount {
    if (this is PremiumLimitTypeChatFolderChosenChatCount) {
      return this as PremiumLimitTypeChatFolderChosenChatCount;
    }
    return null;
  }

  /// The maximum number of stories sent per month
  PremiumLimitTypeMonthlySentStoryCount?
      get premiumLimitTypeMonthlySentStoryCount {
    if (this is PremiumLimitTypeMonthlySentStoryCount) {
      return this as PremiumLimitTypeMonthlySentStoryCount;
    }
    return null;
  }

  /// The maximum number of pinned chats in the archive chat list
  PremiumLimitTypePinnedArchivedChatCount?
      get premiumLimitTypePinnedArchivedChatCount {
    if (this is PremiumLimitTypePinnedArchivedChatCount) {
      return this as PremiumLimitTypePinnedArchivedChatCount;
    }
    return null;
  }

  /// The maximum number of joined supergroups and channels
  PremiumLimitTypeSupergroupCount? get premiumLimitTypeSupergroupCount {
    if (this is PremiumLimitTypeSupergroupCount) {
      return this as PremiumLimitTypeSupergroupCount;
    }
    return null;
  }

  /// The maximum number of chat folders
  PremiumLimitTypeChatFolderCount? get premiumLimitTypeChatFolderCount {
    if (this is PremiumLimitTypeChatFolderCount) {
      return this as PremiumLimitTypeChatFolderCount;
    }
    return null;
  }

  /// The maximum number of pinned chats in the main chat list
  PremiumLimitTypePinnedChatCount? get premiumLimitTypePinnedChatCount {
    if (this is PremiumLimitTypePinnedChatCount) {
      return this as PremiumLimitTypePinnedChatCount;
    }
    return null;
  }

  /// The maximum number of added shareable chat folders
  PremiumLimitTypeShareableChatFolderCount?
      get premiumLimitTypeShareableChatFolderCount {
    if (this is PremiumLimitTypeShareableChatFolderCount) {
      return this as PremiumLimitTypeShareableChatFolderCount;
    }
    return null;
  }

  /// The maximum number of active stories
  PremiumLimitTypeActiveStoryCount? get premiumLimitTypeActiveStoryCount {
    if (this is PremiumLimitTypeActiveStoryCount) {
      return this as PremiumLimitTypeActiveStoryCount;
    }
    return null;
  }

  /// The maximum number of stories sent per week
  PremiumLimitTypeWeeklySentStoryCount?
      get premiumLimitTypeWeeklySentStoryCount {
    if (this is PremiumLimitTypeWeeklySentStoryCount) {
      return this as PremiumLimitTypeWeeklySentStoryCount;
    }
    return null;
  }

  /// The maximum number of created public chats
  PremiumLimitTypeCreatedPublicChatCount?
      get premiumLimitTypeCreatedPublicChatCount {
    if (this is PremiumLimitTypeCreatedPublicChatCount) {
      return this as PremiumLimitTypeCreatedPublicChatCount;
    }
    return null;
  }

  /// The maximum length of the user's bio
  PremiumLimitTypeBioLength? get premiumLimitTypeBioLength {
    if (this is PremiumLimitTypeBioLength) {
      return this as PremiumLimitTypeBioLength;
    }
    return null;
  }

  /// The maximum number of suggested reaction areas on a story
  PremiumLimitTypeStorySuggestedReactionAreaCount?
      get premiumLimitTypeStorySuggestedReactionAreaCount {
    if (this is PremiumLimitTypeStorySuggestedReactionAreaCount) {
      return this as PremiumLimitTypeStorySuggestedReactionAreaCount;
    }
    return null;
  }

  /// The maximum length of sent media caption
  PremiumLimitTypeCaptionLength? get premiumLimitTypeCaptionLength {
    if (this is PremiumLimitTypeCaptionLength) {
      return this as PremiumLimitTypeCaptionLength;
    }
    return null;
  }

  /// The maximum number of favorite stickers
  PremiumLimitTypeFavoriteStickerCount?
      get premiumLimitTypeFavoriteStickerCount {
    if (this is PremiumLimitTypeFavoriteStickerCount) {
      return this as PremiumLimitTypeFavoriteStickerCount;
    }
    return null;
  }

  /// The maximum number of invite links for a chat folder
  PremiumLimitTypeChatFolderInviteLinkCount?
      get premiumLimitTypeChatFolderInviteLinkCount {
    if (this is PremiumLimitTypeChatFolderInviteLinkCount) {
      return this as PremiumLimitTypeChatFolderInviteLinkCount;
    }
    return null;
  }

  /// The maximum length of captions of sent stories
  PremiumLimitTypeStoryCaptionLength? get premiumLimitTypeStoryCaptionLength {
    if (this is PremiumLimitTypeStoryCaptionLength) {
      return this as PremiumLimitTypeStoryCaptionLength;
    }
    return null;
  }
}

extension PremiumFeatureExt on PremiumFeature {
  /// Disabled ads
  PremiumFeatureDisabledAds? get premiumFeatureDisabledAds {
    if (this is PremiumFeatureDisabledAds) {
      return this as PremiumFeatureDisabledAds;
    }
    return null;
  }

  /// Ability to change position of the main chat list, archive and mute all new chats from non-contacts, and completely disable notifications about the user's contacts joined Telegram
  PremiumFeatureAdvancedChatManagement?
      get premiumFeatureAdvancedChatManagement {
    if (this is PremiumFeatureAdvancedChatManagement) {
      return this as PremiumFeatureAdvancedChatManagement;
    }
    return null;
  }

  /// Allowed to use premium stickers with unique effects
  PremiumFeatureUniqueStickers? get premiumFeatureUniqueStickers {
    if (this is PremiumFeatureUniqueStickers) {
      return this as PremiumFeatureUniqueStickers;
    }
    return null;
  }

  /// The ability to convert voice notes to text
  PremiumFeatureVoiceRecognition? get premiumFeatureVoiceRecognition {
    if (this is PremiumFeatureVoiceRecognition) {
      return this as PremiumFeatureVoiceRecognition;
    }
    return null;
  }

  /// An emoji status shown along with the user's name
  PremiumFeatureEmojiStatus? get premiumFeatureEmojiStatus {
    if (this is PremiumFeatureEmojiStatus) {
      return this as PremiumFeatureEmojiStatus;
    }
    return null;
  }

  /// Allowed to use custom emoji stickers in message texts and captions
  PremiumFeatureCustomEmoji? get premiumFeatureCustomEmoji {
    if (this is PremiumFeatureCustomEmoji) {
      return this as PremiumFeatureCustomEmoji;
    }
    return null;
  }

  /// Improved download speed
  PremiumFeatureImprovedDownloadSpeed? get premiumFeatureImprovedDownloadSpeed {
    if (this is PremiumFeatureImprovedDownloadSpeed) {
      return this as PremiumFeatureImprovedDownloadSpeed;
    }
    return null;
  }

  /// The ability to set a custom emoji as a forum topic icon
  PremiumFeatureForumTopicIcon? get premiumFeatureForumTopicIcon {
    if (this is PremiumFeatureForumTopicIcon) {
      return this as PremiumFeatureForumTopicIcon;
    }
    return null;
  }

  /// Allowed to use many additional features for stories
  PremiumFeatureUpgradedStories? get premiumFeatureUpgradedStories {
    if (this is PremiumFeatureUpgradedStories) {
      return this as PremiumFeatureUpgradedStories;
    }
    return null;
  }

  /// Allowed to translate chat messages real-time
  PremiumFeatureRealTimeChatTranslation?
      get premiumFeatureRealTimeChatTranslation {
    if (this is PremiumFeatureRealTimeChatTranslation) {
      return this as PremiumFeatureRealTimeChatTranslation;
    }
    return null;
  }

  /// Increased limits
  PremiumFeatureIncreasedLimits? get premiumFeatureIncreasedLimits {
    if (this is PremiumFeatureIncreasedLimits) {
      return this as PremiumFeatureIncreasedLimits;
    }
    return null;
  }

  /// Profile photo animation on message and chat screens
  PremiumFeatureAnimatedProfilePhoto? get premiumFeatureAnimatedProfilePhoto {
    if (this is PremiumFeatureAnimatedProfilePhoto) {
      return this as PremiumFeatureAnimatedProfilePhoto;
    }
    return null;
  }

  /// Allowed to set a premium application icons
  PremiumFeatureAppIcons? get premiumFeatureAppIcons {
    if (this is PremiumFeatureAppIcons) {
      return this as PremiumFeatureAppIcons;
    }
    return null;
  }

  /// Increased maximum upload file size
  PremiumFeatureIncreasedUploadFileSize?
      get premiumFeatureIncreasedUploadFileSize {
    if (this is PremiumFeatureIncreasedUploadFileSize) {
      return this as PremiumFeatureIncreasedUploadFileSize;
    }
    return null;
  }

  /// A badge in the user's profile
  PremiumFeatureProfileBadge? get premiumFeatureProfileBadge {
    if (this is PremiumFeatureProfileBadge) {
      return this as PremiumFeatureProfileBadge;
    }
    return null;
  }

  /// The ability to boost chats
  PremiumFeatureChatBoost? get premiumFeatureChatBoost {
    if (this is PremiumFeatureChatBoost) {
      return this as PremiumFeatureChatBoost;
    }
    return null;
  }

  /// Allowed to use more reactions
  PremiumFeatureUniqueReactions? get premiumFeatureUniqueReactions {
    if (this is PremiumFeatureUniqueReactions) {
      return this as PremiumFeatureUniqueReactions;
    }
    return null;
  }
}

extension PremiumStoryFeatureExt on PremiumStoryFeature {
  /// The ability to save other's unprotected stories
  PremiumStoryFeatureSaveStories? get premiumStoryFeatureSaveStories {
    if (this is PremiumStoryFeatureSaveStories) {
      return this as PremiumStoryFeatureSaveStories;
    }
    return null;
  }

  /// The ability to check who opened the current user's stories after they expire
  PremiumStoryFeaturePermanentViewsHistory?
      get premiumStoryFeaturePermanentViewsHistory {
    if (this is PremiumStoryFeaturePermanentViewsHistory) {
      return this as PremiumStoryFeaturePermanentViewsHistory;
    }
    return null;
  }

  /// The ability to use links and formatting in story caption
  PremiumStoryFeatureLinksAndFormatting?
      get premiumStoryFeatureLinksAndFormatting {
    if (this is PremiumStoryFeatureLinksAndFormatting) {
      return this as PremiumStoryFeatureLinksAndFormatting;
    }
    return null;
  }

  /// The ability to hide the fact that the user viewed other's stories
  PremiumStoryFeatureStealthMode? get premiumStoryFeatureStealthMode {
    if (this is PremiumStoryFeatureStealthMode) {
      return this as PremiumStoryFeatureStealthMode;
    }
    return null;
  }

  /// The ability to set custom expiration duration for stories
  PremiumStoryFeatureCustomExpirationDuration?
      get premiumStoryFeatureCustomExpirationDuration {
    if (this is PremiumStoryFeatureCustomExpirationDuration) {
      return this as PremiumStoryFeatureCustomExpirationDuration;
    }
    return null;
  }

  /// User stories are displayed before stories of non-premium contacts and channels
  PremiumStoryFeaturePriorityOrder? get premiumStoryFeaturePriorityOrder {
    if (this is PremiumStoryFeaturePriorityOrder) {
      return this as PremiumStoryFeaturePriorityOrder;
    }
    return null;
  }
}

extension PremiumSourceExt on PremiumSource {
  /// A user tried to use a Premium story feature
  PremiumSourceStoryFeature? get premiumSourceStoryFeature {
    if (this is PremiumSourceStoryFeature) {
      return this as PremiumSourceStoryFeature;
    }
    return null;
  }

  /// A limit was exceeded
  PremiumSourceLimitExceeded? get premiumSourceLimitExceeded {
    if (this is PremiumSourceLimitExceeded) {
      return this as PremiumSourceLimitExceeded;
    }
    return null;
  }

  /// A user tried to use a Premium feature
  PremiumSourceFeature? get premiumSourceFeature {
    if (this is PremiumSourceFeature) {
      return this as PremiumSourceFeature;
    }
    return null;
  }

  /// A user opened an internal link of the type internalLinkTypePremiumFeatures
  PremiumSourceLink? get premiumSourceLink {
    if (this is PremiumSourceLink) {
      return this as PremiumSourceLink;
    }
    return null;
  }

  /// A user opened the Premium features screen from settings
  PremiumSourceSettings? get premiumSourceSettings {
    if (this is PremiumSourceSettings) {
      return this as PremiumSourceSettings;
    }
    return null;
  }
}

extension StorePaymentPurposeExt on StorePaymentPurpose {
  /// The user subscribed to Telegram Premium
  StorePaymentPurposePremiumSubscription?
      get storePaymentPurposePremiumSubscription {
    if (this is StorePaymentPurposePremiumSubscription) {
      return this as StorePaymentPurposePremiumSubscription;
    }
    return null;
  }

  /// The user gifted Telegram Premium to another user
  StorePaymentPurposeGiftedPremium? get storePaymentPurposeGiftedPremium {
    if (this is StorePaymentPurposeGiftedPremium) {
      return this as StorePaymentPurposeGiftedPremium;
    }
    return null;
  }
}

extension DeviceTokenExt on DeviceToken {
  /// A token for Firebase Cloud Messaging
  DeviceTokenFirebaseCloudMessaging? get deviceTokenFirebaseCloudMessaging {
    if (this is DeviceTokenFirebaseCloudMessaging) {
      return this as DeviceTokenFirebaseCloudMessaging;
    }
    return null;
  }

  /// A token for HUAWEI Push Service
  DeviceTokenHuaweiPush? get deviceTokenHuaweiPush {
    if (this is DeviceTokenHuaweiPush) {
      return this as DeviceTokenHuaweiPush;
    }
    return null;
  }

  /// A token for Microsoft Push Notification Service
  DeviceTokenMicrosoftPush? get deviceTokenMicrosoftPush {
    if (this is DeviceTokenMicrosoftPush) {
      return this as DeviceTokenMicrosoftPush;
    }
    return null;
  }

  /// A token for web Push API
  DeviceTokenWebPush? get deviceTokenWebPush {
    if (this is DeviceTokenWebPush) {
      return this as DeviceTokenWebPush;
    }
    return null;
  }

  /// A token for Tizen Push Service
  DeviceTokenTizenPush? get deviceTokenTizenPush {
    if (this is DeviceTokenTizenPush) {
      return this as DeviceTokenTizenPush;
    }
    return null;
  }

  /// A token for Microsoft Push Notification Service VoIP channel
  DeviceTokenMicrosoftPushVoIP? get deviceTokenMicrosoftPushVoIP {
    if (this is DeviceTokenMicrosoftPushVoIP) {
      return this as DeviceTokenMicrosoftPushVoIP;
    }
    return null;
  }

  /// A token for Apple Push Notification service
  DeviceTokenApplePush? get deviceTokenApplePush {
    if (this is DeviceTokenApplePush) {
      return this as DeviceTokenApplePush;
    }
    return null;
  }

  /// A token for Simple Push API for Firefox OS
  DeviceTokenSimplePush? get deviceTokenSimplePush {
    if (this is DeviceTokenSimplePush) {
      return this as DeviceTokenSimplePush;
    }
    return null;
  }

  /// A token for Ubuntu Push Client service
  DeviceTokenUbuntuPush? get deviceTokenUbuntuPush {
    if (this is DeviceTokenUbuntuPush) {
      return this as DeviceTokenUbuntuPush;
    }
    return null;
  }

  /// A token for Apple Push Notification service VoIP notifications
  DeviceTokenApplePushVoIP? get deviceTokenApplePushVoIP {
    if (this is DeviceTokenApplePushVoIP) {
      return this as DeviceTokenApplePushVoIP;
    }
    return null;
  }

  /// A token for Windows Push Notification Services
  DeviceTokenWindowsPush? get deviceTokenWindowsPush {
    if (this is DeviceTokenWindowsPush) {
      return this as DeviceTokenWindowsPush;
    }
    return null;
  }

  /// A token for BlackBerry Push Service
  DeviceTokenBlackBerryPush? get deviceTokenBlackBerryPush {
    if (this is DeviceTokenBlackBerryPush) {
      return this as DeviceTokenBlackBerryPush;
    }
    return null;
  }
}

extension BackgroundFillExt on BackgroundFill {
  /// Describes a freeform gradient fill of a background
  BackgroundFillFreeformGradient? get backgroundFillFreeformGradient {
    if (this is BackgroundFillFreeformGradient) {
      return this as BackgroundFillFreeformGradient;
    }
    return null;
  }

  /// Describes a solid fill of a background
  BackgroundFillSolid? get backgroundFillSolid {
    if (this is BackgroundFillSolid) {
      return this as BackgroundFillSolid;
    }
    return null;
  }

  /// Describes a gradient fill of a background
  BackgroundFillGradient? get backgroundFillGradient {
    if (this is BackgroundFillGradient) {
      return this as BackgroundFillGradient;
    }
    return null;
  }
}

extension BackgroundTypeExt on BackgroundType {
  /// A filled background
  BackgroundTypeFill? get backgroundTypeFill {
    if (this is BackgroundTypeFill) {
      return this as BackgroundTypeFill;
    }
    return null;
  }

  /// A wallpaper in JPEG format
  BackgroundTypeWallpaper? get backgroundTypeWallpaper {
    if (this is BackgroundTypeWallpaper) {
      return this as BackgroundTypeWallpaper;
    }
    return null;
  }

  /// A PNG or TGV (gzipped subset of SVG with MIME type "application/x-tgwallpattern") pattern to be combined with the background fill chosen by the user
  BackgroundTypePattern? get backgroundTypePattern {
    if (this is BackgroundTypePattern) {
      return this as BackgroundTypePattern;
    }
    return null;
  }
}

extension InputBackgroundExt on InputBackground {
  /// A background from a local file
  InputBackgroundLocal? get inputBackgroundLocal {
    if (this is InputBackgroundLocal) {
      return this as InputBackgroundLocal;
    }
    return null;
  }

  /// A background previously set in the chat; for chat backgrounds only
  InputBackgroundPrevious? get inputBackgroundPrevious {
    if (this is InputBackgroundPrevious) {
      return this as InputBackgroundPrevious;
    }
    return null;
  }

  /// A background from the server
  InputBackgroundRemote? get inputBackgroundRemote {
    if (this is InputBackgroundRemote) {
      return this as InputBackgroundRemote;
    }
    return null;
  }
}

extension CanSendStoryResultExt on CanSendStoryResult {
  /// The user must subscribe to Telegram Premium to be able to post stories
  CanSendStoryResultPremiumNeeded? get canSendStoryResultPremiumNeeded {
    if (this is CanSendStoryResultPremiumNeeded) {
      return this as CanSendStoryResultPremiumNeeded;
    }
    return null;
  }

  /// The weekly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time
  CanSendStoryResultWeeklyLimitExceeded?
      get canSendStoryResultWeeklyLimitExceeded {
    if (this is CanSendStoryResultWeeklyLimitExceeded) {
      return this as CanSendStoryResultWeeklyLimitExceeded;
    }
    return null;
  }

  /// The channel chat must be boosted first by Telegram Premium subscribers to post more stories. Call getChatBoostStatus to get current boost status of the chat
  CanSendStoryResultBoostNeeded? get canSendStoryResultBoostNeeded {
    if (this is CanSendStoryResultBoostNeeded) {
      return this as CanSendStoryResultBoostNeeded;
    }
    return null;
  }

  /// A story can be sent
  CanSendStoryResultOk? get canSendStoryResultOk {
    if (this is CanSendStoryResultOk) {
      return this as CanSendStoryResultOk;
    }
    return null;
  }

  /// The monthly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time
  CanSendStoryResultMonthlyLimitExceeded?
      get canSendStoryResultMonthlyLimitExceeded {
    if (this is CanSendStoryResultMonthlyLimitExceeded) {
      return this as CanSendStoryResultMonthlyLimitExceeded;
    }
    return null;
  }

  /// The limit for the number of active stories exceeded. The user can buy Telegram Premium, delete an active story, or wait for the oldest story to expire
  CanSendStoryResultActiveStoryLimitExceeded?
      get canSendStoryResultActiveStoryLimitExceeded {
    if (this is CanSendStoryResultActiveStoryLimitExceeded) {
      return this as CanSendStoryResultActiveStoryLimitExceeded;
    }
    return null;
  }
}

extension CanBoostChatResultExt on CanBoostChatResult {
  /// The chat is already boosted by the user
  CanBoostChatResultAlreadyBoosted? get canBoostChatResultAlreadyBoosted {
    if (this is CanBoostChatResultAlreadyBoosted) {
      return this as CanBoostChatResultAlreadyBoosted;
    }
    return null;
  }

  /// The chat can be boosted
  CanBoostChatResultOk? get canBoostChatResultOk {
    if (this is CanBoostChatResultOk) {
      return this as CanBoostChatResultOk;
    }
    return null;
  }

  /// The user must have Telegram Premium subscription instead of a gifted Telegram Premium
  CanBoostChatResultPremiumSubscriptionNeeded?
      get canBoostChatResultPremiumSubscriptionNeeded {
    if (this is CanBoostChatResultPremiumSubscriptionNeeded) {
      return this as CanBoostChatResultPremiumSubscriptionNeeded;
    }
    return null;
  }

  /// The user must wait the specified time before the boost can be moved to another chat
  CanBoostChatResultWaitNeeded? get canBoostChatResultWaitNeeded {
    if (this is CanBoostChatResultWaitNeeded) {
      return this as CanBoostChatResultWaitNeeded;
    }
    return null;
  }

  /// The chat can't be boosted
  CanBoostChatResultInvalidChat? get canBoostChatResultInvalidChat {
    if (this is CanBoostChatResultInvalidChat) {
      return this as CanBoostChatResultInvalidChat;
    }
    return null;
  }

  /// The user must subscribe to Telegram Premium to be able to boost chats
  CanBoostChatResultPremiumNeeded? get canBoostChatResultPremiumNeeded {
    if (this is CanBoostChatResultPremiumNeeded) {
      return this as CanBoostChatResultPremiumNeeded;
    }
    return null;
  }
}

extension CanTransferOwnershipResultExt on CanTransferOwnershipResult {
  /// The 2-step verification needs to be enabled first
  CanTransferOwnershipResultPasswordNeeded?
      get canTransferOwnershipResultPasswordNeeded {
    if (this is CanTransferOwnershipResultPasswordNeeded) {
      return this as CanTransferOwnershipResultPasswordNeeded;
    }
    return null;
  }

  /// The 2-step verification was enabled recently, user needs to wait
  CanTransferOwnershipResultPasswordTooFresh?
      get canTransferOwnershipResultPasswordTooFresh {
    if (this is CanTransferOwnershipResultPasswordTooFresh) {
      return this as CanTransferOwnershipResultPasswordTooFresh;
    }
    return null;
  }

  /// The session can be used
  CanTransferOwnershipResultOk? get canTransferOwnershipResultOk {
    if (this is CanTransferOwnershipResultOk) {
      return this as CanTransferOwnershipResultOk;
    }
    return null;
  }

  /// The session was created recently, user needs to wait
  CanTransferOwnershipResultSessionTooFresh?
      get canTransferOwnershipResultSessionTooFresh {
    if (this is CanTransferOwnershipResultSessionTooFresh) {
      return this as CanTransferOwnershipResultSessionTooFresh;
    }
    return null;
  }
}

extension CheckChatUsernameResultExt on CheckChatUsernameResult {
  /// The username is invalid
  CheckChatUsernameResultUsernameInvalid?
      get checkChatUsernameResultUsernameInvalid {
    if (this is CheckChatUsernameResultUsernameInvalid) {
      return this as CheckChatUsernameResultUsernameInvalid;
    }
    return null;
  }

  /// The username is occupied
  CheckChatUsernameResultUsernameOccupied?
      get checkChatUsernameResultUsernameOccupied {
    if (this is CheckChatUsernameResultUsernameOccupied) {
      return this as CheckChatUsernameResultUsernameOccupied;
    }
    return null;
  }

  /// The username can be purchased at fragment.com
  CheckChatUsernameResultUsernamePurchasable?
      get checkChatUsernameResultUsernamePurchasable {
    if (this is CheckChatUsernameResultUsernamePurchasable) {
      return this as CheckChatUsernameResultUsernamePurchasable;
    }
    return null;
  }

  /// The user has too many chats with username, one of them must be made private first
  CheckChatUsernameResultPublicChatsTooMany?
      get checkChatUsernameResultPublicChatsTooMany {
    if (this is CheckChatUsernameResultPublicChatsTooMany) {
      return this as CheckChatUsernameResultPublicChatsTooMany;
    }
    return null;
  }

  /// The user can't be a member of a public supergroup
  CheckChatUsernameResultPublicGroupsUnavailable?
      get checkChatUsernameResultPublicGroupsUnavailable {
    if (this is CheckChatUsernameResultPublicGroupsUnavailable) {
      return this as CheckChatUsernameResultPublicGroupsUnavailable;
    }
    return null;
  }

  /// The username can be set
  CheckChatUsernameResultOk? get checkChatUsernameResultOk {
    if (this is CheckChatUsernameResultOk) {
      return this as CheckChatUsernameResultOk;
    }
    return null;
  }
}

extension CheckStickerSetNameResultExt on CheckStickerSetNameResult {
  /// The name is occupied
  CheckStickerSetNameResultNameOccupied?
      get checkStickerSetNameResultNameOccupied {
    if (this is CheckStickerSetNameResultNameOccupied) {
      return this as CheckStickerSetNameResultNameOccupied;
    }
    return null;
  }

  /// The name can be set
  CheckStickerSetNameResultOk? get checkStickerSetNameResultOk {
    if (this is CheckStickerSetNameResultOk) {
      return this as CheckStickerSetNameResultOk;
    }
    return null;
  }

  /// The name is invalid
  CheckStickerSetNameResultNameInvalid?
      get checkStickerSetNameResultNameInvalid {
    if (this is CheckStickerSetNameResultNameInvalid) {
      return this as CheckStickerSetNameResultNameInvalid;
    }
    return null;
  }
}

extension ResetPasswordResultExt on ResetPasswordResult {
  /// The password was reset
  ResetPasswordResultOk? get resetPasswordResultOk {
    if (this is ResetPasswordResultOk) {
      return this as ResetPasswordResultOk;
    }
    return null;
  }

  /// The password reset request is pending
  ResetPasswordResultPending? get resetPasswordResultPending {
    if (this is ResetPasswordResultPending) {
      return this as ResetPasswordResultPending;
    }
    return null;
  }

  /// The password reset request was declined
  ResetPasswordResultDeclined? get resetPasswordResultDeclined {
    if (this is ResetPasswordResultDeclined) {
      return this as ResetPasswordResultDeclined;
    }
    return null;
  }
}

extension MessageFileTypeExt on MessageFileType {
  /// The messages was exported from a chat of unknown type
  MessageFileTypeUnknown? get messageFileTypeUnknown {
    if (this is MessageFileTypeUnknown) {
      return this as MessageFileTypeUnknown;
    }
    return null;
  }

  /// The messages was exported from a private chat
  MessageFileTypePrivate? get messageFileTypePrivate {
    if (this is MessageFileTypePrivate) {
      return this as MessageFileTypePrivate;
    }
    return null;
  }

  /// The messages was exported from a group chat
  MessageFileTypeGroup? get messageFileTypeGroup {
    if (this is MessageFileTypeGroup) {
      return this as MessageFileTypeGroup;
    }
    return null;
  }
}

extension PushMessageContentExt on PushMessageContent {
  /// A chat title was edited
  PushMessageContentChatChangeTitle? get pushMessageContentChatChangeTitle {
    if (this is PushMessageContentChatChangeTitle) {
      return this as PushMessageContentChatChangeTitle;
    }
    return null;
  }

  /// A message with an invoice from a bot
  PushMessageContentInvoice? get pushMessageContentInvoice {
    if (this is PushMessageContentInvoice) {
      return this as PushMessageContentInvoice;
    }
    return null;
  }

  /// An animation message (GIF-style).
  PushMessageContentAnimation? get pushMessageContentAnimation {
    if (this is PushMessageContentAnimation) {
      return this as PushMessageContentAnimation;
    }
    return null;
  }

  /// A message with a story
  PushMessageContentStory? get pushMessageContentStory {
    if (this is PushMessageContentStory) {
      return this as PushMessageContentStory;
    }
    return null;
  }

  /// A chat background was edited
  PushMessageContentChatSetBackground? get pushMessageContentChatSetBackground {
    if (this is PushMessageContentChatSetBackground) {
      return this as PushMessageContentChatSetBackground;
    }
    return null;
  }

  /// A message with a game
  PushMessageContentGame? get pushMessageContentGame {
    if (this is PushMessageContentGame) {
      return this as PushMessageContentGame;
    }
    return null;
  }

  /// A document message (a general file)
  PushMessageContentDocument? get pushMessageContentDocument {
    if (this is PushMessageContentDocument) {
      return this as PushMessageContentDocument;
    }
    return null;
  }

  /// A photo message
  PushMessageContentPhoto? get pushMessageContentPhoto {
    if (this is PushMessageContentPhoto) {
      return this as PushMessageContentPhoto;
    }
    return null;
  }

  /// A new high score was achieved in a game
  PushMessageContentGameScore? get pushMessageContentGameScore {
    if (this is PushMessageContentGameScore) {
      return this as PushMessageContentGameScore;
    }
    return null;
  }

  /// A message with a location
  PushMessageContentLocation? get pushMessageContentLocation {
    if (this is PushMessageContentLocation) {
      return this as PushMessageContentLocation;
    }
    return null;
  }

  /// A new member was accepted to the chat by an administrator
  PushMessageContentChatJoinByRequest? get pushMessageContentChatJoinByRequest {
    if (this is PushMessageContentChatJoinByRequest) {
      return this as PushMessageContentChatJoinByRequest;
    }
    return null;
  }

  /// A message with a user contact
  PushMessageContentContact? get pushMessageContentContact {
    if (this is PushMessageContentContact) {
      return this as PushMessageContentContact;
    }
    return null;
  }

  /// A new recurring payment was made by the current user
  PushMessageContentRecurringPayment? get pushMessageContentRecurringPayment {
    if (this is PushMessageContentRecurringPayment) {
      return this as PushMessageContentRecurringPayment;
    }
    return null;
  }

  /// A profile photo was suggested to the user
  PushMessageContentSuggestProfilePhoto?
      get pushMessageContentSuggestProfilePhoto {
    if (this is PushMessageContentSuggestProfilePhoto) {
      return this as PushMessageContentSuggestProfilePhoto;
    }
    return null;
  }

  /// A forwarded messages
  PushMessageContentMessageForwards? get pushMessageContentMessageForwards {
    if (this is PushMessageContentMessageForwards) {
      return this as PushMessageContentMessageForwards;
    }
    return null;
  }

  /// A media album
  PushMessageContentMediaAlbum? get pushMessageContentMediaAlbum {
    if (this is PushMessageContentMediaAlbum) {
      return this as PushMessageContentMediaAlbum;
    }
    return null;
  }

  /// A video message
  PushMessageContentVideo? get pushMessageContentVideo {
    if (this is PushMessageContentVideo) {
      return this as PushMessageContentVideo;
    }
    return null;
  }

  /// A newly created basic group
  PushMessageContentBasicGroupChatCreate?
      get pushMessageContentBasicGroupChatCreate {
    if (this is PushMessageContentBasicGroupChatCreate) {
      return this as PushMessageContentBasicGroupChatCreate;
    }
    return null;
  }

  /// An audio message
  PushMessageContentAudio? get pushMessageContentAudio {
    if (this is PushMessageContentAudio) {
      return this as PushMessageContentAudio;
    }
    return null;
  }

  /// A general message with hidden content
  PushMessageContentHidden? get pushMessageContentHidden {
    if (this is PushMessageContentHidden) {
      return this as PushMessageContentHidden;
    }
    return null;
  }

  /// A chat member was deleted
  PushMessageContentChatDeleteMember? get pushMessageContentChatDeleteMember {
    if (this is PushMessageContentChatDeleteMember) {
      return this as PushMessageContentChatDeleteMember;
    }
    return null;
  }

  /// A message with a sticker
  PushMessageContentSticker? get pushMessageContentSticker {
    if (this is PushMessageContentSticker) {
      return this as PushMessageContentSticker;
    }
    return null;
  }

  /// A message with a poll
  PushMessageContentPoll? get pushMessageContentPoll {
    if (this is PushMessageContentPoll) {
      return this as PushMessageContentPoll;
    }
    return null;
  }

  /// A voice note message
  PushMessageContentVoiceNote? get pushMessageContentVoiceNote {
    if (this is PushMessageContentVoiceNote) {
      return this as PushMessageContentVoiceNote;
    }
    return null;
  }

  /// A contact has registered with Telegram
  PushMessageContentContactRegistered? get pushMessageContentContactRegistered {
    if (this is PushMessageContentContactRegistered) {
      return this as PushMessageContentContactRegistered;
    }
    return null;
  }

  /// A video note message
  PushMessageContentVideoNote? get pushMessageContentVideoNote {
    if (this is PushMessageContentVideoNote) {
      return this as PushMessageContentVideoNote;
    }
    return null;
  }

  /// A chat theme was edited
  PushMessageContentChatSetTheme? get pushMessageContentChatSetTheme {
    if (this is PushMessageContentChatSetTheme) {
      return this as PushMessageContentChatSetTheme;
    }
    return null;
  }

  /// A chat photo was edited
  PushMessageContentChatChangePhoto? get pushMessageContentChatChangePhoto {
    if (this is PushMessageContentChatChangePhoto) {
      return this as PushMessageContentChatChangePhoto;
    }
    return null;
  }

  /// A new member joined the chat via an invite link
  PushMessageContentChatJoinByLink? get pushMessageContentChatJoinByLink {
    if (this is PushMessageContentChatJoinByLink) {
      return this as PushMessageContentChatJoinByLink;
    }
    return null;
  }

  /// A text message
  PushMessageContentText? get pushMessageContentText {
    if (this is PushMessageContentText) {
      return this as PushMessageContentText;
    }
    return null;
  }

  /// New chat members were invited to a group
  PushMessageContentChatAddMembers? get pushMessageContentChatAddMembers {
    if (this is PushMessageContentChatAddMembers) {
      return this as PushMessageContentChatAddMembers;
    }
    return null;
  }

  /// A screenshot of a message in the chat has been taken
  PushMessageContentScreenshotTaken? get pushMessageContentScreenshotTaken {
    if (this is PushMessageContentScreenshotTaken) {
      return this as PushMessageContentScreenshotTaken;
    }
    return null;
  }
}

extension NotificationTypeExt on NotificationType {
  /// New call was received
  NotificationTypeNewCall? get notificationTypeNewCall {
    if (this is NotificationTypeNewCall) {
      return this as NotificationTypeNewCall;
    }
    return null;
  }

  /// New message was received through a push notification
  NotificationTypeNewPushMessage? get notificationTypeNewPushMessage {
    if (this is NotificationTypeNewPushMessage) {
      return this as NotificationTypeNewPushMessage;
    }
    return null;
  }

  /// New message was received
  NotificationTypeNewMessage? get notificationTypeNewMessage {
    if (this is NotificationTypeNewMessage) {
      return this as NotificationTypeNewMessage;
    }
    return null;
  }

  /// New secret chat was created
  NotificationTypeNewSecretChat? get notificationTypeNewSecretChat {
    if (this is NotificationTypeNewSecretChat) {
      return this as NotificationTypeNewSecretChat;
    }
    return null;
  }
}

extension NotificationGroupTypeExt on NotificationGroupType {
  /// A group containing notifications of type notificationTypeNewCall
  NotificationGroupTypeCalls? get notificationGroupTypeCalls {
    if (this is NotificationGroupTypeCalls) {
      return this as NotificationGroupTypeCalls;
    }
    return null;
  }

  /// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with unread mentions of the current user, replies to their messages, or a pinned message
  NotificationGroupTypeMentions? get notificationGroupTypeMentions {
    if (this is NotificationGroupTypeMentions) {
      return this as NotificationGroupTypeMentions;
    }
    return null;
  }

  /// A group containing a notification of type notificationTypeNewSecretChat
  NotificationGroupTypeSecretChat? get notificationGroupTypeSecretChat {
    if (this is NotificationGroupTypeSecretChat) {
      return this as NotificationGroupTypeSecretChat;
    }
    return null;
  }

  /// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with ordinary unread messages
  NotificationGroupTypeMessages? get notificationGroupTypeMessages {
    if (this is NotificationGroupTypeMessages) {
      return this as NotificationGroupTypeMessages;
    }
    return null;
  }
}

extension OptionValueExt on OptionValue {
  /// Represents a string option
  OptionValueString? get optionValueString {
    if (this is OptionValueString) {
      return this as OptionValueString;
    }
    return null;
  }

  /// Represents an integer option
  OptionValueInteger? get optionValueInteger {
    if (this is OptionValueInteger) {
      return this as OptionValueInteger;
    }
    return null;
  }

  /// Represents a boolean option
  OptionValueBoolean? get optionValueBoolean {
    if (this is OptionValueBoolean) {
      return this as OptionValueBoolean;
    }
    return null;
  }

  /// Represents an unknown option or an option which has a default value
  OptionValueEmpty? get optionValueEmpty {
    if (this is OptionValueEmpty) {
      return this as OptionValueEmpty;
    }
    return null;
  }
}

extension JsonValueExt on JsonValue {
  /// Represents a JSON object
  JsonValueObject? get jsonValueObject {
    if (this is JsonValueObject) {
      return this as JsonValueObject;
    }
    return null;
  }

  /// Represents a JSON array
  JsonValueArray? get jsonValueArray {
    if (this is JsonValueArray) {
      return this as JsonValueArray;
    }
    return null;
  }

  /// Represents a boolean JSON value
  JsonValueBoolean? get jsonValueBoolean {
    if (this is JsonValueBoolean) {
      return this as JsonValueBoolean;
    }
    return null;
  }

  /// Represents a numeric JSON value
  JsonValueNumber? get jsonValueNumber {
    if (this is JsonValueNumber) {
      return this as JsonValueNumber;
    }
    return null;
  }

  /// Represents a string JSON value
  JsonValueString? get jsonValueString {
    if (this is JsonValueString) {
      return this as JsonValueString;
    }
    return null;
  }

  /// Represents a null JSON value
  JsonValueNull? get jsonValueNull {
    if (this is JsonValueNull) {
      return this as JsonValueNull;
    }
    return null;
  }
}

extension StoryPrivacySettingsExt on StoryPrivacySettings {
  /// The story can be viewed by everyone
  StoryPrivacySettingsEveryone? get storyPrivacySettingsEveryone {
    if (this is StoryPrivacySettingsEveryone) {
      return this as StoryPrivacySettingsEveryone;
    }
    return null;
  }

  /// The story can be viewed by all close friends
  StoryPrivacySettingsCloseFriends? get storyPrivacySettingsCloseFriends {
    if (this is StoryPrivacySettingsCloseFriends) {
      return this as StoryPrivacySettingsCloseFriends;
    }
    return null;
  }

  /// The story can be viewed by all contacts except chosen users
  StoryPrivacySettingsContacts? get storyPrivacySettingsContacts {
    if (this is StoryPrivacySettingsContacts) {
      return this as StoryPrivacySettingsContacts;
    }
    return null;
  }

  /// The story can be viewed by certain specified users
  StoryPrivacySettingsSelectedUsers? get storyPrivacySettingsSelectedUsers {
    if (this is StoryPrivacySettingsSelectedUsers) {
      return this as StoryPrivacySettingsSelectedUsers;
    }
    return null;
  }
}

extension UserPrivacySettingRuleExt on UserPrivacySettingRule {
  /// A rule to restrict all members of specified basic groups and supergroups from doing something
  UserPrivacySettingRuleRestrictChatMembers?
      get userPrivacySettingRuleRestrictChatMembers {
    if (this is UserPrivacySettingRuleRestrictChatMembers) {
      return this as UserPrivacySettingRuleRestrictChatMembers;
    }
    return null;
  }

  /// A rule to allow all members of certain specified basic groups and supergroups to doing something
  UserPrivacySettingRuleAllowChatMembers?
      get userPrivacySettingRuleAllowChatMembers {
    if (this is UserPrivacySettingRuleAllowChatMembers) {
      return this as UserPrivacySettingRuleAllowChatMembers;
    }
    return null;
  }

  /// A rule to restrict all specified users from doing something
  UserPrivacySettingRuleRestrictUsers? get userPrivacySettingRuleRestrictUsers {
    if (this is UserPrivacySettingRuleRestrictUsers) {
      return this as UserPrivacySettingRuleRestrictUsers;
    }
    return null;
  }

  /// A rule to restrict all users from doing something
  UserPrivacySettingRuleRestrictAll? get userPrivacySettingRuleRestrictAll {
    if (this is UserPrivacySettingRuleRestrictAll) {
      return this as UserPrivacySettingRuleRestrictAll;
    }
    return null;
  }

  /// A rule to allow all users to do something
  UserPrivacySettingRuleAllowAll? get userPrivacySettingRuleAllowAll {
    if (this is UserPrivacySettingRuleAllowAll) {
      return this as UserPrivacySettingRuleAllowAll;
    }
    return null;
  }

  /// A rule to allow all contacts of the user to do something
  UserPrivacySettingRuleAllowContacts? get userPrivacySettingRuleAllowContacts {
    if (this is UserPrivacySettingRuleAllowContacts) {
      return this as UserPrivacySettingRuleAllowContacts;
    }
    return null;
  }

  /// A rule to restrict all contacts of the user from doing something
  UserPrivacySettingRuleRestrictContacts?
      get userPrivacySettingRuleRestrictContacts {
    if (this is UserPrivacySettingRuleRestrictContacts) {
      return this as UserPrivacySettingRuleRestrictContacts;
    }
    return null;
  }

  /// A rule to allow certain specified users to do something
  UserPrivacySettingRuleAllowUsers? get userPrivacySettingRuleAllowUsers {
    if (this is UserPrivacySettingRuleAllowUsers) {
      return this as UserPrivacySettingRuleAllowUsers;
    }
    return null;
  }
}

extension UserPrivacySettingExt on UserPrivacySetting {
  /// A privacy setting for managing whether the user can be called
  UserPrivacySettingAllowCalls? get userPrivacySettingAllowCalls {
    if (this is UserPrivacySettingAllowCalls) {
      return this as UserPrivacySettingAllowCalls;
    }
    return null;
  }

  /// A privacy setting for managing whether the user's profile photo is visible
  UserPrivacySettingShowProfilePhoto? get userPrivacySettingShowProfilePhoto {
    if (this is UserPrivacySettingShowProfilePhoto) {
      return this as UserPrivacySettingShowProfilePhoto;
    }
    return null;
  }

  /// A privacy setting for managing whether a link to the user's account is included in forwarded messages
  UserPrivacySettingShowLinkInForwardedMessages?
      get userPrivacySettingShowLinkInForwardedMessages {
    if (this is UserPrivacySettingShowLinkInForwardedMessages) {
      return this as UserPrivacySettingShowLinkInForwardedMessages;
    }
    return null;
  }

  /// A privacy setting for managing whether the user's online status is visible
  UserPrivacySettingShowStatus? get userPrivacySettingShowStatus {
    if (this is UserPrivacySettingShowStatus) {
      return this as UserPrivacySettingShowStatus;
    }
    return null;
  }

  /// A privacy setting for managing whether peer-to-peer connections can be used for calls
  UserPrivacySettingAllowPeerToPeerCalls?
      get userPrivacySettingAllowPeerToPeerCalls {
    if (this is UserPrivacySettingAllowPeerToPeerCalls) {
      return this as UserPrivacySettingAllowPeerToPeerCalls;
    }
    return null;
  }

  /// A privacy setting for managing whether the user can be found by their phone number. Checked only if the phone number is not known to the other user. Can be set only to "Allow contacts" or "Allow all"
  UserPrivacySettingAllowFindingByPhoneNumber?
      get userPrivacySettingAllowFindingByPhoneNumber {
    if (this is UserPrivacySettingAllowFindingByPhoneNumber) {
      return this as UserPrivacySettingAllowFindingByPhoneNumber;
    }
    return null;
  }

  /// A privacy setting for managing whether the user's phone number is visible
  UserPrivacySettingShowPhoneNumber? get userPrivacySettingShowPhoneNumber {
    if (this is UserPrivacySettingShowPhoneNumber) {
      return this as UserPrivacySettingShowPhoneNumber;
    }
    return null;
  }

  /// A privacy setting for managing whether the user can be invited to chats
  UserPrivacySettingAllowChatInvites? get userPrivacySettingAllowChatInvites {
    if (this is UserPrivacySettingAllowChatInvites) {
      return this as UserPrivacySettingAllowChatInvites;
    }
    return null;
  }

  /// A privacy setting for managing whether the user's bio is visible
  UserPrivacySettingShowBio? get userPrivacySettingShowBio {
    if (this is UserPrivacySettingShowBio) {
      return this as UserPrivacySettingShowBio;
    }
    return null;
  }

  /// A privacy setting for managing whether the user can receive voice and video messages in private chats
  UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages?
      get userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages {
    if (this is UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages) {
      return this as UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages;
    }
    return null;
  }
}

extension SessionTypeExt on SessionType {
  /// The session is running on the Edge browser
  SessionTypeEdge? get sessionTypeEdge {
    if (this is SessionTypeEdge) {
      return this as SessionTypeEdge;
    }
    return null;
  }

  /// The session is running on an Ubuntu device
  SessionTypeUbuntu? get sessionTypeUbuntu {
    if (this is SessionTypeUbuntu) {
      return this as SessionTypeUbuntu;
    }
    return null;
  }

  /// The session is running on a Windows device
  SessionTypeWindows? get sessionTypeWindows {
    if (this is SessionTypeWindows) {
      return this as SessionTypeWindows;
    }
    return null;
  }

  /// The session is running on an iPad device
  SessionTypeIpad? get sessionTypeIpad {
    if (this is SessionTypeIpad) {
      return this as SessionTypeIpad;
    }
    return null;
  }

  /// The session is running on the Brave browser
  SessionTypeBrave? get sessionTypeBrave {
    if (this is SessionTypeBrave) {
      return this as SessionTypeBrave;
    }
    return null;
  }

  /// The session is running on an iPhone device
  SessionTypeIphone? get sessionTypeIphone {
    if (this is SessionTypeIphone) {
      return this as SessionTypeIphone;
    }
    return null;
  }

  /// The session is running on a Mac device
  SessionTypeMac? get sessionTypeMac {
    if (this is SessionTypeMac) {
      return this as SessionTypeMac;
    }
    return null;
  }

  /// The session is running on an unknown type of device
  SessionTypeUnknown? get sessionTypeUnknown {
    if (this is SessionTypeUnknown) {
      return this as SessionTypeUnknown;
    }
    return null;
  }

  /// The session is running on the Safari browser
  SessionTypeSafari? get sessionTypeSafari {
    if (this is SessionTypeSafari) {
      return this as SessionTypeSafari;
    }
    return null;
  }

  /// The session is running on a Linux device
  SessionTypeLinux? get sessionTypeLinux {
    if (this is SessionTypeLinux) {
      return this as SessionTypeLinux;
    }
    return null;
  }

  /// The session is running on the Opera browser
  SessionTypeOpera? get sessionTypeOpera {
    if (this is SessionTypeOpera) {
      return this as SessionTypeOpera;
    }
    return null;
  }

  /// The session is running on an Android device
  SessionTypeAndroid? get sessionTypeAndroid {
    if (this is SessionTypeAndroid) {
      return this as SessionTypeAndroid;
    }
    return null;
  }

  /// The session is running on an Xbox console
  SessionTypeXbox? get sessionTypeXbox {
    if (this is SessionTypeXbox) {
      return this as SessionTypeXbox;
    }
    return null;
  }

  /// The session is running on the Firefox browser
  SessionTypeFirefox? get sessionTypeFirefox {
    if (this is SessionTypeFirefox) {
      return this as SessionTypeFirefox;
    }
    return null;
  }

  /// The session is running on the Vivaldi browser
  SessionTypeVivaldi? get sessionTypeVivaldi {
    if (this is SessionTypeVivaldi) {
      return this as SessionTypeVivaldi;
    }
    return null;
  }

  /// The session is running on the Chrome browser
  SessionTypeChrome? get sessionTypeChrome {
    if (this is SessionTypeChrome) {
      return this as SessionTypeChrome;
    }
    return null;
  }

  /// The session is running on a generic Apple device
  SessionTypeApple? get sessionTypeApple {
    if (this is SessionTypeApple) {
      return this as SessionTypeApple;
    }
    return null;
  }
}

extension ReportReasonExt on ReportReason {
  /// The location-based chat is unrelated to its stated location
  ReportReasonUnrelatedLocation? get reportReasonUnrelatedLocation {
    if (this is ReportReasonUnrelatedLocation) {
      return this as ReportReasonUnrelatedLocation;
    }
    return null;
  }

  /// The chat contains spam messages
  ReportReasonSpam? get reportReasonSpam {
    if (this is ReportReasonSpam) {
      return this as ReportReasonSpam;
    }
    return null;
  }

  /// The chat represents a fake account
  ReportReasonFake? get reportReasonFake {
    if (this is ReportReasonFake) {
      return this as ReportReasonFake;
    }
    return null;
  }

  /// The chat promotes violence
  ReportReasonViolence? get reportReasonViolence {
    if (this is ReportReasonViolence) {
      return this as ReportReasonViolence;
    }
    return null;
  }

  /// The chat has illegal drugs related content
  ReportReasonIllegalDrugs? get reportReasonIllegalDrugs {
    if (this is ReportReasonIllegalDrugs) {
      return this as ReportReasonIllegalDrugs;
    }
    return null;
  }

  /// The chat has child abuse related content
  ReportReasonChildAbuse? get reportReasonChildAbuse {
    if (this is ReportReasonChildAbuse) {
      return this as ReportReasonChildAbuse;
    }
    return null;
  }

  /// The chat contains messages with personal details
  ReportReasonPersonalDetails? get reportReasonPersonalDetails {
    if (this is ReportReasonPersonalDetails) {
      return this as ReportReasonPersonalDetails;
    }
    return null;
  }

  /// The chat contains pornographic messages
  ReportReasonPornography? get reportReasonPornography {
    if (this is ReportReasonPornography) {
      return this as ReportReasonPornography;
    }
    return null;
  }

  /// A custom reason provided by the user
  ReportReasonCustom? get reportReasonCustom {
    if (this is ReportReasonCustom) {
      return this as ReportReasonCustom;
    }
    return null;
  }

  /// The chat contains copyrighted content
  ReportReasonCopyright? get reportReasonCopyright {
    if (this is ReportReasonCopyright) {
      return this as ReportReasonCopyright;
    }
    return null;
  }
}

extension TargetChatExt on TargetChat {
  /// The chat needs to be open with the provided internal link
  TargetChatInternalLink? get targetChatInternalLink {
    if (this is TargetChatInternalLink) {
      return this as TargetChatInternalLink;
    }
    return null;
  }

  /// The chat needs to be chosen by the user among chats of the specified types
  TargetChatChosen? get targetChatChosen {
    if (this is TargetChatChosen) {
      return this as TargetChatChosen;
    }
    return null;
  }

  /// The currently opened chat needs to be kept
  TargetChatCurrent? get targetChatCurrent {
    if (this is TargetChatCurrent) {
      return this as TargetChatCurrent;
    }
    return null;
  }
}

extension InternalLinkTypeExt on InternalLinkType {
  /// The link is a link to a game. Call searchPublicChat with the given bot username, check that the user is a bot, ask the current user to select a chat to send the game, and then call sendMessage with inputMessageGame
  InternalLinkTypeGame? get internalLinkTypeGame {
    if (this is InternalLinkTypeGame) {
      return this as InternalLinkTypeGame;
    }
    return null;
  }

  /// The link is a link to the folder section of the app settings
  InternalLinkTypeChatFolderSettings? get internalLinkTypeChatFolderSettings {
    if (this is InternalLinkTypeChatFolderSettings) {
      return this as InternalLinkTypeChatFolderSettings;
    }
    return null;
  }

  /// The link is a link to a story. Call searchPublicChat with the given sender username, then call getStory with the received chat identifier and the given story identifier
  InternalLinkTypeStory? get internalLinkTypeStory {
    if (this is InternalLinkTypeStory) {
      return this as InternalLinkTypeStory;
    }
    return null;
  }

  /// The link is a link to the change phone number section of the app
  InternalLinkTypeChangePhoneNumber? get internalLinkTypeChangePhoneNumber {
    if (this is InternalLinkTypeChangePhoneNumber) {
      return this as InternalLinkTypeChangePhoneNumber;
    }
    return null;
  }

  /// The link can be used to login the current user on another device, but it must be scanned from QR-code using in-app camera. An alert similar to
  InternalLinkTypeQrCodeAuthentication?
      get internalLinkTypeQrCodeAuthentication {
    if (this is InternalLinkTypeQrCodeAuthentication) {
      return this as InternalLinkTypeQrCodeAuthentication;
    }
    return null;
  }

  /// The link is a link to a Telegram bot, which is supposed to be added to a group chat. Call searchPublicChat with the given bot username, check that the user is a bot and can be added to groups,
  InternalLinkTypeBotStartInGroup? get internalLinkTypeBotStartInGroup {
    if (this is InternalLinkTypeBotStartInGroup) {
      return this as InternalLinkTypeBotStartInGroup;
    }
    return null;
  }

  /// The link can be used to confirm ownership of a phone number to prevent account deletion. Call sendPhoneNumberConfirmationCode with the given hash and phone number to process the link
  InternalLinkTypePhoneNumberConfirmation?
      get internalLinkTypePhoneNumberConfirmation {
    if (this is InternalLinkTypePhoneNumberConfirmation) {
      return this as InternalLinkTypePhoneNumberConfirmation;
    }
    return null;
  }

  /// The link contains a message draft text. A share screen needs to be shown to the user, then the chosen chat must be opened and the text is added to the input field
  InternalLinkTypeMessageDraft? get internalLinkTypeMessageDraft {
    if (this is InternalLinkTypeMessageDraft) {
      return this as InternalLinkTypeMessageDraft;
    }
    return null;
  }

  /// The link is a link to the theme section of the app settings
  InternalLinkTypeThemeSettings? get internalLinkTypeThemeSettings {
    if (this is InternalLinkTypeThemeSettings) {
      return this as InternalLinkTypeThemeSettings;
    }
    return null;
  }

  /// The link is a link to an unsupported proxy. An alert can be shown to the user
  InternalLinkTypeUnsupportedProxy? get internalLinkTypeUnsupportedProxy {
    if (this is InternalLinkTypeUnsupportedProxy) {
      return this as InternalLinkTypeUnsupportedProxy;
    }
    return null;
  }

  /// The link is an invite link to a chat folder. Call checkChatFolderInviteLink with the given invite link to process the link
  InternalLinkTypeChatFolderInvite? get internalLinkTypeChatFolderInvite {
    if (this is InternalLinkTypeChatFolderInvite) {
      return this as InternalLinkTypeChatFolderInvite;
    }
    return null;
  }

  /// The link is a link to boost a Telegram chat. Call getChatBoostLinkInfo with the given URL to process the link.
  InternalLinkTypeChatBoost? get internalLinkTypeChatBoost {
    if (this is InternalLinkTypeChatBoost) {
      return this as InternalLinkTypeChatBoost;
    }
    return null;
  }

  /// The link is a link to a video chat. Call searchPublicChat with the given chat username, and then joinGroupCall with the given invite hash to process the link
  InternalLinkTypeVideoChat? get internalLinkTypeVideoChat {
    if (this is InternalLinkTypeVideoChat) {
      return this as InternalLinkTypeVideoChat;
    }
    return null;
  }

  /// The link is a link to a sticker set. Call searchStickerSet with the given sticker set name to process the link and show the sticker set
  InternalLinkTypeStickerSet? get internalLinkTypeStickerSet {
    if (this is InternalLinkTypeStickerSet) {
      return this as InternalLinkTypeStickerSet;
    }
    return null;
  }

  /// The link is a link to the edit profile section of the app settings
  InternalLinkTypeEditProfileSettings? get internalLinkTypeEditProfileSettings {
    if (this is InternalLinkTypeEditProfileSettings) {
      return this as InternalLinkTypeEditProfileSettings;
    }
    return null;
  }

  /// The link is a link to a chat by its username. Call searchPublicChat with the given chat username to process the link
  InternalLinkTypePublicChat? get internalLinkTypePublicChat {
    if (this is InternalLinkTypePublicChat) {
      return this as InternalLinkTypePublicChat;
    }
    return null;
  }

  /// The link is a link to a chat with a Telegram bot. Call searchPublicChat with the given bot username, check that the user is a bot, show START button in the chat with the bot,
  InternalLinkTypeBotStart? get internalLinkTypeBotStart {
    if (this is InternalLinkTypeBotStart) {
      return this as InternalLinkTypeBotStart;
    }
    return null;
  }

  /// The link is a link to a Web App. Call searchPublicChat with the given bot username, check that the user is a bot, then call searchWebApp with the received bot and the given web_app_short_name.
  InternalLinkTypeWebApp? get internalLinkTypeWebApp {
    if (this is InternalLinkTypeWebApp) {
      return this as InternalLinkTypeWebApp;
    }
    return null;
  }

  /// The link is a link to a user by its phone number. Call searchUserByPhoneNumber with the given phone number to process the link
  InternalLinkTypeUserPhoneNumber? get internalLinkTypeUserPhoneNumber {
    if (this is InternalLinkTypeUserPhoneNumber) {
      return this as InternalLinkTypeUserPhoneNumber;
    }
    return null;
  }

  /// The link is a link to a background. Call searchBackground with the given background name to process the link
  InternalLinkTypeBackground? get internalLinkTypeBackground {
    if (this is InternalLinkTypeBackground) {
      return this as InternalLinkTypeBackground;
    }
    return null;
  }

  /// The link is a link to a language pack. Call getLanguagePackInfo with the given language pack identifier to process the link
  InternalLinkTypeLanguagePack? get internalLinkTypeLanguagePack {
    if (this is InternalLinkTypeLanguagePack) {
      return this as InternalLinkTypeLanguagePack;
    }
    return null;
  }

  /// The link is a link to a user by a temporary token. Call searchUserByToken with the given token to process the link
  InternalLinkTypeUserToken? get internalLinkTypeUserToken {
    if (this is InternalLinkTypeUserToken) {
      return this as InternalLinkTypeUserToken;
    }
    return null;
  }

  /// The link is a link to a theme. TDLib has no theme support yet
  InternalLinkTypeTheme? get internalLinkTypeTheme {
    if (this is InternalLinkTypeTheme) {
      return this as InternalLinkTypeTheme;
    }
    return null;
  }

  /// The link is an unknown tg: link. Call getDeepLinkInfo to process the link
  InternalLinkTypeUnknownDeepLink? get internalLinkTypeUnknownDeepLink {
    if (this is InternalLinkTypeUnknownDeepLink) {
      return this as InternalLinkTypeUnknownDeepLink;
    }
    return null;
  }

  /// The link is a link to a bot, which can be installed to the side menu. Call searchPublicChat with the given bot username, check that the user is a bot and can be added to attachment menu.
  InternalLinkTypeSideMenuBot? get internalLinkTypeSideMenuBot {
    if (this is InternalLinkTypeSideMenuBot) {
      return this as InternalLinkTypeSideMenuBot;
    }
    return null;
  }

  /// The link contains an authentication code. Call checkAuthenticationCode with the code if the current authorization state is authorizationStateWaitCode
  InternalLinkTypeAuthenticationCode? get internalLinkTypeAuthenticationCode {
    if (this is InternalLinkTypeAuthenticationCode) {
      return this as InternalLinkTypeAuthenticationCode;
    }
    return null;
  }

  /// The link must be opened in an Instant View. Call getWebPageInstantView with the given URL to process the link
  InternalLinkTypeInstantView? get internalLinkTypeInstantView {
    if (this is InternalLinkTypeInstantView) {
      return this as InternalLinkTypeInstantView;
    }
    return null;
  }

  /// The link is a link to a Telegram bot, which is supposed to be added to a channel chat as an administrator. Call searchPublicChat with the given bot username and check that the user is a bot,
  InternalLinkTypeBotAddToChannel? get internalLinkTypeBotAddToChannel {
    if (this is InternalLinkTypeBotAddToChannel) {
      return this as InternalLinkTypeBotAddToChannel;
    }
    return null;
  }

  /// The link is a link to the privacy and security section of the app settings
  InternalLinkTypePrivacyAndSecuritySettings?
      get internalLinkTypePrivacyAndSecuritySettings {
    if (this is InternalLinkTypePrivacyAndSecuritySettings) {
      return this as InternalLinkTypePrivacyAndSecuritySettings;
    }
    return null;
  }

  /// The link is a link to an invoice. Call getPaymentForm with the given invoice name to process the link
  InternalLinkTypeInvoice? get internalLinkTypeInvoice {
    if (this is InternalLinkTypeInvoice) {
      return this as InternalLinkTypeInvoice;
    }
    return null;
  }

  /// The link is a link to application settings
  InternalLinkTypeSettings? get internalLinkTypeSettings {
    if (this is InternalLinkTypeSettings) {
      return this as InternalLinkTypeSettings;
    }
    return null;
  }

  /// The link is a link to an attachment menu bot to be opened in the specified or a chosen chat. Process given target_chat to open the chat.
  InternalLinkTypeAttachmentMenuBot? get internalLinkTypeAttachmentMenuBot {
    if (this is InternalLinkTypeAttachmentMenuBot) {
      return this as InternalLinkTypeAttachmentMenuBot;
    }
    return null;
  }

  /// The link is a chat invite link. Call checkChatInviteLink with the given invite link to process the link
  InternalLinkTypeChatInvite? get internalLinkTypeChatInvite {
    if (this is InternalLinkTypeChatInvite) {
      return this as InternalLinkTypeChatInvite;
    }
    return null;
  }

  /// The link is a link to the default message auto-delete timer settings section of the app settings
  InternalLinkTypeDefaultMessageAutoDeleteTimerSettings?
      get internalLinkTypeDefaultMessageAutoDeleteTimerSettings {
    if (this is InternalLinkTypeDefaultMessageAutoDeleteTimerSettings) {
      return this as InternalLinkTypeDefaultMessageAutoDeleteTimerSettings;
    }
    return null;
  }

  /// The link contains a request of Telegram passport data. Call getPassportAuthorizationForm with the given parameters to process the link if the link was received from outside of the application; otherwise, ignore it
  InternalLinkTypePassportDataRequest? get internalLinkTypePassportDataRequest {
    if (this is InternalLinkTypePassportDataRequest) {
      return this as InternalLinkTypePassportDataRequest;
    }
    return null;
  }

  /// The link is a link to the language section of the app settings
  InternalLinkTypeLanguageSettings? get internalLinkTypeLanguageSettings {
    if (this is InternalLinkTypeLanguageSettings) {
      return this as InternalLinkTypeLanguageSettings;
    }
    return null;
  }

  /// The link forces restore of App Store purchases when opened. For official iOS application only
  InternalLinkTypeRestorePurchases? get internalLinkTypeRestorePurchases {
    if (this is InternalLinkTypeRestorePurchases) {
      return this as InternalLinkTypeRestorePurchases;
    }
    return null;
  }

  /// The link is a link to the Premium features screen of the application from which the user can subscribe to Telegram Premium. Call getPremiumFeatures with the given referrer to process the link
  InternalLinkTypePremiumFeatures? get internalLinkTypePremiumFeatures {
    if (this is InternalLinkTypePremiumFeatures) {
      return this as InternalLinkTypePremiumFeatures;
    }
    return null;
  }

  /// The link is a link to the active sessions section of the application. Use getActiveSessions to handle the link
  InternalLinkTypeActiveSessions? get internalLinkTypeActiveSessions {
    if (this is InternalLinkTypeActiveSessions) {
      return this as InternalLinkTypeActiveSessions;
    }
    return null;
  }

  /// The link is a link to a Telegram message or a forum topic. Call getMessageLinkInfo with the given URL to process the link
  InternalLinkTypeMessage? get internalLinkTypeMessage {
    if (this is InternalLinkTypeMessage) {
      return this as InternalLinkTypeMessage;
    }
    return null;
  }

  /// The link is a link to a proxy. Call addProxy with the given parameters to process the link and add the proxy
  InternalLinkTypeProxy? get internalLinkTypeProxy {
    if (this is InternalLinkTypeProxy) {
      return this as InternalLinkTypeProxy;
    }
    return null;
  }
}

extension BlockListExt on BlockList {
  /// The block list that disallows viewing of stories of the current user
  BlockListStories? get blockListStories {
    if (this is BlockListStories) {
      return this as BlockListStories;
    }
    return null;
  }

  /// The main block list that disallows writing messages to the current user, receiving their status and photo, viewing of stories, and some other actions
  BlockListMain? get blockListMain {
    if (this is BlockListMain) {
      return this as BlockListMain;
    }
    return null;
  }
}

extension FileTypeExt on FileType {
  /// The file is a document
  FileTypeDocument? get fileTypeDocument {
    if (this is FileTypeDocument) {
      return this as FileTypeDocument;
    }
    return null;
  }

  /// The file is a thumbnail of another file
  FileTypeThumbnail? get fileTypeThumbnail {
    if (this is FileTypeThumbnail) {
      return this as FileTypeThumbnail;
    }
    return null;
  }

  /// The file is a thumbnail of a file from a secret chat
  FileTypeSecretThumbnail? get fileTypeSecretThumbnail {
    if (this is FileTypeSecretThumbnail) {
      return this as FileTypeSecretThumbnail;
    }
    return null;
  }

  /// The file is an audio file
  FileTypeAudio? get fileTypeAudio {
    if (this is FileTypeAudio) {
      return this as FileTypeAudio;
    }
    return null;
  }

  /// The file was sent to a secret chat (the file type is not known to the server)
  FileTypeSecret? get fileTypeSecret {
    if (this is FileTypeSecret) {
      return this as FileTypeSecret;
    }
    return null;
  }

  /// The file is a wallpaper or a background pattern
  FileTypeWallpaper? get fileTypeWallpaper {
    if (this is FileTypeWallpaper) {
      return this as FileTypeWallpaper;
    }
    return null;
  }

  /// The file type is not yet known
  FileTypeUnknown? get fileTypeUnknown {
    if (this is FileTypeUnknown) {
      return this as FileTypeUnknown;
    }
    return null;
  }

  /// The file is a sticker
  FileTypeSticker? get fileTypeSticker {
    if (this is FileTypeSticker) {
      return this as FileTypeSticker;
    }
    return null;
  }

  /// The file is a profile photo
  FileTypeProfilePhoto? get fileTypeProfilePhoto {
    if (this is FileTypeProfilePhoto) {
      return this as FileTypeProfilePhoto;
    }
    return null;
  }

  /// The file is a notification sound
  FileTypeNotificationSound? get fileTypeNotificationSound {
    if (this is FileTypeNotificationSound) {
      return this as FileTypeNotificationSound;
    }
    return null;
  }

  /// The file is a video note
  FileTypeVideoNote? get fileTypeVideoNote {
    if (this is FileTypeVideoNote) {
      return this as FileTypeVideoNote;
    }
    return null;
  }

  /// The file is an animation
  FileTypeAnimation? get fileTypeAnimation {
    if (this is FileTypeAnimation) {
      return this as FileTypeAnimation;
    }
    return null;
  }

  /// The file is a video published as a story
  FileTypeVideoStory? get fileTypeVideoStory {
    if (this is FileTypeVideoStory) {
      return this as FileTypeVideoStory;
    }
    return null;
  }

  /// The file is a video
  FileTypeVideo? get fileTypeVideo {
    if (this is FileTypeVideo) {
      return this as FileTypeVideo;
    }
    return null;
  }

  /// The file is a photo
  FileTypePhoto? get fileTypePhoto {
    if (this is FileTypePhoto) {
      return this as FileTypePhoto;
    }
    return null;
  }

  /// The file is a file from Secure storage used for storing Telegram Passport files
  FileTypeSecure? get fileTypeSecure {
    if (this is FileTypeSecure) {
      return this as FileTypeSecure;
    }
    return null;
  }

  /// The data is not a file
  FileTypeNone? get fileTypeNone {
    if (this is FileTypeNone) {
      return this as FileTypeNone;
    }
    return null;
  }

  /// The file is a photo published as a story
  FileTypePhotoStory? get fileTypePhotoStory {
    if (this is FileTypePhotoStory) {
      return this as FileTypePhotoStory;
    }
    return null;
  }

  /// The file is a voice note
  FileTypeVoiceNote? get fileTypeVoiceNote {
    if (this is FileTypeVoiceNote) {
      return this as FileTypeVoiceNote;
    }
    return null;
  }
}

extension NetworkTypeExt on NetworkType {
  /// A different network type (e.g., Ethernet network)
  NetworkTypeOther? get networkTypeOther {
    if (this is NetworkTypeOther) {
      return this as NetworkTypeOther;
    }
    return null;
  }

  /// A mobile network
  NetworkTypeMobile? get networkTypeMobile {
    if (this is NetworkTypeMobile) {
      return this as NetworkTypeMobile;
    }
    return null;
  }

  /// A Wi-Fi network
  NetworkTypeWiFi? get networkTypeWiFi {
    if (this is NetworkTypeWiFi) {
      return this as NetworkTypeWiFi;
    }
    return null;
  }

  /// The network is not available
  NetworkTypeNone? get networkTypeNone {
    if (this is NetworkTypeNone) {
      return this as NetworkTypeNone;
    }
    return null;
  }

  /// A mobile roaming network
  NetworkTypeMobileRoaming? get networkTypeMobileRoaming {
    if (this is NetworkTypeMobileRoaming) {
      return this as NetworkTypeMobileRoaming;
    }
    return null;
  }
}

extension NetworkStatisticsEntryExt on NetworkStatisticsEntry {
  /// Contains information about the total amount of data that was used for calls
  NetworkStatisticsEntryCall? get networkStatisticsEntryCall {
    if (this is NetworkStatisticsEntryCall) {
      return this as NetworkStatisticsEntryCall;
    }
    return null;
  }

  /// Contains information about the total amount of data that was used to send and receive files
  NetworkStatisticsEntryFile? get networkStatisticsEntryFile {
    if (this is NetworkStatisticsEntryFile) {
      return this as NetworkStatisticsEntryFile;
    }
    return null;
  }
}

extension AutosaveSettingsScopeExt on AutosaveSettingsScope {
  /// Autosave settings applied to all basic group and supergroup chats without chat-specific settings
  AutosaveSettingsScopeGroupChats? get autosaveSettingsScopeGroupChats {
    if (this is AutosaveSettingsScopeGroupChats) {
      return this as AutosaveSettingsScopeGroupChats;
    }
    return null;
  }

  /// Autosave settings applied to all channel chats without chat-specific settings
  AutosaveSettingsScopeChannelChats? get autosaveSettingsScopeChannelChats {
    if (this is AutosaveSettingsScopeChannelChats) {
      return this as AutosaveSettingsScopeChannelChats;
    }
    return null;
  }

  /// Autosave settings applied to a chat
  AutosaveSettingsScopeChat? get autosaveSettingsScopeChat {
    if (this is AutosaveSettingsScopeChat) {
      return this as AutosaveSettingsScopeChat;
    }
    return null;
  }

  /// Autosave settings applied to all private chats without chat-specific settings
  AutosaveSettingsScopePrivateChats? get autosaveSettingsScopePrivateChats {
    if (this is AutosaveSettingsScopePrivateChats) {
      return this as AutosaveSettingsScopePrivateChats;
    }
    return null;
  }
}

extension ConnectionStateExt on ConnectionState {
  /// Currently establishing a connection with a proxy server
  ConnectionStateConnectingToProxy? get connectionStateConnectingToProxy {
    if (this is ConnectionStateConnectingToProxy) {
      return this as ConnectionStateConnectingToProxy;
    }
    return null;
  }

  /// Downloading data received while the application was offline
  ConnectionStateUpdating? get connectionStateUpdating {
    if (this is ConnectionStateUpdating) {
      return this as ConnectionStateUpdating;
    }
    return null;
  }

  /// There is a working connection to the Telegram servers
  ConnectionStateReady? get connectionStateReady {
    if (this is ConnectionStateReady) {
      return this as ConnectionStateReady;
    }
    return null;
  }

  /// Currently waiting for the network to become available. Use setNetworkType to change the available network type
  ConnectionStateWaitingForNetwork? get connectionStateWaitingForNetwork {
    if (this is ConnectionStateWaitingForNetwork) {
      return this as ConnectionStateWaitingForNetwork;
    }
    return null;
  }

  /// Currently establishing a connection to the Telegram servers
  ConnectionStateConnecting? get connectionStateConnecting {
    if (this is ConnectionStateConnecting) {
      return this as ConnectionStateConnecting;
    }
    return null;
  }
}

extension TopChatCategoryExt on TopChatCategory {
  /// A category containing frequently used chats used to forward messages
  TopChatCategoryForwardChats? get topChatCategoryForwardChats {
    if (this is TopChatCategoryForwardChats) {
      return this as TopChatCategoryForwardChats;
    }
    return null;
  }

  /// A category containing frequently used channels
  TopChatCategoryChannels? get topChatCategoryChannels {
    if (this is TopChatCategoryChannels) {
      return this as TopChatCategoryChannels;
    }
    return null;
  }

  /// A category containing frequently used private chats with non-bot users
  TopChatCategoryUsers? get topChatCategoryUsers {
    if (this is TopChatCategoryUsers) {
      return this as TopChatCategoryUsers;
    }
    return null;
  }

  /// A category containing frequently used chats used for calls
  TopChatCategoryCalls? get topChatCategoryCalls {
    if (this is TopChatCategoryCalls) {
      return this as TopChatCategoryCalls;
    }
    return null;
  }

  /// A category containing frequently used chats with inline bots sorted by their usage in inline mode
  TopChatCategoryInlineBots? get topChatCategoryInlineBots {
    if (this is TopChatCategoryInlineBots) {
      return this as TopChatCategoryInlineBots;
    }
    return null;
  }

  /// A category containing frequently used private chats with bot users
  TopChatCategoryBots? get topChatCategoryBots {
    if (this is TopChatCategoryBots) {
      return this as TopChatCategoryBots;
    }
    return null;
  }

  /// A category containing frequently used basic groups and supergroups
  TopChatCategoryGroups? get topChatCategoryGroups {
    if (this is TopChatCategoryGroups) {
      return this as TopChatCategoryGroups;
    }
    return null;
  }
}

extension TMeUrlTypeExt on TMeUrlType {
  /// A URL linking to a sticker set
  TMeUrlTypeStickerSet? get tMeUrlTypeStickerSet {
    if (this is TMeUrlTypeStickerSet) {
      return this as TMeUrlTypeStickerSet;
    }
    return null;
  }

  /// A chat invite link
  TMeUrlTypeChatInvite? get tMeUrlTypeChatInvite {
    if (this is TMeUrlTypeChatInvite) {
      return this as TMeUrlTypeChatInvite;
    }
    return null;
  }

  /// A URL linking to a user
  TMeUrlTypeUser? get tMeUrlTypeUser {
    if (this is TMeUrlTypeUser) {
      return this as TMeUrlTypeUser;
    }
    return null;
  }

  /// A URL linking to a public supergroup or channel
  TMeUrlTypeSupergroup? get tMeUrlTypeSupergroup {
    if (this is TMeUrlTypeSupergroup) {
      return this as TMeUrlTypeSupergroup;
    }
    return null;
  }
}

extension SuggestedActionExt on SuggestedAction {
  /// Suggests the user to upgrade the Premium subscription from monthly payments to annual payments
  SuggestedActionUpgradePremium? get suggestedActionUpgradePremium {
    if (this is SuggestedActionUpgradePremium) {
      return this as SuggestedActionUpgradePremium;
    }
    return null;
  }

  /// Suggests the user to check whether authorization phone number is correct and change the phone number if it is inaccessible
  SuggestedActionCheckPhoneNumber? get suggestedActionCheckPhoneNumber {
    if (this is SuggestedActionCheckPhoneNumber) {
      return this as SuggestedActionCheckPhoneNumber;
    }
    return null;
  }

  /// Suggests the user to enable archive_and_mute_new_chats_from_unknown_users setting in archiveChatListSettings
  SuggestedActionEnableArchiveAndMuteNewChats?
      get suggestedActionEnableArchiveAndMuteNewChats {
    if (this is SuggestedActionEnableArchiveAndMuteNewChats) {
      return this as SuggestedActionEnableArchiveAndMuteNewChats;
    }
    return null;
  }

  /// Suggests the user to convert specified supergroup to a broadcast group
  SuggestedActionConvertToBroadcastGroup?
      get suggestedActionConvertToBroadcastGroup {
    if (this is SuggestedActionConvertToBroadcastGroup) {
      return this as SuggestedActionConvertToBroadcastGroup;
    }
    return null;
  }

  /// Suggests the user to view a hint about the meaning of one and two check marks on sent messages
  SuggestedActionViewChecksHint? get suggestedActionViewChecksHint {
    if (this is SuggestedActionViewChecksHint) {
      return this as SuggestedActionViewChecksHint;
    }
    return null;
  }

  /// Suggests the user to subscribe to the Premium subscription with annual payments
  SuggestedActionSubscribeToAnnualPremium?
      get suggestedActionSubscribeToAnnualPremium {
    if (this is SuggestedActionSubscribeToAnnualPremium) {
      return this as SuggestedActionSubscribeToAnnualPremium;
    }
    return null;
  }

  /// Suggests the user to check whether they still remember their 2-step verification password
  SuggestedActionCheckPassword? get suggestedActionCheckPassword {
    if (this is SuggestedActionCheckPassword) {
      return this as SuggestedActionCheckPassword;
    }
    return null;
  }

  /// Suggests the user to restore a recently expired Premium subscription
  SuggestedActionRestorePremium? get suggestedActionRestorePremium {
    if (this is SuggestedActionRestorePremium) {
      return this as SuggestedActionRestorePremium;
    }
    return null;
  }

  /// Suggests the user to set a 2-step verification password to be able to log in again
  SuggestedActionSetPassword? get suggestedActionSetPassword {
    if (this is SuggestedActionSetPassword) {
      return this as SuggestedActionSetPassword;
    }
    return null;
  }
}

extension TextParseModeExt on TextParseMode {
  /// The text uses Markdown-style formatting
  TextParseModeMarkdown? get textParseModeMarkdown {
    if (this is TextParseModeMarkdown) {
      return this as TextParseModeMarkdown;
    }
    return null;
  }

  /// The text uses HTML-style formatting. The same as Telegram Bot API "HTML" parse mode
  TextParseModeHTML? get textParseModeHTML {
    if (this is TextParseModeHTML) {
      return this as TextParseModeHTML;
    }
    return null;
  }
}

extension ProxyTypeExt on ProxyType {
  /// A HTTP transparent proxy server
  ProxyTypeHttp? get proxyTypeHttp {
    if (this is ProxyTypeHttp) {
      return this as ProxyTypeHttp;
    }
    return null;
  }

  /// A SOCKS5 proxy server
  ProxyTypeSocks5? get proxyTypeSocks5 {
    if (this is ProxyTypeSocks5) {
      return this as ProxyTypeSocks5;
    }
    return null;
  }

  /// An MTProto proxy server
  ProxyTypeMtproto? get proxyTypeMtproto {
    if (this is ProxyTypeMtproto) {
      return this as ProxyTypeMtproto;
    }
    return null;
  }
}

extension StatisticalGraphExt on StatisticalGraph {
  /// A graph data
  StatisticalGraphData? get statisticalGraphData {
    if (this is StatisticalGraphData) {
      return this as StatisticalGraphData;
    }
    return null;
  }

  /// The graph data to be asynchronously loaded through getStatisticalGraph
  StatisticalGraphAsync? get statisticalGraphAsync {
    if (this is StatisticalGraphAsync) {
      return this as StatisticalGraphAsync;
    }
    return null;
  }

  /// An error message to be shown to the user instead of the graph
  StatisticalGraphError? get statisticalGraphError {
    if (this is StatisticalGraphError) {
      return this as StatisticalGraphError;
    }
    return null;
  }
}

extension ChatStatisticsExt on ChatStatistics {
  /// A detailed statistics about a channel chat
  ChatStatisticsChannel? get chatStatisticsChannel {
    if (this is ChatStatisticsChannel) {
      return this as ChatStatisticsChannel;
    }
    return null;
  }

  /// A detailed statistics about a supergroup chat
  ChatStatisticsSupergroup? get chatStatisticsSupergroup {
    if (this is ChatStatisticsSupergroup) {
      return this as ChatStatisticsSupergroup;
    }
    return null;
  }
}

extension VectorPathCommandExt on VectorPathCommand {
  /// A cubic Bézier curve to a given point
  VectorPathCommandCubicBezierCurve? get vectorPathCommandCubicBezierCurve {
    if (this is VectorPathCommandCubicBezierCurve) {
      return this as VectorPathCommandCubicBezierCurve;
    }
    return null;
  }

  /// A straight line to a given point
  VectorPathCommandLine? get vectorPathCommandLine {
    if (this is VectorPathCommandLine) {
      return this as VectorPathCommandLine;
    }
    return null;
  }
}

extension BotCommandScopeExt on BotCommandScope {
  /// A scope covering all administrators of a chat
  BotCommandScopeChatAdministrators? get botCommandScopeChatAdministrators {
    if (this is BotCommandScopeChatAdministrators) {
      return this as BotCommandScopeChatAdministrators;
    }
    return null;
  }

  /// A scope covering all group and supergroup chat administrators
  BotCommandScopeAllChatAdministrators?
      get botCommandScopeAllChatAdministrators {
    if (this is BotCommandScopeAllChatAdministrators) {
      return this as BotCommandScopeAllChatAdministrators;
    }
    return null;
  }

  /// A scope covering all private chats
  BotCommandScopeAllPrivateChats? get botCommandScopeAllPrivateChats {
    if (this is BotCommandScopeAllPrivateChats) {
      return this as BotCommandScopeAllPrivateChats;
    }
    return null;
  }

  /// A scope covering all group and supergroup chats
  BotCommandScopeAllGroupChats? get botCommandScopeAllGroupChats {
    if (this is BotCommandScopeAllGroupChats) {
      return this as BotCommandScopeAllGroupChats;
    }
    return null;
  }

  /// A scope covering a member of a chat
  BotCommandScopeChatMember? get botCommandScopeChatMember {
    if (this is BotCommandScopeChatMember) {
      return this as BotCommandScopeChatMember;
    }
    return null;
  }

  /// A scope covering all users
  BotCommandScopeDefault? get botCommandScopeDefault {
    if (this is BotCommandScopeDefault) {
      return this as BotCommandScopeDefault;
    }
    return null;
  }

  /// A scope covering all members of a chat
  BotCommandScopeChat? get botCommandScopeChat {
    if (this is BotCommandScopeChat) {
      return this as BotCommandScopeChat;
    }
    return null;
  }
}

extension UpdateExt on Update {
  /// Information about a file was updated
  UpdateFile? get updateFile {
    if (this is UpdateFile) {
      return this as UpdateFile;
    }
    return null;
  }

  /// A list of active notifications in a notification group has changed
  UpdateNotificationGroup? get updateNotificationGroup {
    if (this is UpdateNotificationGroup) {
      return this as UpdateNotificationGroup;
    }
    return null;
  }

  /// File generation is no longer needed
  UpdateFileGenerationStop? get updateFileGenerationStop {
    if (this is UpdateFileGenerationStop) {
      return this as UpdateFileGenerationStop;
    }
    return null;
  }

  /// A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully or even that the send message request will be processed.
  UpdateMessageSendAcknowledged? get updateMessageSendAcknowledged {
    if (this is UpdateMessageSendAcknowledged) {
      return this as UpdateMessageSendAcknowledged;
    }
    return null;
  }

  /// The list of unread reactions added to a message was changed
  UpdateMessageUnreadReactions? get updateMessageUnreadReactions {
    if (this is UpdateMessageUnreadReactions) {
      return this as UpdateMessageUnreadReactions;
    }
    return null;
  }

  /// A story has been successfully sent
  UpdateStorySendSucceeded? get updateStorySendSucceeded {
    if (this is UpdateStorySendSucceeded) {
      return this as UpdateStorySendSucceeded;
    }
    return null;
  }

  /// A new incoming callback query from a message sent via a bot; for bots only
  UpdateNewInlineCallbackQuery? get updateNewInlineCallbackQuery {
    if (this is UpdateNewInlineCallbackQuery) {
      return this as UpdateNewInlineCallbackQuery;
    }
    return null;
  }

  /// A new incoming inline query; for bots only
  UpdateNewInlineQuery? get updateNewInlineQuery {
    if (this is UpdateNewInlineQuery) {
      return this as UpdateNewInlineQuery;
    }
    return null;
  }

  /// User rights changed in a chat; for bots only
  UpdateChatMember? get updateChatMember {
    if (this is UpdateChatMember) {
      return this as UpdateChatMember;
    }
    return null;
  }

  /// Notification settings for some type of chats were updated
  UpdateScopeNotificationSettings? get updateScopeNotificationSettings {
    if (this is UpdateScopeNotificationSettings) {
      return this as UpdateScopeNotificationSettings;
    }
    return null;
  }

  /// Some privacy setting rules have been changed
  UpdateUserPrivacySettingRules? get updateUserPrivacySettingRules {
    if (this is UpdateUserPrivacySettingRules) {
      return this as UpdateUserPrivacySettingRules;
    }
    return null;
  }

  /// Some data in supergroupFullInfo has been changed
  UpdateSupergroupFullInfo? get updateSupergroupFullInfo {
    if (this is UpdateSupergroupFullInfo) {
      return this as UpdateSupergroupFullInfo;
    }
    return null;
  }

  /// A service notification from the server was received. Upon receiving this the application must show a popup with the content of the notification
  UpdateServiceNotification? get updateServiceNotification {
    if (this is UpdateServiceNotification) {
      return this as UpdateServiceNotification;
    }
    return null;
  }

  /// Contains active notifications that was shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update
  UpdateActiveNotifications? get updateActiveNotifications {
    if (this is UpdateActiveNotifications) {
      return this as UpdateActiveNotifications;
    }
    return null;
  }

  /// A story was changed
  UpdateStory? get updateStory {
    if (this is UpdateStory) {
      return this as UpdateStory;
    }
    return null;
  }

  /// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method must be called with the reason "Decline ToS update"
  UpdateTermsOfService? get updateTermsOfService {
    if (this is UpdateTermsOfService) {
      return this as UpdateTermsOfService;
    }
    return null;
  }

  /// A chat content was allowed or restricted for saving
  UpdateChatHasProtectedContent? get updateChatHasProtectedContent {
    if (this is UpdateChatHasProtectedContent) {
      return this as UpdateChatHasProtectedContent;
    }
    return null;
  }

  /// A message was edited. Changes in the message content will come in a separate updateMessageContent
  UpdateMessageEdited? get updateMessageEdited {
    if (this is UpdateMessageEdited) {
      return this as UpdateMessageEdited;
    }
    return null;
  }

  /// An option changed its value
  UpdateOption? get updateOption {
    if (this is UpdateOption) {
      return this as UpdateOption;
    }
    return null;
  }

  /// Incoming messages were read or the number of unread messages has been changed
  UpdateChatReadInbox? get updateChatReadInbox {
    if (this is UpdateChatReadInbox) {
      return this as UpdateChatReadInbox;
    }
    return null;
  }

  /// Describes whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications
  UpdateHavePendingNotifications? get updateHavePendingNotifications {
    if (this is UpdateHavePendingNotifications) {
      return this as UpdateHavePendingNotifications;
    }
    return null;
  }

  /// The list of active stories posted by a specific chat has changed
  UpdateChatActiveStories? get updateChatActiveStories {
    if (this is UpdateChatActiveStories) {
      return this as UpdateChatActiveStories;
    }
    return null;
  }

  /// The list of installed sticker sets was updated
  UpdateInstalledStickerSets? get updateInstalledStickerSets {
    if (this is UpdateInstalledStickerSets) {
      return this as UpdateInstalledStickerSets;
    }
    return null;
  }

  /// The parameters of animation search through getOption("animation_search_bot_username") bot has changed
  UpdateAnimationSearchParameters? get updateAnimationSearchParameters {
    if (this is UpdateAnimationSearchParameters) {
      return this as UpdateAnimationSearchParameters;
    }
    return null;
  }

  /// The message sender that is selected to send messages in a chat has changed
  UpdateChatMessageSender? get updateChatMessageSender {
    if (this is UpdateChatMessageSender) {
      return this as UpdateChatMessageSender;
    }
    return null;
  }

  /// The last message of a chat was changed. If last_message is null, then the last message in the chat became unknown. Some new unknown messages might be added to the chat in this case
  UpdateChatLastMessage? get updateChatLastMessage {
    if (this is UpdateChatLastMessage) {
      return this as UpdateChatLastMessage;
    }
    return null;
  }

  /// The file generation process needs to be started by the application
  UpdateFileGenerationStart? get updateFileGenerationStart {
    if (this is UpdateFileGenerationStart) {
      return this as UpdateFileGenerationStart;
    }
    return null;
  }

  /// The chat unread_mention_count has changed
  UpdateChatUnreadMentionCount? get updateChatUnreadMentionCount {
    if (this is UpdateChatUnreadMentionCount) {
      return this as UpdateChatUnreadMentionCount;
    }
    return null;
  }

  /// The list of chat folders or a chat folder has changed
  UpdateChatFolders? get updateChatFolders {
    if (this is UpdateChatFolders) {
      return this as UpdateChatFolders;
    }
    return null;
  }

  /// A chat's has_scheduled_messages field has changed
  UpdateChatHasScheduledMessages? get updateChatHasScheduledMessages {
    if (this is UpdateChatHasScheduledMessages) {
      return this as UpdateChatHasScheduledMessages;
    }
    return null;
  }

  /// The list of supported dice emojis has changed
  UpdateDiceEmojis? get updateDiceEmojis {
    if (this is UpdateDiceEmojis) {
      return this as UpdateDiceEmojis;
    }
    return null;
  }

  /// Some animated emoji message was clicked and a big animated sticker must be played if the message is visible on the screen. chatActionWatchingAnimations with the text of the message needs to be sent if the sticker is played
  UpdateAnimatedEmojiMessageClicked? get updateAnimatedEmojiMessageClicked {
    if (this is UpdateAnimatedEmojiMessageClicked) {
      return this as UpdateAnimatedEmojiMessageClicked;
    }
    return null;
  }

  /// The list of recently used stickers was updated
  UpdateRecentStickers? get updateRecentStickers {
    if (this is UpdateRecentStickers) {
      return this as UpdateRecentStickers;
    }
    return null;
  }

  /// The user authorization state has changed
  UpdateAuthorizationState? get updateAuthorizationState {
    if (this is UpdateAuthorizationState) {
      return this as UpdateAuthorizationState;
    }
    return null;
  }

  /// The list of suggested to the user actions has changed
  UpdateSuggestedActions? get updateSuggestedActions {
    if (this is UpdateSuggestedActions) {
      return this as UpdateSuggestedActions;
    }
    return null;
  }

  /// Some data in basicGroupFullInfo has been changed
  UpdateBasicGroupFullInfo? get updateBasicGroupFullInfo {
    if (this is UpdateBasicGroupFullInfo) {
      return this as UpdateBasicGroupFullInfo;
    }
    return null;
  }

  /// The list of saved animations was updated
  UpdateSavedAnimations? get updateSavedAnimations {
    if (this is UpdateSavedAnimations) {
      return this as UpdateSavedAnimations;
    }
    return null;
  }

  /// The user went online or offline
  UpdateUserStatus? get updateUserStatus {
    if (this is UpdateUserStatus) {
      return this as UpdateUserStatus;
    }
    return null;
  }

  /// The list of saved notifications sounds was updated. This update may not be sent until information about a notification sound was requested for the first time
  UpdateSavedNotificationSounds? get updateSavedNotificationSounds {
    if (this is UpdateSavedNotificationSounds) {
      return this as UpdateSavedNotificationSounds;
    }
    return null;
  }

  /// Autosave settings for some type of chats were updated
  UpdateAutosaveSettings? get updateAutosaveSettings {
    if (this is UpdateAutosaveSettings) {
      return this as UpdateAutosaveSettings;
    }
    return null;
  }

  /// The first unconfirmed session has changed
  UpdateUnconfirmedSession? get updateUnconfirmedSession {
    if (this is UpdateUnconfirmedSession) {
      return this as UpdateUnconfirmedSession;
    }
    return null;
  }

  /// Translation of chat messages was enabled or disabled
  UpdateChatIsTranslatable? get updateChatIsTranslatable {
    if (this is UpdateChatIsTranslatable) {
      return this as UpdateChatIsTranslatable;
    }
    return null;
  }

  /// A file download was changed. This update is sent only after file download list is loaded for the first time
  UpdateFileDownload? get updateFileDownload {
    if (this is UpdateFileDownload) {
      return this as UpdateFileDownload;
    }
    return null;
  }

  /// The connection state has changed. This update must be used only to show a human-readable description of the connection state
  UpdateConnectionState? get updateConnectionState {
    if (this is UpdateConnectionState) {
      return this as UpdateConnectionState;
    }
    return null;
  }

  /// A chat photo was changed
  UpdateChatPhoto? get updateChatPhoto {
    if (this is UpdateChatPhoto) {
      return this as UpdateChatPhoto;
    }
    return null;
  }

  /// The state of the file download list has changed
  UpdateFileDownloads? get updateFileDownloads {
    if (this is UpdateFileDownloads) {
      return this as UpdateFileDownloads;
    }
    return null;
  }

  /// The position of a chat in a chat list has changed. An updateChatLastMessage or updateChatDraftMessage update might be sent instead of the update
  UpdateChatPosition? get updateChatPosition {
    if (this is UpdateChatPosition) {
      return this as UpdateChatPosition;
    }
    return null;
  }

  /// A new incoming shipping query; for bots only. Only for invoices with flexible price
  UpdateNewShippingQuery? get updateNewShippingQuery {
    if (this is UpdateNewShippingQuery) {
      return this as UpdateNewShippingQuery;
    }
    return null;
  }

  /// Information about a group call participant was changed. The updates are sent only after the group call is received through getGroupCall and only if the call is joined or being joined
  UpdateGroupCallParticipant? get updateGroupCallParticipant {
    if (this is UpdateGroupCallParticipant) {
      return this as UpdateGroupCallParticipant;
    }
    return null;
  }

  /// The value of the default disable_notification parameter, used when a message is sent to the chat, was changed
  UpdateChatDefaultDisableNotification?
      get updateChatDefaultDisableNotification {
    if (this is UpdateChatDefaultDisableNotification) {
      return this as UpdateChatDefaultDisableNotification;
    }
    return null;
  }

  /// The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the self-destruct timer
  UpdateMessageContentOpened? get updateMessageContentOpened {
    if (this is UpdateMessageContentOpened) {
      return this as UpdateMessageContentOpened;
    }
    return null;
  }

  /// A message was sent by an opened Web App, so the Web App needs to be closed
  UpdateWebAppMessageSent? get updateWebAppMessageSent {
    if (this is UpdateWebAppMessageSent) {
      return this as UpdateWebAppMessageSent;
    }
    return null;
  }

  /// A user changed the answer to a poll; for bots only
  UpdatePollAnswer? get updatePollAnswer {
    if (this is UpdatePollAnswer) {
      return this as UpdatePollAnswer;
    }
    return null;
  }

  /// Outgoing messages were read
  UpdateChatReadOutbox? get updateChatReadOutbox {
    if (this is UpdateChatReadOutbox) {
      return this as UpdateChatReadOutbox;
    }
    return null;
  }

  /// The list of trending sticker sets was updated or some of them were viewed
  UpdateTrendingStickerSets? get updateTrendingStickerSets {
    if (this is UpdateTrendingStickerSets) {
      return this as UpdateTrendingStickerSets;
    }
    return null;
  }

  /// A message has been successfully sent
  UpdateMessageSendSucceeded? get updateMessageSendSucceeded {
    if (this is UpdateMessageSendSucceeded) {
      return this as UpdateMessageSendSucceeded;
    }
    return null;
  }

  /// A sticker set has changed
  UpdateStickerSet? get updateStickerSet {
    if (this is UpdateStickerSet) {
      return this as UpdateStickerSet;
    }
    return null;
  }

  /// Information about a group call was updated
  UpdateGroupCall? get updateGroupCall {
    if (this is UpdateGroupCall) {
      return this as UpdateGroupCall;
    }
    return null;
  }

  /// The selected background has changed
  UpdateSelectedBackground? get updateSelectedBackground {
    if (this is UpdateSelectedBackground) {
      return this as UpdateSelectedBackground;
    }
    return null;
  }

  /// Chat permissions was changed
  UpdateChatPermissions? get updateChatPermissions {
    if (this is UpdateChatPermissions) {
      return this as UpdateChatPermissions;
    }
    return null;
  }

  /// Story stealth mode settings have changed
  UpdateStoryStealthMode? get updateStoryStealthMode {
    if (this is UpdateStoryStealthMode) {
      return this as UpdateStoryStealthMode;
    }
    return null;
  }

  /// The list of available chat themes has changed
  UpdateChatThemes? get updateChatThemes {
    if (this is UpdateChatThemes) {
      return this as UpdateChatThemes;
    }
    return null;
  }

  /// The list of users nearby has changed. The update is guaranteed to be sent only 60 seconds after a successful searchChatsNearby request
  UpdateUsersNearby? get updateUsersNearby {
    if (this is UpdateUsersNearby) {
      return this as UpdateUsersNearby;
    }
    return null;
  }

  /// Number of chats in a story list has changed
  UpdateStoryListChatCount? get updateStoryListChatCount {
    if (this is UpdateStoryListChatCount) {
      return this as UpdateStoryListChatCount;
    }
    return null;
  }

  /// The chat action bar was changed
  UpdateChatActionBar? get updateChatActionBar {
    if (this is UpdateChatActionBar) {
      return this as UpdateChatActionBar;
    }
    return null;
  }

  /// A message with an unread mention was read
  UpdateMessageMentionRead? get updateMessageMentionRead {
    if (this is UpdateMessageMentionRead) {
      return this as UpdateMessageMentionRead;
    }
    return null;
  }

  /// A new incoming callback query; for bots only
  UpdateNewCallbackQuery? get updateNewCallbackQuery {
    if (this is UpdateNewCallbackQuery) {
      return this as UpdateNewCallbackQuery;
    }
    return null;
  }

  /// A story became inaccessible
  UpdateStoryDeleted? get updateStoryDeleted {
    if (this is UpdateStoryDeleted) {
      return this as UpdateStoryDeleted;
    }
    return null;
  }

  /// New call signaling data arrived
  UpdateNewCallSignalingData? get updateNewCallSignalingData {
    if (this is UpdateNewCallSignalingData) {
      return this as UpdateNewCallSignalingData;
    }
    return null;
  }

  /// A new incoming pre-checkout query; for bots only. Contains full information about a checkout
  UpdateNewPreCheckoutQuery? get updateNewPreCheckoutQuery {
    if (this is UpdateNewPreCheckoutQuery) {
      return this as UpdateNewPreCheckoutQuery;
    }
    return null;
  }

  /// Number of unread chats, i.e. with unread messages or marked as unread, has changed. This update is sent only if the message database is used
  UpdateUnreadChatCount? get updateUnreadChatCount {
    if (this is UpdateUnreadChatCount) {
      return this as UpdateUnreadChatCount;
    }
    return null;
  }

  /// Some language pack strings have been updated
  UpdateLanguagePackStrings? get updateLanguagePackStrings {
    if (this is UpdateLanguagePackStrings) {
      return this as UpdateLanguagePackStrings;
    }
    return null;
  }

  /// Some data in userFullInfo has been changed
  UpdateUserFullInfo? get updateUserFullInfo {
    if (this is UpdateUserFullInfo) {
      return this as UpdateUserFullInfo;
    }
    return null;
  }

  /// Notification settings for a chat were changed
  UpdateChatNotificationSettings? get updateChatNotificationSettings {
    if (this is UpdateChatNotificationSettings) {
      return this as UpdateChatNotificationSettings;
    }
    return null;
  }

  /// The information about interactions with a message has changed
  UpdateMessageInteractionInfo? get updateMessageInteractionInfo {
    if (this is UpdateMessageInteractionInfo) {
      return this as UpdateMessageInteractionInfo;
    }
    return null;
  }

  /// A poll was updated; for bots only
  UpdatePoll? get updatePoll {
    if (this is UpdatePoll) {
      return this as UpdatePoll;
    }
    return null;
  }

  /// The message pinned state was changed
  UpdateMessageIsPinned? get updateMessageIsPinned {
    if (this is UpdateMessageIsPinned) {
      return this as UpdateMessageIsPinned;
    }
    return null;
  }

  /// New call was created or information about a call was updated
  UpdateCall? get updateCall {
    if (this is UpdateCall) {
      return this as UpdateCall;
    }
    return null;
  }

  /// The message content has changed
  UpdateMessageContent? get updateMessageContent {
    if (this is UpdateMessageContent) {
      return this as UpdateMessageContent;
    }
    return null;
  }

  /// The list of bots added to attachment or side menu has changed
  UpdateAttachmentMenuBots? get updateAttachmentMenuBots {
    if (this is UpdateAttachmentMenuBots) {
      return this as UpdateAttachmentMenuBots;
    }
    return null;
  }

  /// A message sender activity in the chat has changed
  UpdateChatAction? get updateChatAction {
    if (this is UpdateChatAction) {
      return this as UpdateChatAction;
    }
    return null;
  }

  /// A new incoming event; for bots only
  UpdateNewCustomEvent? get updateNewCustomEvent {
    if (this is UpdateNewCustomEvent) {
      return this as UpdateNewCustomEvent;
    }
    return null;
  }

  /// The list of active emoji reactions has changed
  UpdateActiveEmojiReactions? get updateActiveEmojiReactions {
    if (this is UpdateActiveEmojiReactions) {
      return this as UpdateActiveEmojiReactions;
    }
    return null;
  }

  /// Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the application
  UpdateSupergroup? get updateSupergroup {
    if (this is UpdateSupergroup) {
      return this as UpdateSupergroup;
    }
    return null;
  }

  /// A new chat has been loaded/created. This update is guaranteed to come before the chat identifier is returned to the application. The chat field changes will be reported through separate updates
  UpdateNewChat? get updateNewChat {
    if (this is UpdateNewChat) {
      return this as UpdateNewChat;
    }
    return null;
  }

  /// The title of a chat was changed
  UpdateChatTitle? get updateChatTitle {
    if (this is UpdateChatTitle) {
      return this as UpdateChatTitle;
    }
    return null;
  }

  /// A new incoming query; for bots only
  UpdateNewCustomQuery? get updateNewCustomQuery {
    if (this is UpdateNewCustomQuery) {
      return this as UpdateNewCustomQuery;
    }
    return null;
  }

  /// A chat was marked as unread or was read
  UpdateChatIsMarkedAsUnread? get updateChatIsMarkedAsUnread {
    if (this is UpdateChatIsMarkedAsUnread) {
      return this as UpdateChatIsMarkedAsUnread;
    }
    return null;
  }

  /// The chat theme was changed
  UpdateChatTheme? get updateChatTheme {
    if (this is UpdateChatTheme) {
      return this as UpdateChatTheme;
    }
    return null;
  }

  /// Basic information about a topic in a forum chat was changed
  UpdateForumTopicInfo? get updateForumTopicInfo {
    if (this is UpdateForumTopicInfo) {
      return this as UpdateForumTopicInfo;
    }
    return null;
  }

  /// A notification was changed
  UpdateNotification? get updateNotification {
    if (this is UpdateNotification) {
      return this as UpdateNotification;
    }
    return null;
  }

  /// The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user
  UpdateChatReplyMarkup? get updateChatReplyMarkup {
    if (this is UpdateChatReplyMarkup) {
      return this as UpdateChatReplyMarkup;
    }
    return null;
  }

  /// A chat was blocked or unblocked
  UpdateChatBlockList? get updateChatBlockList {
    if (this is UpdateChatBlockList) {
      return this as UpdateChatBlockList;
    }
    return null;
  }

  /// The list of favorite stickers was updated
  UpdateFavoriteStickers? get updateFavoriteStickers {
    if (this is UpdateFavoriteStickers) {
      return this as UpdateFavoriteStickers;
    }
    return null;
  }

  /// The type of default reaction has changed
  UpdateDefaultReactionType? get updateDefaultReactionType {
    if (this is UpdateDefaultReactionType) {
      return this as UpdateDefaultReactionType;
    }
    return null;
  }

  /// A message with a live location was viewed. When the update is received, the application is supposed to update the live location
  UpdateMessageLiveLocationViewed? get updateMessageLiveLocationViewed {
    if (this is UpdateMessageLiveLocationViewed) {
      return this as UpdateMessageLiveLocationViewed;
    }
    return null;
  }

  /// The chat available reactions were changed
  UpdateChatAvailableReactions? get updateChatAvailableReactions {
    if (this is UpdateChatAvailableReactions) {
      return this as UpdateChatAvailableReactions;
    }
    return null;
  }

  /// Adding users to a chat has failed because of their privacy settings. An invite link can be shared with the users if appropriate
  UpdateAddChatMembersPrivacyForbidden?
      get updateAddChatMembersPrivacyForbidden {
    if (this is UpdateAddChatMembersPrivacyForbidden) {
      return this as UpdateAddChatMembersPrivacyForbidden;
    }
    return null;
  }

  /// Some messages were deleted
  UpdateDeleteMessages? get updateDeleteMessages {
    if (this is UpdateDeleteMessages) {
      return this as UpdateDeleteMessages;
    }
    return null;
  }

  /// A new message was received; can also be an outgoing message
  UpdateNewMessage? get updateNewMessage {
    if (this is UpdateNewMessage) {
      return this as UpdateNewMessage;
    }
    return null;
  }

  /// Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the application
  UpdateSecretChat? get updateSecretChat {
    if (this is UpdateSecretChat) {
      return this as UpdateSecretChat;
    }
    return null;
  }

  /// A file was removed from the file download list. This update is sent only after file download list is loaded for the first time
  UpdateFileRemovedFromDownloads? get updateFileRemovedFromDownloads {
    if (this is UpdateFileRemovedFromDownloads) {
      return this as UpdateFileRemovedFromDownloads;
    }
    return null;
  }

  /// The number of online group members has changed. This update with non-zero number of online group members is sent only for currently opened chats.
  UpdateChatOnlineMemberCount? get updateChatOnlineMemberCount {
    if (this is UpdateChatOnlineMemberCount) {
      return this as UpdateChatOnlineMemberCount;
    }
    return null;
  }

  /// The chat unread_reaction_count has changed
  UpdateChatUnreadReactionCount? get updateChatUnreadReactionCount {
    if (this is UpdateChatUnreadReactionCount) {
      return this as UpdateChatUnreadReactionCount;
    }
    return null;
  }

  /// A message failed to send. Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be received instead of this update
  UpdateMessageSendFailed? get updateMessageSendFailed {
    if (this is UpdateMessageSendFailed) {
      return this as UpdateMessageSendFailed;
    }
    return null;
  }

  /// Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the application
  UpdateUser? get updateUser {
    if (this is UpdateUser) {
      return this as UpdateUser;
    }
    return null;
  }

  /// Number of unread messages in a chat list has changed. This update is sent only if the message database is used
  UpdateUnreadMessageCount? get updateUnreadMessageCount {
    if (this is UpdateUnreadMessageCount) {
      return this as UpdateUnreadMessageCount;
    }
    return null;
  }

  /// The message auto-delete or self-destruct timer setting for a chat was changed
  UpdateChatMessageAutoDeleteTime? get updateChatMessageAutoDeleteTime {
    if (this is UpdateChatMessageAutoDeleteTime) {
      return this as UpdateChatMessageAutoDeleteTime;
    }
    return null;
  }

  /// A file was added to the file download list. This update is sent only after file download list is loaded for the first time
  UpdateFileAddedToDownloads? get updateFileAddedToDownloads {
    if (this is UpdateFileAddedToDownloads) {
      return this as UpdateFileAddedToDownloads;
    }
    return null;
  }

  /// Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the application
  UpdateBasicGroup? get updateBasicGroup {
    if (this is UpdateBasicGroup) {
      return this as UpdateBasicGroup;
    }
    return null;
  }

  /// A chat video chat state has changed
  UpdateChatVideoChat? get updateChatVideoChat {
    if (this is UpdateChatVideoChat) {
      return this as UpdateChatVideoChat;
    }
    return null;
  }

  /// A user sent a join request to a chat; for bots only
  UpdateNewChatJoinRequest? get updateNewChatJoinRequest {
    if (this is UpdateNewChatJoinRequest) {
      return this as UpdateNewChatJoinRequest;
    }
    return null;
  }

  /// A story failed to send. If the story sending is canceled, then updateStoryDeleted will be received instead of this update
  UpdateStorySendFailed? get updateStorySendFailed {
    if (this is UpdateStorySendFailed) {
      return this as UpdateStorySendFailed;
    }
    return null;
  }

  /// The chat pending join requests were changed
  UpdateChatPendingJoinRequests? get updateChatPendingJoinRequests {
    if (this is UpdateChatPendingJoinRequests) {
      return this as UpdateChatPendingJoinRequests;
    }
    return null;
  }

  /// The chat background was changed
  UpdateChatBackground? get updateChatBackground {
    if (this is UpdateChatBackground) {
      return this as UpdateChatBackground;
    }
    return null;
  }

  /// A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update mustn't be applied
  UpdateChatDraftMessage? get updateChatDraftMessage {
    if (this is UpdateChatDraftMessage) {
      return this as UpdateChatDraftMessage;
    }
    return null;
  }

  /// The user has chosen a result of an inline query; for bots only
  UpdateNewChosenInlineResult? get updateNewChosenInlineResult {
    if (this is UpdateNewChosenInlineResult) {
      return this as UpdateNewChosenInlineResult;
    }
    return null;
  }
}

extension LogStreamExt on LogStream {
  /// The log is written to stderr or an OS specific log
  LogStreamDefault? get logStreamDefault {
    if (this is LogStreamDefault) {
      return this as LogStreamDefault;
    }
    return null;
  }

  /// The log is written to a file
  LogStreamFile? get logStreamFile {
    if (this is LogStreamFile) {
      return this as LogStreamFile;
    }
    return null;
  }

  /// The log is written nowhere
  LogStreamEmpty? get logStreamEmpty {
    if (this is LogStreamEmpty) {
      return this as LogStreamEmpty;
    }
    return null;
  }
}
