// ignore_for_file: overridden_fields, annotate_overrides, camel_case_types, non_constant_identifier_names, unnecessary_question_mark, no_leading_underscores_for_local_identifiers, constant_identifier_names

import 'dart:ffi' show Pointer;
import 'package:ffi/ffi.dart' show StringUtf8Pointer, Utf8;
import 'dart:convert' show jsonEncode;

import './classes.dart';
import './objects.dart';

/// The bytes (`List<int>`) are base64-encoded
typedef bytes = String;

/// String representation of int
typedef int64 = String;

abstract class TlObject {
  /// Object to Map serializer
  Map<String, dynamic> toJson();

  /// Request identifier. Must be non-zero.
  int? extra;

  /// TDLib client instance identifier, for which the response was received.
  int? clientId;

  static const String CONSTRUCTOR = "TlObject";
  // Construct from [Map].
  static TlObject? fromMap(Map<String, dynamic> map) => getObject(map);
}

extension TlObjectExt on TlObject {
  Pointer<Utf8> toCharPtr() => toJsonEncoded().toNativeUtf8();
  String toJsonEncoded() => jsonEncode(toJson());
}

abstract class Func extends TlObject {}

abstract class SyncFunc extends Func {}

/// Provides information about the method by which an authentication code is delivered to the user.
///
/// Inherited by [AuthenticationCodeTypeFirebaseAndroid], [AuthenticationCodeTypeSms], [AuthenticationCodeTypeFragment], [AuthenticationCodeTypeTelegramMessage], [AuthenticationCodeTypeFirebaseIos], [AuthenticationCodeTypeCall], [AuthenticationCodeTypeFlashCall], [AuthenticationCodeTypeMissedCall].
abstract class AuthenticationCodeType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "authenticationCodeType";

  /// Construct from [Map].
  static AuthenticationCodeType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'authenticationCodeTypeFirebaseAndroid':
        return AuthenticationCodeTypeFirebaseAndroid.fromMap(_map);
      case 'authenticationCodeTypeSms':
        return AuthenticationCodeTypeSms.fromMap(_map);
      case 'authenticationCodeTypeFragment':
        return AuthenticationCodeTypeFragment.fromMap(_map);
      case 'authenticationCodeTypeTelegramMessage':
        return AuthenticationCodeTypeTelegramMessage.fromMap(_map);
      case 'authenticationCodeTypeFirebaseIos':
        return AuthenticationCodeTypeFirebaseIos.fromMap(_map);
      case 'authenticationCodeTypeCall':
        return AuthenticationCodeTypeCall.fromMap(_map);
      case 'authenticationCodeTypeFlashCall':
        return AuthenticationCodeTypeFlashCall.fromMap(_map);
      case 'authenticationCodeTypeMissedCall':
        return AuthenticationCodeTypeMissedCall.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains authentication data for a email address.
///
/// Inherited by [EmailAddressAuthenticationAppleId], [EmailAddressAuthenticationGoogleId], [EmailAddressAuthenticationCode].
abstract class EmailAddressAuthentication extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "emailAddressAuthentication";

  /// Construct from [Map].
  static EmailAddressAuthentication? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'emailAddressAuthenticationAppleId':
        return EmailAddressAuthenticationAppleId.fromMap(_map);
      case 'emailAddressAuthenticationGoogleId':
        return EmailAddressAuthenticationGoogleId.fromMap(_map);
      case 'emailAddressAuthenticationCode':
        return EmailAddressAuthenticationCode.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes reset state of a email address.
///
/// Inherited by [EmailAddressResetStateAvailable], [EmailAddressResetStatePending].
abstract class EmailAddressResetState extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "emailAddressResetState";

  /// Construct from [Map].
  static EmailAddressResetState? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'emailAddressResetStateAvailable':
        return EmailAddressResetStateAvailable.fromMap(_map);
      case 'emailAddressResetStatePending':
        return EmailAddressResetStatePending.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents the current authorization state of the TDLib client.
///
/// Inherited by [AuthorizationStateWaitPassword], [AuthorizationStateReady], [AuthorizationStateWaitPhoneNumber], [AuthorizationStateWaitOtherDeviceConfirmation], [AuthorizationStateClosed], [AuthorizationStateWaitEmailCode], [AuthorizationStateWaitRegistration], [AuthorizationStateLoggingOut], [AuthorizationStateClosing], [AuthorizationStateWaitTdlibParameters], [AuthorizationStateWaitCode], [AuthorizationStateWaitEmailAddress].
abstract class AuthorizationState extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "authorizationState";

  /// Construct from [Map].
  static AuthorizationState? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'authorizationStateWaitPassword':
        return AuthorizationStateWaitPassword.fromMap(_map);
      case 'authorizationStateReady':
        return AuthorizationStateReady.fromMap(_map);
      case 'authorizationStateWaitPhoneNumber':
        return AuthorizationStateWaitPhoneNumber.fromMap(_map);
      case 'authorizationStateWaitOtherDeviceConfirmation':
        return AuthorizationStateWaitOtherDeviceConfirmation.fromMap(_map);
      case 'authorizationStateClosed':
        return AuthorizationStateClosed.fromMap(_map);
      case 'authorizationStateWaitEmailCode':
        return AuthorizationStateWaitEmailCode.fromMap(_map);
      case 'authorizationStateWaitRegistration':
        return AuthorizationStateWaitRegistration.fromMap(_map);
      case 'authorizationStateLoggingOut':
        return AuthorizationStateLoggingOut.fromMap(_map);
      case 'authorizationStateClosing':
        return AuthorizationStateClosing.fromMap(_map);
      case 'authorizationStateWaitTdlibParameters':
        return AuthorizationStateWaitTdlibParameters.fromMap(_map);
      case 'authorizationStateWaitCode':
        return AuthorizationStateWaitCode.fromMap(_map);
      case 'authorizationStateWaitEmailAddress':
        return AuthorizationStateWaitEmailAddress.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Points to a file.
///
/// Inherited by [InputFileId], [InputFileGenerated], [InputFileLocal], [InputFileRemote].
abstract class InputFile extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "inputFile";

  /// Construct from [Map].
  static InputFile? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'inputFileId':
        return InputFileId.fromMap(_map);
      case 'inputFileGenerated':
        return InputFileGenerated.fromMap(_map);
      case 'inputFileLocal':
        return InputFileLocal.fromMap(_map);
      case 'inputFileRemote':
        return InputFileRemote.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes format of a thumbnail.
///
/// Inherited by [ThumbnailFormatWebp], [ThumbnailFormatMpeg4], [ThumbnailFormatGif], [ThumbnailFormatPng], [ThumbnailFormatJpeg], [ThumbnailFormatWebm], [ThumbnailFormatTgs].
abstract class ThumbnailFormat extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "thumbnailFormat";

  /// Construct from [Map].
  static ThumbnailFormat? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'thumbnailFormatWebp':
        return ThumbnailFormatWebp.fromMap(_map);
      case 'thumbnailFormatMpeg4':
        return ThumbnailFormatMpeg4.fromMap(_map);
      case 'thumbnailFormatGif':
        return ThumbnailFormatGif.fromMap(_map);
      case 'thumbnailFormatPng':
        return ThumbnailFormatPng.fromMap(_map);
      case 'thumbnailFormatJpeg':
        return ThumbnailFormatJpeg.fromMap(_map);
      case 'thumbnailFormatWebm':
        return ThumbnailFormatWebm.fromMap(_map);
      case 'thumbnailFormatTgs':
        return ThumbnailFormatTgs.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Part of the face, relative to which a mask is placed.
///
/// Inherited by [MaskPointEyes], [MaskPointChin], [MaskPointMouth], [MaskPointForehead].
abstract class MaskPoint extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "maskPoint";

  /// Construct from [Map].
  static MaskPoint? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'maskPointEyes':
        return MaskPointEyes.fromMap(_map);
      case 'maskPointChin':
        return MaskPointChin.fromMap(_map);
      case 'maskPointMouth':
        return MaskPointMouth.fromMap(_map);
      case 'maskPointForehead':
        return MaskPointForehead.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes format of a sticker.
///
/// Inherited by [StickerFormatWebp], [StickerFormatWebm], [StickerFormatTgs].
abstract class StickerFormat extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "stickerFormat";

  /// Construct from [Map].
  static StickerFormat? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'stickerFormatWebp':
        return StickerFormatWebp.fromMap(_map);
      case 'stickerFormatWebm':
        return StickerFormatWebm.fromMap(_map);
      case 'stickerFormatTgs':
        return StickerFormatTgs.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes type of a sticker.
///
/// Inherited by [StickerTypeRegular], [StickerTypeMask], [StickerTypeCustomEmoji].
abstract class StickerType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "stickerType";

  /// Construct from [Map].
  static StickerType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'stickerTypeRegular':
        return StickerTypeRegular.fromMap(_map);
      case 'stickerTypeMask':
        return StickerTypeMask.fromMap(_map);
      case 'stickerTypeCustomEmoji':
        return StickerTypeCustomEmoji.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains full information about sticker type.
///
/// Inherited by [StickerFullTypeRegular], [StickerFullTypeCustomEmoji], [StickerFullTypeMask].
abstract class StickerFullType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "stickerFullType";

  /// Construct from [Map].
  static StickerFullType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'stickerFullTypeRegular':
        return StickerFullTypeRegular.fromMap(_map);
      case 'stickerFullTypeCustomEmoji':
        return StickerFullTypeCustomEmoji.fromMap(_map);
      case 'stickerFullTypeMask':
        return StickerFullTypeMask.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the type of a poll.
///
/// Inherited by [PollTypeRegular], [PollTypeQuiz].
abstract class PollType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "pollType";

  /// Construct from [Map].
  static PollType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'pollTypeRegular':
        return PollTypeRegular.fromMap(_map);
      case 'pollTypeQuiz':
        return PollTypeQuiz.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents the type of a user. The following types are possible: regular users, deleted users and bots.
///
/// Inherited by [UserTypeRegular], [UserTypeBot], [UserTypeUnknown], [UserTypeDeleted].
abstract class UserType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "userType";

  /// Construct from [Map].
  static UserType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'userTypeRegular':
        return UserTypeRegular.fromMap(_map);
      case 'userTypeBot':
        return UserTypeBot.fromMap(_map);
      case 'userTypeUnknown':
        return UserTypeUnknown.fromMap(_map);
      case 'userTypeDeleted':
        return UserTypeDeleted.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes type of a sticker, which was used to create a chat photo.
///
/// Inherited by [ChatPhotoStickerTypeCustomEmoji], [ChatPhotoStickerTypeRegularOrMask].
abstract class ChatPhotoStickerType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "chatPhotoStickerType";

  /// Construct from [Map].
  static ChatPhotoStickerType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'chatPhotoStickerTypeCustomEmoji':
        return ChatPhotoStickerTypeCustomEmoji.fromMap(_map);
      case 'chatPhotoStickerTypeRegularOrMask':
        return ChatPhotoStickerTypeRegularOrMask.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a photo to be set as a user profile or chat photo.
///
/// Inherited by [InputChatPhotoSticker], [InputChatPhotoStatic], [InputChatPhotoPrevious], [InputChatPhotoAnimation].
abstract class InputChatPhoto extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "inputChatPhoto";

  /// Construct from [Map].
  static InputChatPhoto? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'inputChatPhotoSticker':
        return InputChatPhotoSticker.fromMap(_map);
      case 'inputChatPhotoStatic':
        return InputChatPhotoStatic.fromMap(_map);
      case 'inputChatPhotoPrevious':
        return InputChatPhotoPrevious.fromMap(_map);
      case 'inputChatPhotoAnimation':
        return InputChatPhotoAnimation.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Provides information about the status of a member in a chat.
///
/// Inherited by [ChatMemberStatusCreator], [ChatMemberStatusBanned], [ChatMemberStatusAdministrator], [ChatMemberStatusMember], [ChatMemberStatusLeft], [ChatMemberStatusRestricted].
abstract class ChatMemberStatus extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "chatMemberStatus";

  /// Construct from [Map].
  static ChatMemberStatus? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'chatMemberStatusCreator':
        return ChatMemberStatusCreator.fromMap(_map);
      case 'chatMemberStatusBanned':
        return ChatMemberStatusBanned.fromMap(_map);
      case 'chatMemberStatusAdministrator':
        return ChatMemberStatusAdministrator.fromMap(_map);
      case 'chatMemberStatusMember':
        return ChatMemberStatusMember.fromMap(_map);
      case 'chatMemberStatusLeft':
        return ChatMemberStatusLeft.fromMap(_map);
      case 'chatMemberStatusRestricted':
        return ChatMemberStatusRestricted.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Specifies the kind of chat members to return in searchChatMembers.
///
/// Inherited by [ChatMembersFilterBots], [ChatMembersFilterMembers], [ChatMembersFilterRestricted], [ChatMembersFilterBanned], [ChatMembersFilterAdministrators], [ChatMembersFilterContacts], [ChatMembersFilterMention].
abstract class ChatMembersFilter extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "chatMembersFilter";

  /// Construct from [Map].
  static ChatMembersFilter? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'chatMembersFilterBots':
        return ChatMembersFilterBots.fromMap(_map);
      case 'chatMembersFilterMembers':
        return ChatMembersFilterMembers.fromMap(_map);
      case 'chatMembersFilterRestricted':
        return ChatMembersFilterRestricted.fromMap(_map);
      case 'chatMembersFilterBanned':
        return ChatMembersFilterBanned.fromMap(_map);
      case 'chatMembersFilterAdministrators':
        return ChatMembersFilterAdministrators.fromMap(_map);
      case 'chatMembersFilterContacts':
        return ChatMembersFilterContacts.fromMap(_map);
      case 'chatMembersFilterMention':
        return ChatMembersFilterMention.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Specifies the kind of chat members to return in getSupergroupMembers.
///
/// Inherited by [SupergroupMembersFilterSearch], [SupergroupMembersFilterMention], [SupergroupMembersFilterRestricted], [SupergroupMembersFilterBots], [SupergroupMembersFilterBanned], [SupergroupMembersFilterContacts], [SupergroupMembersFilterAdministrators], [SupergroupMembersFilterRecent].
abstract class SupergroupMembersFilter extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "supergroupMembersFilter";

  /// Construct from [Map].
  static SupergroupMembersFilter? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'supergroupMembersFilterSearch':
        return SupergroupMembersFilterSearch.fromMap(_map);
      case 'supergroupMembersFilterMention':
        return SupergroupMembersFilterMention.fromMap(_map);
      case 'supergroupMembersFilterRestricted':
        return SupergroupMembersFilterRestricted.fromMap(_map);
      case 'supergroupMembersFilterBots':
        return SupergroupMembersFilterBots.fromMap(_map);
      case 'supergroupMembersFilterBanned':
        return SupergroupMembersFilterBanned.fromMap(_map);
      case 'supergroupMembersFilterContacts':
        return SupergroupMembersFilterContacts.fromMap(_map);
      case 'supergroupMembersFilterAdministrators':
        return SupergroupMembersFilterAdministrators.fromMap(_map);
      case 'supergroupMembersFilterRecent':
        return SupergroupMembersFilterRecent.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the type of a chat to which points an invite link.
///
/// Inherited by [InviteLinkChatTypeChannel], [InviteLinkChatTypeBasicGroup], [InviteLinkChatTypeSupergroup].
abstract class InviteLinkChatType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "inviteLinkChatType";

  /// Construct from [Map].
  static InviteLinkChatType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'inviteLinkChatTypeChannel':
        return InviteLinkChatTypeChannel.fromMap(_map);
      case 'inviteLinkChatTypeBasicGroup':
        return InviteLinkChatTypeBasicGroup.fromMap(_map);
      case 'inviteLinkChatTypeSupergroup':
        return InviteLinkChatTypeSupergroup.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the current secret chat state.
///
/// Inherited by [SecretChatStatePending], [SecretChatStateReady], [SecretChatStateClosed].
abstract class SecretChatState extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "secretChatState";

  /// Construct from [Map].
  static SecretChatState? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'secretChatStatePending':
        return SecretChatStatePending.fromMap(_map);
      case 'secretChatStateReady':
        return SecretChatStateReady.fromMap(_map);
      case 'secretChatStateClosed':
        return SecretChatStateClosed.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains information about the sender of a message.
///
/// Inherited by [MessageSenderUser], [MessageSenderChat].
abstract class MessageSender extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "messageSender";

  /// Construct from [Map].
  static MessageSender? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'messageSenderUser':
        return MessageSenderUser.fromMap(_map);
      case 'messageSenderChat':
        return MessageSenderChat.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains information about the origin of a forwarded message.
///
/// Inherited by [MessageForwardOriginChannel], [MessageForwardOriginChat], [MessageForwardOriginMessageImport], [MessageForwardOriginUser], [MessageForwardOriginHiddenUser].
abstract class MessageForwardOrigin extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "messageForwardOrigin";

  /// Construct from [Map].
  static MessageForwardOrigin? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'messageForwardOriginChannel':
        return MessageForwardOriginChannel.fromMap(_map);
      case 'messageForwardOriginChat':
        return MessageForwardOriginChat.fromMap(_map);
      case 'messageForwardOriginMessageImport':
        return MessageForwardOriginMessageImport.fromMap(_map);
      case 'messageForwardOriginUser':
        return MessageForwardOriginUser.fromMap(_map);
      case 'messageForwardOriginHiddenUser':
        return MessageForwardOriginHiddenUser.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes type of message reaction.
///
/// Inherited by [ReactionTypeCustomEmoji], [ReactionTypeEmoji].
abstract class ReactionType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "reactionType";

  /// Construct from [Map].
  static ReactionType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'reactionTypeCustomEmoji':
        return ReactionTypeCustomEmoji.fromMap(_map);
      case 'reactionTypeEmoji':
        return ReactionTypeEmoji.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains information about the sending state of the message.
///
/// Inherited by [MessageSendingStateFailed], [MessageSendingStatePending].
abstract class MessageSendingState extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "messageSendingState";

  /// Construct from [Map].
  static MessageSendingState? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'messageSendingStateFailed':
        return MessageSendingStateFailed.fromMap(_map);
      case 'messageSendingStatePending':
        return MessageSendingStatePending.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains information about the message or the story a message is replying to.
///
/// Inherited by [MessageReplyToMessage], [MessageReplyToStory].
abstract class MessageReplyTo extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "messageReplyTo";

  /// Construct from [Map].
  static MessageReplyTo? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'messageReplyToMessage':
        return MessageReplyToMessage.fromMap(_map);
      case 'messageReplyToStory':
        return MessageReplyToStory.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes source of a message.
///
/// Inherited by [MessageSourceChatHistory], [MessageSourceMessageThreadHistory], [MessageSourceChatList], [MessageSourceNotification], [MessageSourceHistoryPreview], [MessageSourceScreenshot], [MessageSourceChatEventLog], [MessageSourceSearch], [MessageSourceOther], [MessageSourceForumTopicHistory].
abstract class MessageSource extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "messageSource";

  /// Construct from [Map].
  static MessageSource? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'messageSourceChatHistory':
        return MessageSourceChatHistory.fromMap(_map);
      case 'messageSourceMessageThreadHistory':
        return MessageSourceMessageThreadHistory.fromMap(_map);
      case 'messageSourceChatList':
        return MessageSourceChatList.fromMap(_map);
      case 'messageSourceNotification':
        return MessageSourceNotification.fromMap(_map);
      case 'messageSourceHistoryPreview':
        return MessageSourceHistoryPreview.fromMap(_map);
      case 'messageSourceScreenshot':
        return MessageSourceScreenshot.fromMap(_map);
      case 'messageSourceChatEventLog':
        return MessageSourceChatEventLog.fromMap(_map);
      case 'messageSourceSearch':
        return MessageSourceSearch.fromMap(_map);
      case 'messageSourceOther':
        return MessageSourceOther.fromMap(_map);
      case 'messageSourceForumTopicHistory':
        return MessageSourceForumTopicHistory.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes type of a message sponsor.
///
/// Inherited by [MessageSponsorTypeWebsite], [MessageSponsorTypePublicChannel], [MessageSponsorTypePrivateChannel], [MessageSponsorTypeBot].
abstract class MessageSponsorType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "messageSponsorType";

  /// Construct from [Map].
  static MessageSponsorType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'messageSponsorTypeWebsite':
        return MessageSponsorTypeWebsite.fromMap(_map);
      case 'messageSponsorTypePublicChannel':
        return MessageSponsorTypePublicChannel.fromMap(_map);
      case 'messageSponsorTypePrivateChannel':
        return MessageSponsorTypePrivateChannel.fromMap(_map);
      case 'messageSponsorTypeBot':
        return MessageSponsorTypeBot.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the types of chats to which notification settings are relevant.
///
/// Inherited by [NotificationSettingsScopeChannelChats], [NotificationSettingsScopePrivateChats], [NotificationSettingsScopeGroupChats].
abstract class NotificationSettingsScope extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "notificationSettingsScope";

  /// Construct from [Map].
  static NotificationSettingsScope? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'notificationSettingsScopeChannelChats':
        return NotificationSettingsScopeChannelChats.fromMap(_map);
      case 'notificationSettingsScopePrivateChats':
        return NotificationSettingsScopePrivateChats.fromMap(_map);
      case 'notificationSettingsScopeGroupChats':
        return NotificationSettingsScopeGroupChats.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the type of a chat.
///
/// Inherited by [ChatTypeSupergroup], [ChatTypeBasicGroup], [ChatTypeSecret], [ChatTypePrivate].
abstract class ChatType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "chatType";

  /// Construct from [Map].
  static ChatType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'chatTypeSupergroup':
        return ChatTypeSupergroup.fromMap(_map);
      case 'chatTypeBasicGroup':
        return ChatTypeBasicGroup.fromMap(_map);
      case 'chatTypeSecret':
        return ChatTypeSecret.fromMap(_map);
      case 'chatTypePrivate':
        return ChatTypePrivate.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a list of chats.
///
/// Inherited by [ChatListMain], [ChatListArchive], [ChatListFolder].
abstract class ChatList extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "chatList";

  /// Construct from [Map].
  static ChatList? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'chatListMain':
        return ChatListMain.fromMap(_map);
      case 'chatListArchive':
        return ChatListArchive.fromMap(_map);
      case 'chatListFolder':
        return ChatListFolder.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a reason why an external chat is shown in a chat list.
///
/// Inherited by [ChatSourcePublicServiceAnnouncement], [ChatSourceMtprotoProxy].
abstract class ChatSource extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "chatSource";

  /// Construct from [Map].
  static ChatSource? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'chatSourcePublicServiceAnnouncement':
        return ChatSourcePublicServiceAnnouncement.fromMap(_map);
      case 'chatSourceMtprotoProxy':
        return ChatSourceMtprotoProxy.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes reactions available in the chat.
///
/// Inherited by [ChatAvailableReactionsAll], [ChatAvailableReactionsSome].
abstract class ChatAvailableReactions extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "chatAvailableReactions";

  /// Construct from [Map].
  static ChatAvailableReactions? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'chatAvailableReactionsAll':
        return ChatAvailableReactionsAll.fromMap(_map);
      case 'chatAvailableReactionsSome':
        return ChatAvailableReactionsSome.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a type of public chats.
///
/// Inherited by [PublicChatTypeIsLocationBased], [PublicChatTypeHasUsername].
abstract class PublicChatType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "publicChatType";

  /// Construct from [Map].
  static PublicChatType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'publicChatTypeIsLocationBased':
        return PublicChatTypeIsLocationBased.fromMap(_map);
      case 'publicChatTypeHasUsername':
        return PublicChatTypeHasUsername.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes actions which must be possible to do through a chat action bar.
///
/// Inherited by [ChatActionBarInviteMembers], [ChatActionBarReportSpam], [ChatActionBarSharePhoneNumber], [ChatActionBarReportAddBlock], [ChatActionBarReportUnrelatedLocation], [ChatActionBarJoinRequest], [ChatActionBarAddContact].
abstract class ChatActionBar extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "chatActionBar";

  /// Construct from [Map].
  static ChatActionBar? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'chatActionBarInviteMembers':
        return ChatActionBarInviteMembers.fromMap(_map);
      case 'chatActionBarReportSpam':
        return ChatActionBarReportSpam.fromMap(_map);
      case 'chatActionBarSharePhoneNumber':
        return ChatActionBarSharePhoneNumber.fromMap(_map);
      case 'chatActionBarReportAddBlock':
        return ChatActionBarReportAddBlock.fromMap(_map);
      case 'chatActionBarReportUnrelatedLocation':
        return ChatActionBarReportUnrelatedLocation.fromMap(_map);
      case 'chatActionBarJoinRequest':
        return ChatActionBarJoinRequest.fromMap(_map);
      case 'chatActionBarAddContact':
        return ChatActionBarAddContact.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a keyboard button type.
///
/// Inherited by [KeyboardButtonTypeText], [KeyboardButtonTypeRequestUser], [KeyboardButtonTypeWebApp], [KeyboardButtonTypeRequestChat], [KeyboardButtonTypeRequestPhoneNumber], [KeyboardButtonTypeRequestLocation], [KeyboardButtonTypeRequestPoll].
abstract class KeyboardButtonType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "keyboardButtonType";

  /// Construct from [Map].
  static KeyboardButtonType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'keyboardButtonTypeText':
        return KeyboardButtonTypeText.fromMap(_map);
      case 'keyboardButtonTypeRequestUser':
        return KeyboardButtonTypeRequestUser.fromMap(_map);
      case 'keyboardButtonTypeWebApp':
        return KeyboardButtonTypeWebApp.fromMap(_map);
      case 'keyboardButtonTypeRequestChat':
        return KeyboardButtonTypeRequestChat.fromMap(_map);
      case 'keyboardButtonTypeRequestPhoneNumber':
        return KeyboardButtonTypeRequestPhoneNumber.fromMap(_map);
      case 'keyboardButtonTypeRequestLocation':
        return KeyboardButtonTypeRequestLocation.fromMap(_map);
      case 'keyboardButtonTypeRequestPoll':
        return KeyboardButtonTypeRequestPoll.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the type of an inline keyboard button.
///
/// Inherited by [InlineKeyboardButtonTypeCallback], [InlineKeyboardButtonTypeUser], [InlineKeyboardButtonTypeSwitchInline], [InlineKeyboardButtonTypeLoginUrl], [InlineKeyboardButtonTypeCallbackGame], [InlineKeyboardButtonTypeBuy], [InlineKeyboardButtonTypeCallbackWithPassword], [InlineKeyboardButtonTypeWebApp], [InlineKeyboardButtonTypeUrl].
abstract class InlineKeyboardButtonType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "inlineKeyboardButtonType";

  /// Construct from [Map].
  static InlineKeyboardButtonType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'inlineKeyboardButtonTypeCallback':
        return InlineKeyboardButtonTypeCallback.fromMap(_map);
      case 'inlineKeyboardButtonTypeUser':
        return InlineKeyboardButtonTypeUser.fromMap(_map);
      case 'inlineKeyboardButtonTypeSwitchInline':
        return InlineKeyboardButtonTypeSwitchInline.fromMap(_map);
      case 'inlineKeyboardButtonTypeLoginUrl':
        return InlineKeyboardButtonTypeLoginUrl.fromMap(_map);
      case 'inlineKeyboardButtonTypeCallbackGame':
        return InlineKeyboardButtonTypeCallbackGame.fromMap(_map);
      case 'inlineKeyboardButtonTypeBuy':
        return InlineKeyboardButtonTypeBuy.fromMap(_map);
      case 'inlineKeyboardButtonTypeCallbackWithPassword':
        return InlineKeyboardButtonTypeCallbackWithPassword.fromMap(_map);
      case 'inlineKeyboardButtonTypeWebApp':
        return InlineKeyboardButtonTypeWebApp.fromMap(_map);
      case 'inlineKeyboardButtonTypeUrl':
        return InlineKeyboardButtonTypeUrl.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains a description of a custom keyboard and actions that can be done with it to quickly reply to bots.
///
/// Inherited by [ReplyMarkupShowKeyboard], [ReplyMarkupRemoveKeyboard], [ReplyMarkupInlineKeyboard], [ReplyMarkupForceReply].
abstract class ReplyMarkup extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "replyMarkup";

  /// Construct from [Map].
  static ReplyMarkup? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'replyMarkupShowKeyboard':
        return ReplyMarkupShowKeyboard.fromMap(_map);
      case 'replyMarkupRemoveKeyboard':
        return ReplyMarkupRemoveKeyboard.fromMap(_map);
      case 'replyMarkupInlineKeyboard':
        return ReplyMarkupInlineKeyboard.fromMap(_map);
      case 'replyMarkupForceReply':
        return ReplyMarkupForceReply.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains information about an inline button of type inlineKeyboardButtonTypeLoginUrl.
///
/// Inherited by [LoginUrlInfoRequestConfirmation], [LoginUrlInfoOpen].
abstract class LoginUrlInfo extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "loginUrlInfo";

  /// Construct from [Map].
  static LoginUrlInfo? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'loginUrlInfoRequestConfirmation':
        return LoginUrlInfoRequestConfirmation.fromMap(_map);
      case 'loginUrlInfoOpen':
        return LoginUrlInfoOpen.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a text object inside an instant-view web page.
///
/// Inherited by [RichTextIcon], [RichTextReference], [RichTextUnderline], [RichTexts], [RichTextStrikethrough], [RichTextSuperscript], [RichTextPhoneNumber], [RichTextPlain], [RichTextSubscript], [RichTextUrl], [RichTextAnchor], [RichTextAnchorLink], [RichTextEmailAddress], [RichTextItalic], [RichTextMarked], [RichTextFixed], [RichTextBold].
abstract class RichText extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "richText";

  /// Construct from [Map].
  static RichText? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'richTextIcon':
        return RichTextIcon.fromMap(_map);
      case 'richTextReference':
        return RichTextReference.fromMap(_map);
      case 'richTextUnderline':
        return RichTextUnderline.fromMap(_map);
      case 'richTexts':
        return RichTexts.fromMap(_map);
      case 'richTextStrikethrough':
        return RichTextStrikethrough.fromMap(_map);
      case 'richTextSuperscript':
        return RichTextSuperscript.fromMap(_map);
      case 'richTextPhoneNumber':
        return RichTextPhoneNumber.fromMap(_map);
      case 'richTextPlain':
        return RichTextPlain.fromMap(_map);
      case 'richTextSubscript':
        return RichTextSubscript.fromMap(_map);
      case 'richTextUrl':
        return RichTextUrl.fromMap(_map);
      case 'richTextAnchor':
        return RichTextAnchor.fromMap(_map);
      case 'richTextAnchorLink':
        return RichTextAnchorLink.fromMap(_map);
      case 'richTextEmailAddress':
        return RichTextEmailAddress.fromMap(_map);
      case 'richTextItalic':
        return RichTextItalic.fromMap(_map);
      case 'richTextMarked':
        return RichTextMarked.fromMap(_map);
      case 'richTextFixed':
        return RichTextFixed.fromMap(_map);
      case 'richTextBold':
        return RichTextBold.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a horizontal alignment of a table cell content.
///
/// Inherited by [PageBlockHorizontalAlignmentLeft], [PageBlockHorizontalAlignmentRight], [PageBlockHorizontalAlignmentCenter].
abstract class PageBlockHorizontalAlignment extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "pageBlockHorizontalAlignment";

  /// Construct from [Map].
  static PageBlockHorizontalAlignment? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'pageBlockHorizontalAlignmentLeft':
        return PageBlockHorizontalAlignmentLeft.fromMap(_map);
      case 'pageBlockHorizontalAlignmentRight':
        return PageBlockHorizontalAlignmentRight.fromMap(_map);
      case 'pageBlockHorizontalAlignmentCenter':
        return PageBlockHorizontalAlignmentCenter.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a Vertical alignment of a table cell content.
///
/// Inherited by [PageBlockVerticalAlignmentMiddle], [PageBlockVerticalAlignmentBottom], [PageBlockVerticalAlignmentTop].
abstract class PageBlockVerticalAlignment extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "pageBlockVerticalAlignment";

  /// Construct from [Map].
  static PageBlockVerticalAlignment? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'pageBlockVerticalAlignmentMiddle':
        return PageBlockVerticalAlignmentMiddle.fromMap(_map);
      case 'pageBlockVerticalAlignmentBottom':
        return PageBlockVerticalAlignmentBottom.fromMap(_map);
      case 'pageBlockVerticalAlignmentTop':
        return PageBlockVerticalAlignmentTop.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a block of an instant view web page.
///
/// Inherited by [PageBlockList], [PageBlockVideo], [PageBlockAnimation], [PageBlockRelatedArticles], [PageBlockAnchor], [PageBlockAudio], [PageBlockSlideshow], [PageBlockAuthorDate], [PageBlockFooter], [PageBlockEmbeddedPost], [PageBlockCollage], [PageBlockVoiceNote], [PageBlockKicker], [PageBlockChatLink], [PageBlockSubheader], [PageBlockTitle], [PageBlockPreformatted], [PageBlockMap], [PageBlockDetails], [PageBlockHeader], [PageBlockDivider], [PageBlockEmbedded], [PageBlockTable], [PageBlockPhoto], [PageBlockCover], [PageBlockPullQuote], [PageBlockParagraph], [PageBlockBlockQuote], [PageBlockSubtitle].
abstract class PageBlock extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "pageBlock";

  /// Construct from [Map].
  static PageBlock? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'pageBlockList':
        return PageBlockList.fromMap(_map);
      case 'pageBlockVideo':
        return PageBlockVideo.fromMap(_map);
      case 'pageBlockAnimation':
        return PageBlockAnimation.fromMap(_map);
      case 'pageBlockRelatedArticles':
        return PageBlockRelatedArticles.fromMap(_map);
      case 'pageBlockAnchor':
        return PageBlockAnchor.fromMap(_map);
      case 'pageBlockAudio':
        return PageBlockAudio.fromMap(_map);
      case 'pageBlockSlideshow':
        return PageBlockSlideshow.fromMap(_map);
      case 'pageBlockAuthorDate':
        return PageBlockAuthorDate.fromMap(_map);
      case 'pageBlockFooter':
        return PageBlockFooter.fromMap(_map);
      case 'pageBlockEmbeddedPost':
        return PageBlockEmbeddedPost.fromMap(_map);
      case 'pageBlockCollage':
        return PageBlockCollage.fromMap(_map);
      case 'pageBlockVoiceNote':
        return PageBlockVoiceNote.fromMap(_map);
      case 'pageBlockKicker':
        return PageBlockKicker.fromMap(_map);
      case 'pageBlockChatLink':
        return PageBlockChatLink.fromMap(_map);
      case 'pageBlockSubheader':
        return PageBlockSubheader.fromMap(_map);
      case 'pageBlockTitle':
        return PageBlockTitle.fromMap(_map);
      case 'pageBlockPreformatted':
        return PageBlockPreformatted.fromMap(_map);
      case 'pageBlockMap':
        return PageBlockMap.fromMap(_map);
      case 'pageBlockDetails':
        return PageBlockDetails.fromMap(_map);
      case 'pageBlockHeader':
        return PageBlockHeader.fromMap(_map);
      case 'pageBlockDivider':
        return PageBlockDivider.fromMap(_map);
      case 'pageBlockEmbedded':
        return PageBlockEmbedded.fromMap(_map);
      case 'pageBlockTable':
        return PageBlockTable.fromMap(_map);
      case 'pageBlockPhoto':
        return PageBlockPhoto.fromMap(_map);
      case 'pageBlockCover':
        return PageBlockCover.fromMap(_map);
      case 'pageBlockPullQuote':
        return PageBlockPullQuote.fromMap(_map);
      case 'pageBlockParagraph':
        return PageBlockParagraph.fromMap(_map);
      case 'pageBlockBlockQuote':
        return PageBlockBlockQuote.fromMap(_map);
      case 'pageBlockSubtitle':
        return PageBlockSubtitle.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains information about the payment method chosen by the user.
///
/// Inherited by [InputCredentialsGooglePay], [InputCredentialsApplePay], [InputCredentialsSaved], [InputCredentialsNew].
abstract class InputCredentials extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "inputCredentials";

  /// Construct from [Map].
  static InputCredentials? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'inputCredentialsGooglePay':
        return InputCredentialsGooglePay.fromMap(_map);
      case 'inputCredentialsApplePay':
        return InputCredentialsApplePay.fromMap(_map);
      case 'inputCredentialsSaved':
        return InputCredentialsSaved.fromMap(_map);
      case 'inputCredentialsNew':
        return InputCredentialsNew.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains information about a payment provider.
///
/// Inherited by [PaymentProviderSmartGlocal], [PaymentProviderStripe], [PaymentProviderOther].
abstract class PaymentProvider extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "paymentProvider";

  /// Construct from [Map].
  static PaymentProvider? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'paymentProviderSmartGlocal':
        return PaymentProviderSmartGlocal.fromMap(_map);
      case 'paymentProviderStripe':
        return PaymentProviderStripe.fromMap(_map);
      case 'paymentProviderOther':
        return PaymentProviderOther.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes an invoice to process.
///
/// Inherited by [InputInvoiceName], [InputInvoiceMessage].
abstract class InputInvoice extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "inputInvoice";

  /// Construct from [Map].
  static InputInvoice? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'inputInvoiceName':
        return InputInvoiceName.fromMap(_map);
      case 'inputInvoiceMessage':
        return InputInvoiceMessage.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a media, which is attached to an invoice.
///
/// Inherited by [MessageExtendedMediaPreview], [MessageExtendedMediaUnsupported], [MessageExtendedMediaVideo], [MessageExtendedMediaPhoto].
abstract class MessageExtendedMedia extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "messageExtendedMedia";

  /// Construct from [Map].
  static MessageExtendedMedia? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'messageExtendedMediaPreview':
        return MessageExtendedMediaPreview.fromMap(_map);
      case 'messageExtendedMediaUnsupported':
        return MessageExtendedMediaUnsupported.fromMap(_map);
      case 'messageExtendedMediaVideo':
        return MessageExtendedMediaVideo.fromMap(_map);
      case 'messageExtendedMediaPhoto':
        return MessageExtendedMediaPhoto.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains the type of a Telegram Passport element.
///
/// Inherited by [PassportElementTypePhoneNumber], [PassportElementTypeUtilityBill], [PassportElementTypeAddress], [PassportElementTypePassportRegistration], [PassportElementTypeRentalAgreement], [PassportElementTypeEmailAddress], [PassportElementTypeBankStatement], [PassportElementTypeDriverLicense], [PassportElementTypeInternalPassport], [PassportElementTypePassport], [PassportElementTypePersonalDetails], [PassportElementTypeTemporaryRegistration], [PassportElementTypeIdentityCard].
abstract class PassportElementType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "passportElementType";

  /// Construct from [Map].
  static PassportElementType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'passportElementTypePhoneNumber':
        return PassportElementTypePhoneNumber.fromMap(_map);
      case 'passportElementTypeUtilityBill':
        return PassportElementTypeUtilityBill.fromMap(_map);
      case 'passportElementTypeAddress':
        return PassportElementTypeAddress.fromMap(_map);
      case 'passportElementTypePassportRegistration':
        return PassportElementTypePassportRegistration.fromMap(_map);
      case 'passportElementTypeRentalAgreement':
        return PassportElementTypeRentalAgreement.fromMap(_map);
      case 'passportElementTypeEmailAddress':
        return PassportElementTypeEmailAddress.fromMap(_map);
      case 'passportElementTypeBankStatement':
        return PassportElementTypeBankStatement.fromMap(_map);
      case 'passportElementTypeDriverLicense':
        return PassportElementTypeDriverLicense.fromMap(_map);
      case 'passportElementTypeInternalPassport':
        return PassportElementTypeInternalPassport.fromMap(_map);
      case 'passportElementTypePassport':
        return PassportElementTypePassport.fromMap(_map);
      case 'passportElementTypePersonalDetails':
        return PassportElementTypePersonalDetails.fromMap(_map);
      case 'passportElementTypeTemporaryRegistration':
        return PassportElementTypeTemporaryRegistration.fromMap(_map);
      case 'passportElementTypeIdentityCard':
        return PassportElementTypeIdentityCard.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains information about a Telegram Passport element.
///
/// Inherited by [PassportElementTemporaryRegistration], [PassportElementRentalAgreement], [PassportElementUtilityBill], [PassportElementPassportRegistration], [PassportElementPassport], [PassportElementIdentityCard], [PassportElementDriverLicense], [PassportElementInternalPassport], [PassportElementEmailAddress], [PassportElementPersonalDetails], [PassportElementPhoneNumber], [PassportElementAddress], [PassportElementBankStatement].
abstract class PassportElement extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "passportElement";

  /// Construct from [Map].
  static PassportElement? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'passportElementTemporaryRegistration':
        return PassportElementTemporaryRegistration.fromMap(_map);
      case 'passportElementRentalAgreement':
        return PassportElementRentalAgreement.fromMap(_map);
      case 'passportElementUtilityBill':
        return PassportElementUtilityBill.fromMap(_map);
      case 'passportElementPassportRegistration':
        return PassportElementPassportRegistration.fromMap(_map);
      case 'passportElementPassport':
        return PassportElementPassport.fromMap(_map);
      case 'passportElementIdentityCard':
        return PassportElementIdentityCard.fromMap(_map);
      case 'passportElementDriverLicense':
        return PassportElementDriverLicense.fromMap(_map);
      case 'passportElementInternalPassport':
        return PassportElementInternalPassport.fromMap(_map);
      case 'passportElementEmailAddress':
        return PassportElementEmailAddress.fromMap(_map);
      case 'passportElementPersonalDetails':
        return PassportElementPersonalDetails.fromMap(_map);
      case 'passportElementPhoneNumber':
        return PassportElementPhoneNumber.fromMap(_map);
      case 'passportElementAddress':
        return PassportElementAddress.fromMap(_map);
      case 'passportElementBankStatement':
        return PassportElementBankStatement.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains information about a Telegram Passport element to be saved.
///
/// Inherited by [InputPassportElementInternalPassport], [InputPassportElementPersonalDetails], [InputPassportElementEmailAddress], [InputPassportElementIdentityCard], [InputPassportElementPassportRegistration], [InputPassportElementPassport], [InputPassportElementUtilityBill], [InputPassportElementPhoneNumber], [InputPassportElementBankStatement], [InputPassportElementRentalAgreement], [InputPassportElementDriverLicense], [InputPassportElementTemporaryRegistration], [InputPassportElementAddress].
abstract class InputPassportElement extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "inputPassportElement";

  /// Construct from [Map].
  static InputPassportElement? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'inputPassportElementInternalPassport':
        return InputPassportElementInternalPassport.fromMap(_map);
      case 'inputPassportElementPersonalDetails':
        return InputPassportElementPersonalDetails.fromMap(_map);
      case 'inputPassportElementEmailAddress':
        return InputPassportElementEmailAddress.fromMap(_map);
      case 'inputPassportElementIdentityCard':
        return InputPassportElementIdentityCard.fromMap(_map);
      case 'inputPassportElementPassportRegistration':
        return InputPassportElementPassportRegistration.fromMap(_map);
      case 'inputPassportElementPassport':
        return InputPassportElementPassport.fromMap(_map);
      case 'inputPassportElementUtilityBill':
        return InputPassportElementUtilityBill.fromMap(_map);
      case 'inputPassportElementPhoneNumber':
        return InputPassportElementPhoneNumber.fromMap(_map);
      case 'inputPassportElementBankStatement':
        return InputPassportElementBankStatement.fromMap(_map);
      case 'inputPassportElementRentalAgreement':
        return InputPassportElementRentalAgreement.fromMap(_map);
      case 'inputPassportElementDriverLicense':
        return InputPassportElementDriverLicense.fromMap(_map);
      case 'inputPassportElementTemporaryRegistration':
        return InputPassportElementTemporaryRegistration.fromMap(_map);
      case 'inputPassportElementAddress':
        return InputPassportElementAddress.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains the description of an error in a Telegram Passport element.
///
/// Inherited by [PassportElementErrorSourceDataField], [PassportElementErrorSourceFile], [PassportElementErrorSourceReverseSide], [PassportElementErrorSourceUnspecified], [PassportElementErrorSourceTranslationFiles], [PassportElementErrorSourceFiles], [PassportElementErrorSourceTranslationFile], [PassportElementErrorSourceFrontSide], [PassportElementErrorSourceSelfie].
abstract class PassportElementErrorSource extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "passportElementErrorSource";

  /// Construct from [Map].
  static PassportElementErrorSource? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'passportElementErrorSourceDataField':
        return PassportElementErrorSourceDataField.fromMap(_map);
      case 'passportElementErrorSourceFile':
        return PassportElementErrorSourceFile.fromMap(_map);
      case 'passportElementErrorSourceReverseSide':
        return PassportElementErrorSourceReverseSide.fromMap(_map);
      case 'passportElementErrorSourceUnspecified':
        return PassportElementErrorSourceUnspecified.fromMap(_map);
      case 'passportElementErrorSourceTranslationFiles':
        return PassportElementErrorSourceTranslationFiles.fromMap(_map);
      case 'passportElementErrorSourceFiles':
        return PassportElementErrorSourceFiles.fromMap(_map);
      case 'passportElementErrorSourceTranslationFile':
        return PassportElementErrorSourceTranslationFile.fromMap(_map);
      case 'passportElementErrorSourceFrontSide':
        return PassportElementErrorSourceFrontSide.fromMap(_map);
      case 'passportElementErrorSourceSelfie':
        return PassportElementErrorSourceSelfie.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains the description of an error in a Telegram Passport element; for bots only.
///
/// Inherited by [InputPassportElementErrorSourceSelfie], [InputPassportElementErrorSourceFiles], [InputPassportElementErrorSourceUnspecified], [InputPassportElementErrorSourceReverseSide], [InputPassportElementErrorSourceFrontSide], [InputPassportElementErrorSourceTranslationFiles], [InputPassportElementErrorSourceDataField], [InputPassportElementErrorSourceTranslationFile], [InputPassportElementErrorSourceFile].
abstract class InputPassportElementErrorSource extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "inputPassportElementErrorSource";

  /// Construct from [Map].
  static InputPassportElementErrorSource? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'inputPassportElementErrorSourceSelfie':
        return InputPassportElementErrorSourceSelfie.fromMap(_map);
      case 'inputPassportElementErrorSourceFiles':
        return InputPassportElementErrorSourceFiles.fromMap(_map);
      case 'inputPassportElementErrorSourceUnspecified':
        return InputPassportElementErrorSourceUnspecified.fromMap(_map);
      case 'inputPassportElementErrorSourceReverseSide':
        return InputPassportElementErrorSourceReverseSide.fromMap(_map);
      case 'inputPassportElementErrorSourceFrontSide':
        return InputPassportElementErrorSourceFrontSide.fromMap(_map);
      case 'inputPassportElementErrorSourceTranslationFiles':
        return InputPassportElementErrorSourceTranslationFiles.fromMap(_map);
      case 'inputPassportElementErrorSourceDataField':
        return InputPassportElementErrorSourceDataField.fromMap(_map);
      case 'inputPassportElementErrorSourceTranslationFile':
        return InputPassportElementErrorSourceTranslationFile.fromMap(_map);
      case 'inputPassportElementErrorSourceFile':
        return InputPassportElementErrorSourceFile.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains the content of a message.
///
/// Inherited by [MessageVideoNote], [MessageCustomServiceAction], [MessageScreenshotTaken], [MessageUserShared], [MessageContactRegistered], [MessageGame], [MessageGameScore], [MessageVideo], [MessageForumTopicCreated], [MessageWebAppDataSent], [MessageForumTopicEdited], [MessageUnsupported], [MessageGiftedPremium], [MessageVideoChatScheduled], [MessageDice], [MessageDocument], [MessageChatChangeTitle], [MessageWebAppDataReceived], [MessageChatDeletePhoto], [MessageSuggestProfilePhoto], [MessageChatJoinByLink], [MessageExpiredPhoto], [MessagePassportDataSent], [MessageProximityAlertTriggered], [MessageForumTopicIsHiddenToggled], [MessageLocation], [MessageVoiceNote], [MessageVideoChatEnded], [MessageBasicGroupChatCreate], [MessageVenue], [MessageStory], [MessagePinMessage], [MessageForumTopicIsClosedToggled], [MessageContact], [MessageVideoChatStarted], [MessageSupergroupChatCreate], [MessageExpiredVideo], [MessageInvoice], [MessageChatJoinByRequest], [MessageChatSetMessageAutoDeleteTime], [MessagePaymentSuccessfulBot], [MessageChatSetBackground], [MessageChatUpgradeFrom], [MessageChatChangePhoto], [MessageChatAddMembers], [MessageSticker], [MessageChatSetTheme], [MessageChatShared], [MessagePassportDataReceived], [MessageAudio], [MessagePaymentSuccessful], [MessageInviteVideoChatParticipants], [MessagePhoto], [MessageText], [MessageAnimatedEmoji], [MessageAnimation], [MessageCall], [MessageChatDeleteMember], [MessageChatUpgradeTo], [MessageBotWriteAccessAllowed], [MessageWebsiteConnected], [MessagePoll].
abstract class MessageContent extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "messageContent";

  /// Construct from [Map].
  static MessageContent? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'messageVideoNote':
        return MessageVideoNote.fromMap(_map);
      case 'messageCustomServiceAction':
        return MessageCustomServiceAction.fromMap(_map);
      case 'messageScreenshotTaken':
        return MessageScreenshotTaken.fromMap(_map);
      case 'messageUserShared':
        return MessageUserShared.fromMap(_map);
      case 'messageContactRegistered':
        return MessageContactRegistered.fromMap(_map);
      case 'messageGame':
        return MessageGame.fromMap(_map);
      case 'messageGameScore':
        return MessageGameScore.fromMap(_map);
      case 'messageVideo':
        return MessageVideo.fromMap(_map);
      case 'messageForumTopicCreated':
        return MessageForumTopicCreated.fromMap(_map);
      case 'messageWebAppDataSent':
        return MessageWebAppDataSent.fromMap(_map);
      case 'messageForumTopicEdited':
        return MessageForumTopicEdited.fromMap(_map);
      case 'messageUnsupported':
        return MessageUnsupported.fromMap(_map);
      case 'messageGiftedPremium':
        return MessageGiftedPremium.fromMap(_map);
      case 'messageVideoChatScheduled':
        return MessageVideoChatScheduled.fromMap(_map);
      case 'messageDice':
        return MessageDice.fromMap(_map);
      case 'messageDocument':
        return MessageDocument.fromMap(_map);
      case 'messageChatChangeTitle':
        return MessageChatChangeTitle.fromMap(_map);
      case 'messageWebAppDataReceived':
        return MessageWebAppDataReceived.fromMap(_map);
      case 'messageChatDeletePhoto':
        return MessageChatDeletePhoto.fromMap(_map);
      case 'messageSuggestProfilePhoto':
        return MessageSuggestProfilePhoto.fromMap(_map);
      case 'messageChatJoinByLink':
        return MessageChatJoinByLink.fromMap(_map);
      case 'messageExpiredPhoto':
        return MessageExpiredPhoto.fromMap(_map);
      case 'messagePassportDataSent':
        return MessagePassportDataSent.fromMap(_map);
      case 'messageProximityAlertTriggered':
        return MessageProximityAlertTriggered.fromMap(_map);
      case 'messageForumTopicIsHiddenToggled':
        return MessageForumTopicIsHiddenToggled.fromMap(_map);
      case 'messageLocation':
        return MessageLocation.fromMap(_map);
      case 'messageVoiceNote':
        return MessageVoiceNote.fromMap(_map);
      case 'messageVideoChatEnded':
        return MessageVideoChatEnded.fromMap(_map);
      case 'messageBasicGroupChatCreate':
        return MessageBasicGroupChatCreate.fromMap(_map);
      case 'messageVenue':
        return MessageVenue.fromMap(_map);
      case 'messageStory':
        return MessageStory.fromMap(_map);
      case 'messagePinMessage':
        return MessagePinMessage.fromMap(_map);
      case 'messageForumTopicIsClosedToggled':
        return MessageForumTopicIsClosedToggled.fromMap(_map);
      case 'messageContact':
        return MessageContact.fromMap(_map);
      case 'messageVideoChatStarted':
        return MessageVideoChatStarted.fromMap(_map);
      case 'messageSupergroupChatCreate':
        return MessageSupergroupChatCreate.fromMap(_map);
      case 'messageExpiredVideo':
        return MessageExpiredVideo.fromMap(_map);
      case 'messageInvoice':
        return MessageInvoice.fromMap(_map);
      case 'messageChatJoinByRequest':
        return MessageChatJoinByRequest.fromMap(_map);
      case 'messageChatSetMessageAutoDeleteTime':
        return MessageChatSetMessageAutoDeleteTime.fromMap(_map);
      case 'messagePaymentSuccessfulBot':
        return MessagePaymentSuccessfulBot.fromMap(_map);
      case 'messageChatSetBackground':
        return MessageChatSetBackground.fromMap(_map);
      case 'messageChatUpgradeFrom':
        return MessageChatUpgradeFrom.fromMap(_map);
      case 'messageChatChangePhoto':
        return MessageChatChangePhoto.fromMap(_map);
      case 'messageChatAddMembers':
        return MessageChatAddMembers.fromMap(_map);
      case 'messageSticker':
        return MessageSticker.fromMap(_map);
      case 'messageChatSetTheme':
        return MessageChatSetTheme.fromMap(_map);
      case 'messageChatShared':
        return MessageChatShared.fromMap(_map);
      case 'messagePassportDataReceived':
        return MessagePassportDataReceived.fromMap(_map);
      case 'messageAudio':
        return MessageAudio.fromMap(_map);
      case 'messagePaymentSuccessful':
        return MessagePaymentSuccessful.fromMap(_map);
      case 'messageInviteVideoChatParticipants':
        return MessageInviteVideoChatParticipants.fromMap(_map);
      case 'messagePhoto':
        return MessagePhoto.fromMap(_map);
      case 'messageText':
        return MessageText.fromMap(_map);
      case 'messageAnimatedEmoji':
        return MessageAnimatedEmoji.fromMap(_map);
      case 'messageAnimation':
        return MessageAnimation.fromMap(_map);
      case 'messageCall':
        return MessageCall.fromMap(_map);
      case 'messageChatDeleteMember':
        return MessageChatDeleteMember.fromMap(_map);
      case 'messageChatUpgradeTo':
        return MessageChatUpgradeTo.fromMap(_map);
      case 'messageBotWriteAccessAllowed':
        return MessageBotWriteAccessAllowed.fromMap(_map);
      case 'messageWebsiteConnected':
        return MessageWebsiteConnected.fromMap(_map);
      case 'messagePoll':
        return MessagePoll.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents a part of the text which must be formatted differently.
///
/// Inherited by [TextEntityTypeBold], [TextEntityTypeCustomEmoji], [TextEntityTypeSpoiler], [TextEntityTypeUnderline], [TextEntityTypeItalic], [TextEntityTypeBotCommand], [TextEntityTypeMention], [TextEntityTypeUrl], [TextEntityTypePre], [TextEntityTypeHashtag], [TextEntityTypeStrikethrough], [TextEntityTypePhoneNumber], [TextEntityTypeTextUrl], [TextEntityTypeEmailAddress], [TextEntityTypeBankCardNumber], [TextEntityTypeMediaTimestamp], [TextEntityTypeCashtag], [TextEntityTypeMentionName], [TextEntityTypeCode], [TextEntityTypePreCode].
abstract class TextEntityType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "textEntityType";

  /// Construct from [Map].
  static TextEntityType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'textEntityTypeBold':
        return TextEntityTypeBold.fromMap(_map);
      case 'textEntityTypeCustomEmoji':
        return TextEntityTypeCustomEmoji.fromMap(_map);
      case 'textEntityTypeSpoiler':
        return TextEntityTypeSpoiler.fromMap(_map);
      case 'textEntityTypeUnderline':
        return TextEntityTypeUnderline.fromMap(_map);
      case 'textEntityTypeItalic':
        return TextEntityTypeItalic.fromMap(_map);
      case 'textEntityTypeBotCommand':
        return TextEntityTypeBotCommand.fromMap(_map);
      case 'textEntityTypeMention':
        return TextEntityTypeMention.fromMap(_map);
      case 'textEntityTypeUrl':
        return TextEntityTypeUrl.fromMap(_map);
      case 'textEntityTypePre':
        return TextEntityTypePre.fromMap(_map);
      case 'textEntityTypeHashtag':
        return TextEntityTypeHashtag.fromMap(_map);
      case 'textEntityTypeStrikethrough':
        return TextEntityTypeStrikethrough.fromMap(_map);
      case 'textEntityTypePhoneNumber':
        return TextEntityTypePhoneNumber.fromMap(_map);
      case 'textEntityTypeTextUrl':
        return TextEntityTypeTextUrl.fromMap(_map);
      case 'textEntityTypeEmailAddress':
        return TextEntityTypeEmailAddress.fromMap(_map);
      case 'textEntityTypeBankCardNumber':
        return TextEntityTypeBankCardNumber.fromMap(_map);
      case 'textEntityTypeMediaTimestamp':
        return TextEntityTypeMediaTimestamp.fromMap(_map);
      case 'textEntityTypeCashtag':
        return TextEntityTypeCashtag.fromMap(_map);
      case 'textEntityTypeMentionName':
        return TextEntityTypeMentionName.fromMap(_map);
      case 'textEntityTypeCode':
        return TextEntityTypeCode.fromMap(_map);
      case 'textEntityTypePreCode':
        return TextEntityTypePreCode.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains information about the time when a scheduled message will be sent.
///
/// Inherited by [MessageSchedulingStateSendAtDate], [MessageSchedulingStateSendWhenOnline].
abstract class MessageSchedulingState extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "messageSchedulingState";

  /// Construct from [Map].
  static MessageSchedulingState? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'messageSchedulingStateSendAtDate':
        return MessageSchedulingStateSendAtDate.fromMap(_map);
      case 'messageSchedulingStateSendWhenOnline':
        return MessageSchedulingStateSendWhenOnline.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes when a message will be self-destructed.
///
/// Inherited by [MessageSelfDestructTypeTimer], [MessageSelfDestructTypeImmediately].
abstract class MessageSelfDestructType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "messageSelfDestructType";

  /// Construct from [Map].
  static MessageSelfDestructType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'messageSelfDestructTypeTimer':
        return MessageSelfDestructTypeTimer.fromMap(_map);
      case 'messageSelfDestructTypeImmediately':
        return MessageSelfDestructTypeImmediately.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// The content of a message to send.
///
/// Inherited by [InputMessageDice], [InputMessageAudio], [InputMessageText], [InputMessageAnimation], [InputMessageSticker], [InputMessageStory], [InputMessageInvoice], [InputMessagePhoto], [InputMessageLocation], [InputMessageForwarded], [InputMessageVoiceNote], [InputMessageVideo], [InputMessageVenue], [InputMessageDocument], [InputMessageVideoNote], [InputMessagePoll], [InputMessageContact], [InputMessageGame].
abstract class InputMessageContent extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "inputMessageContent";

  /// Construct from [Map].
  static InputMessageContent? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'inputMessageDice':
        return InputMessageDice.fromMap(_map);
      case 'inputMessageAudio':
        return InputMessageAudio.fromMap(_map);
      case 'inputMessageText':
        return InputMessageText.fromMap(_map);
      case 'inputMessageAnimation':
        return InputMessageAnimation.fromMap(_map);
      case 'inputMessageSticker':
        return InputMessageSticker.fromMap(_map);
      case 'inputMessageStory':
        return InputMessageStory.fromMap(_map);
      case 'inputMessageInvoice':
        return InputMessageInvoice.fromMap(_map);
      case 'inputMessagePhoto':
        return InputMessagePhoto.fromMap(_map);
      case 'inputMessageLocation':
        return InputMessageLocation.fromMap(_map);
      case 'inputMessageForwarded':
        return InputMessageForwarded.fromMap(_map);
      case 'inputMessageVoiceNote':
        return InputMessageVoiceNote.fromMap(_map);
      case 'inputMessageVideo':
        return InputMessageVideo.fromMap(_map);
      case 'inputMessageVenue':
        return InputMessageVenue.fromMap(_map);
      case 'inputMessageDocument':
        return InputMessageDocument.fromMap(_map);
      case 'inputMessageVideoNote':
        return InputMessageVideoNote.fromMap(_map);
      case 'inputMessagePoll':
        return InputMessagePoll.fromMap(_map);
      case 'inputMessageContact':
        return InputMessageContact.fromMap(_map);
      case 'inputMessageGame':
        return InputMessageGame.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents a filter for message search results.
///
/// Inherited by [SearchMessagesFilterUnreadReaction], [SearchMessagesFilterAudio], [SearchMessagesFilterFailedToSend], [SearchMessagesFilterVoiceAndVideoNote], [SearchMessagesFilterChatPhoto], [SearchMessagesFilterAnimation], [SearchMessagesFilterVoiceNote], [SearchMessagesFilterDocument], [SearchMessagesFilterPhotoAndVideo], [SearchMessagesFilterUnreadMention], [SearchMessagesFilterPinned], [SearchMessagesFilterMention], [SearchMessagesFilterEmpty], [SearchMessagesFilterVideoNote], [SearchMessagesFilterUrl], [SearchMessagesFilterVideo], [SearchMessagesFilterPhoto].
abstract class SearchMessagesFilter extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "searchMessagesFilter";

  /// Construct from [Map].
  static SearchMessagesFilter? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'searchMessagesFilterUnreadReaction':
        return SearchMessagesFilterUnreadReaction.fromMap(_map);
      case 'searchMessagesFilterAudio':
        return SearchMessagesFilterAudio.fromMap(_map);
      case 'searchMessagesFilterFailedToSend':
        return SearchMessagesFilterFailedToSend.fromMap(_map);
      case 'searchMessagesFilterVoiceAndVideoNote':
        return SearchMessagesFilterVoiceAndVideoNote.fromMap(_map);
      case 'searchMessagesFilterChatPhoto':
        return SearchMessagesFilterChatPhoto.fromMap(_map);
      case 'searchMessagesFilterAnimation':
        return SearchMessagesFilterAnimation.fromMap(_map);
      case 'searchMessagesFilterVoiceNote':
        return SearchMessagesFilterVoiceNote.fromMap(_map);
      case 'searchMessagesFilterDocument':
        return SearchMessagesFilterDocument.fromMap(_map);
      case 'searchMessagesFilterPhotoAndVideo':
        return SearchMessagesFilterPhotoAndVideo.fromMap(_map);
      case 'searchMessagesFilterUnreadMention':
        return SearchMessagesFilterUnreadMention.fromMap(_map);
      case 'searchMessagesFilterPinned':
        return SearchMessagesFilterPinned.fromMap(_map);
      case 'searchMessagesFilterMention':
        return SearchMessagesFilterMention.fromMap(_map);
      case 'searchMessagesFilterEmpty':
        return SearchMessagesFilterEmpty.fromMap(_map);
      case 'searchMessagesFilterVideoNote':
        return SearchMessagesFilterVideoNote.fromMap(_map);
      case 'searchMessagesFilterUrl':
        return SearchMessagesFilterUrl.fromMap(_map);
      case 'searchMessagesFilterVideo':
        return SearchMessagesFilterVideo.fromMap(_map);
      case 'searchMessagesFilterPhoto':
        return SearchMessagesFilterPhoto.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the different types of activity in a chat.
///
/// Inherited by [ChatActionRecordingVideo], [ChatActionUploadingDocument], [ChatActionStartPlayingGame], [ChatActionChoosingContact], [ChatActionRecordingVideoNote], [ChatActionWatchingAnimations], [ChatActionChoosingSticker], [ChatActionUploadingVideo], [ChatActionChoosingLocation], [ChatActionCancel], [ChatActionTyping], [ChatActionUploadingPhoto], [ChatActionUploadingVoiceNote], [ChatActionUploadingVideoNote], [ChatActionRecordingVoiceNote].
abstract class ChatAction extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "chatAction";

  /// Construct from [Map].
  static ChatAction? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'chatActionRecordingVideo':
        return ChatActionRecordingVideo.fromMap(_map);
      case 'chatActionUploadingDocument':
        return ChatActionUploadingDocument.fromMap(_map);
      case 'chatActionStartPlayingGame':
        return ChatActionStartPlayingGame.fromMap(_map);
      case 'chatActionChoosingContact':
        return ChatActionChoosingContact.fromMap(_map);
      case 'chatActionRecordingVideoNote':
        return ChatActionRecordingVideoNote.fromMap(_map);
      case 'chatActionWatchingAnimations':
        return ChatActionWatchingAnimations.fromMap(_map);
      case 'chatActionChoosingSticker':
        return ChatActionChoosingSticker.fromMap(_map);
      case 'chatActionUploadingVideo':
        return ChatActionUploadingVideo.fromMap(_map);
      case 'chatActionChoosingLocation':
        return ChatActionChoosingLocation.fromMap(_map);
      case 'chatActionCancel':
        return ChatActionCancel.fromMap(_map);
      case 'chatActionTyping':
        return ChatActionTyping.fromMap(_map);
      case 'chatActionUploadingPhoto':
        return ChatActionUploadingPhoto.fromMap(_map);
      case 'chatActionUploadingVoiceNote':
        return ChatActionUploadingVoiceNote.fromMap(_map);
      case 'chatActionUploadingVideoNote':
        return ChatActionUploadingVideoNote.fromMap(_map);
      case 'chatActionRecordingVoiceNote':
        return ChatActionRecordingVoiceNote.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the last time the user was online.
///
/// Inherited by [UserStatusOnline], [UserStatusEmpty], [UserStatusOffline], [UserStatusLastMonth], [UserStatusRecently], [UserStatusLastWeek].
abstract class UserStatus extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "userStatus";

  /// Construct from [Map].
  static UserStatus? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'userStatusOnline':
        return UserStatusOnline.fromMap(_map);
      case 'userStatusEmpty':
        return UserStatusEmpty.fromMap(_map);
      case 'userStatusOffline':
        return UserStatusOffline.fromMap(_map);
      case 'userStatusLastMonth':
        return UserStatusLastMonth.fromMap(_map);
      case 'userStatusRecently':
        return UserStatusRecently.fromMap(_map);
      case 'userStatusLastWeek':
        return UserStatusLastWeek.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes type of an emoji category.
///
/// Inherited by [EmojiCategoryTypeChatPhoto], [EmojiCategoryTypeDefault], [EmojiCategoryTypeEmojiStatus].
abstract class EmojiCategoryType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "emojiCategoryType";

  /// Construct from [Map].
  static EmojiCategoryType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'emojiCategoryTypeChatPhoto':
        return EmojiCategoryTypeChatPhoto.fromMap(_map);
      case 'emojiCategoryTypeDefault':
        return EmojiCategoryTypeDefault.fromMap(_map);
      case 'emojiCategoryTypeEmojiStatus':
        return EmojiCategoryTypeEmojiStatus.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes type of a clickable rectangle area on a story media.
///
/// Inherited by [StoryAreaTypeSuggestedReaction], [StoryAreaTypeVenue], [StoryAreaTypeLocation].
abstract class StoryAreaType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "storyAreaType";

  /// Construct from [Map].
  static StoryAreaType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'storyAreaTypeSuggestedReaction':
        return StoryAreaTypeSuggestedReaction.fromMap(_map);
      case 'storyAreaTypeVenue':
        return StoryAreaTypeVenue.fromMap(_map);
      case 'storyAreaTypeLocation':
        return StoryAreaTypeLocation.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes type of a clickable rectangle area on a story media to be added.
///
/// Inherited by [InputStoryAreaTypeFoundVenue], [InputStoryAreaTypeLocation], [InputStoryAreaTypeSuggestedReaction], [InputStoryAreaTypePreviousVenue].
abstract class InputStoryAreaType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "inputStoryAreaType";

  /// Construct from [Map].
  static InputStoryAreaType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'inputStoryAreaTypeFoundVenue':
        return InputStoryAreaTypeFoundVenue.fromMap(_map);
      case 'inputStoryAreaTypeLocation':
        return InputStoryAreaTypeLocation.fromMap(_map);
      case 'inputStoryAreaTypeSuggestedReaction':
        return InputStoryAreaTypeSuggestedReaction.fromMap(_map);
      case 'inputStoryAreaTypePreviousVenue':
        return InputStoryAreaTypePreviousVenue.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains the content of a story.
///
/// Inherited by [StoryContentVideo], [StoryContentUnsupported], [StoryContentPhoto].
abstract class StoryContent extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "storyContent";

  /// Construct from [Map].
  static StoryContent? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'storyContentVideo':
        return StoryContentVideo.fromMap(_map);
      case 'storyContentUnsupported':
        return StoryContentUnsupported.fromMap(_map);
      case 'storyContentPhoto':
        return StoryContentPhoto.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// The content of a story to send.
///
/// Inherited by [InputStoryContentPhoto], [InputStoryContentVideo].
abstract class InputStoryContent extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "inputStoryContent";

  /// Construct from [Map].
  static InputStoryContent? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'inputStoryContentPhoto':
        return InputStoryContentPhoto.fromMap(_map);
      case 'inputStoryContentVideo':
        return InputStoryContentVideo.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a list of stories.
///
/// Inherited by [StoryListArchive], [StoryListMain].
abstract class StoryList extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "storyList";

  /// Construct from [Map].
  static StoryList? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'storyListArchive':
        return StoryListArchive.fromMap(_map);
      case 'storyListMain':
        return StoryListMain.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the reason why a call was discarded.
///
/// Inherited by [CallDiscardReasonDisconnected], [CallDiscardReasonEmpty], [CallDiscardReasonHungUp], [CallDiscardReasonDeclined], [CallDiscardReasonMissed].
abstract class CallDiscardReason extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "callDiscardReason";

  /// Construct from [Map].
  static CallDiscardReason? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'callDiscardReasonDisconnected':
        return CallDiscardReasonDisconnected.fromMap(_map);
      case 'callDiscardReasonEmpty':
        return CallDiscardReasonEmpty.fromMap(_map);
      case 'callDiscardReasonHungUp':
        return CallDiscardReasonHungUp.fromMap(_map);
      case 'callDiscardReasonDeclined':
        return CallDiscardReasonDeclined.fromMap(_map);
      case 'callDiscardReasonMissed':
        return CallDiscardReasonMissed.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the type of a call server.
///
/// Inherited by [CallServerTypeTelegramReflector], [CallServerTypeWebrtc].
abstract class CallServerType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "callServerType";

  /// Construct from [Map].
  static CallServerType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'callServerTypeTelegramReflector':
        return CallServerTypeTelegramReflector.fromMap(_map);
      case 'callServerTypeWebrtc':
        return CallServerTypeWebrtc.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the current call state.
///
/// Inherited by [CallStateError], [CallStateDiscarded], [CallStateExchangingKeys], [CallStatePending], [CallStateReady], [CallStateHangingUp].
abstract class CallState extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "callState";

  /// Construct from [Map].
  static CallState? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'callStateError':
        return CallStateError.fromMap(_map);
      case 'callStateDiscarded':
        return CallStateDiscarded.fromMap(_map);
      case 'callStateExchangingKeys':
        return CallStateExchangingKeys.fromMap(_map);
      case 'callStatePending':
        return CallStatePending.fromMap(_map);
      case 'callStateReady':
        return CallStateReady.fromMap(_map);
      case 'callStateHangingUp':
        return CallStateHangingUp.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the quality of a group call video.
///
/// Inherited by [GroupCallVideoQualityMedium], [GroupCallVideoQualityThumbnail], [GroupCallVideoQualityFull].
abstract class GroupCallVideoQuality extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "groupCallVideoQuality";

  /// Construct from [Map].
  static GroupCallVideoQuality? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'groupCallVideoQualityMedium':
        return GroupCallVideoQualityMedium.fromMap(_map);
      case 'groupCallVideoQualityThumbnail':
        return GroupCallVideoQualityThumbnail.fromMap(_map);
      case 'groupCallVideoQualityFull':
        return GroupCallVideoQualityFull.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the exact type of a problem with a call.
///
/// Inherited by [CallProblemInterruptions], [CallProblemDistortedVideo], [CallProblemEcho], [CallProblemDistortedSpeech], [CallProblemPixelatedVideo], [CallProblemSilentLocal], [CallProblemSilentRemote], [CallProblemNoise], [CallProblemDropped].
abstract class CallProblem extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "callProblem";

  /// Construct from [Map].
  static CallProblem? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'callProblemInterruptions':
        return CallProblemInterruptions.fromMap(_map);
      case 'callProblemDistortedVideo':
        return CallProblemDistortedVideo.fromMap(_map);
      case 'callProblemEcho':
        return CallProblemEcho.fromMap(_map);
      case 'callProblemDistortedSpeech':
        return CallProblemDistortedSpeech.fromMap(_map);
      case 'callProblemPixelatedVideo':
        return CallProblemPixelatedVideo.fromMap(_map);
      case 'callProblemSilentLocal':
        return CallProblemSilentLocal.fromMap(_map);
      case 'callProblemSilentRemote':
        return CallProblemSilentRemote.fromMap(_map);
      case 'callProblemNoise':
        return CallProblemNoise.fromMap(_map);
      case 'callProblemDropped':
        return CallProblemDropped.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains settings for Firebase Authentication in the official applications.
///
/// Inherited by [FirebaseAuthenticationSettingsIos], [FirebaseAuthenticationSettingsAndroid].
abstract class FirebaseAuthenticationSettings extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "firebaseAuthenticationSettings";

  /// Construct from [Map].
  static FirebaseAuthenticationSettings? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'firebaseAuthenticationSettingsIos':
        return FirebaseAuthenticationSettingsIos.fromMap(_map);
      case 'firebaseAuthenticationSettingsAndroid':
        return FirebaseAuthenticationSettingsAndroid.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains animated stickers which must be used for dice animation rendering.
///
/// Inherited by [DiceStickersRegular], [DiceStickersSlotMachine].
abstract class DiceStickers extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "diceStickers";

  /// Construct from [Map].
  static DiceStickers? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'diceStickersRegular':
        return DiceStickersRegular.fromMap(_map);
      case 'diceStickersSlotMachine':
        return DiceStickersSlotMachine.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes result of speech recognition in a voice note.
///
/// Inherited by [SpeechRecognitionResultError], [SpeechRecognitionResultText], [SpeechRecognitionResultPending].
abstract class SpeechRecognitionResult extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "speechRecognitionResult";

  /// Construct from [Map].
  static SpeechRecognitionResult? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'speechRecognitionResultError':
        return SpeechRecognitionResultError.fromMap(_map);
      case 'speechRecognitionResultText':
        return SpeechRecognitionResultText.fromMap(_map);
      case 'speechRecognitionResultPending':
        return SpeechRecognitionResultPending.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents a single result of an inline query; for bots only.
///
/// Inherited by [InputInlineQueryResultAnimation], [InputInlineQueryResultVenue], [InputInlineQueryResultSticker], [InputInlineQueryResultGame], [InputInlineQueryResultVideo], [InputInlineQueryResultContact], [InputInlineQueryResultArticle], [InputInlineQueryResultAudio], [InputInlineQueryResultPhoto], [InputInlineQueryResultLocation], [InputInlineQueryResultDocument], [InputInlineQueryResultVoiceNote].
abstract class InputInlineQueryResult extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "inputInlineQueryResult";

  /// Construct from [Map].
  static InputInlineQueryResult? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'inputInlineQueryResultAnimation':
        return InputInlineQueryResultAnimation.fromMap(_map);
      case 'inputInlineQueryResultVenue':
        return InputInlineQueryResultVenue.fromMap(_map);
      case 'inputInlineQueryResultSticker':
        return InputInlineQueryResultSticker.fromMap(_map);
      case 'inputInlineQueryResultGame':
        return InputInlineQueryResultGame.fromMap(_map);
      case 'inputInlineQueryResultVideo':
        return InputInlineQueryResultVideo.fromMap(_map);
      case 'inputInlineQueryResultContact':
        return InputInlineQueryResultContact.fromMap(_map);
      case 'inputInlineQueryResultArticle':
        return InputInlineQueryResultArticle.fromMap(_map);
      case 'inputInlineQueryResultAudio':
        return InputInlineQueryResultAudio.fromMap(_map);
      case 'inputInlineQueryResultPhoto':
        return InputInlineQueryResultPhoto.fromMap(_map);
      case 'inputInlineQueryResultLocation':
        return InputInlineQueryResultLocation.fromMap(_map);
      case 'inputInlineQueryResultDocument':
        return InputInlineQueryResultDocument.fromMap(_map);
      case 'inputInlineQueryResultVoiceNote':
        return InputInlineQueryResultVoiceNote.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents a single result of an inline query.
///
/// Inherited by [InlineQueryResultAudio], [InlineQueryResultVenue], [InlineQueryResultPhoto], [InlineQueryResultVideo], [InlineQueryResultSticker], [InlineQueryResultContact], [InlineQueryResultGame], [InlineQueryResultDocument], [InlineQueryResultVoiceNote], [InlineQueryResultAnimation], [InlineQueryResultArticle], [InlineQueryResultLocation].
abstract class InlineQueryResult extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "inlineQueryResult";

  /// Construct from [Map].
  static InlineQueryResult? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'inlineQueryResultAudio':
        return InlineQueryResultAudio.fromMap(_map);
      case 'inlineQueryResultVenue':
        return InlineQueryResultVenue.fromMap(_map);
      case 'inlineQueryResultPhoto':
        return InlineQueryResultPhoto.fromMap(_map);
      case 'inlineQueryResultVideo':
        return InlineQueryResultVideo.fromMap(_map);
      case 'inlineQueryResultSticker':
        return InlineQueryResultSticker.fromMap(_map);
      case 'inlineQueryResultContact':
        return InlineQueryResultContact.fromMap(_map);
      case 'inlineQueryResultGame':
        return InlineQueryResultGame.fromMap(_map);
      case 'inlineQueryResultDocument':
        return InlineQueryResultDocument.fromMap(_map);
      case 'inlineQueryResultVoiceNote':
        return InlineQueryResultVoiceNote.fromMap(_map);
      case 'inlineQueryResultAnimation':
        return InlineQueryResultAnimation.fromMap(_map);
      case 'inlineQueryResultArticle':
        return InlineQueryResultArticle.fromMap(_map);
      case 'inlineQueryResultLocation':
        return InlineQueryResultLocation.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents a type of a button in results of inline query.
///
/// Inherited by [InlineQueryResultsButtonTypeStartBot], [InlineQueryResultsButtonTypeWebApp].
abstract class InlineQueryResultsButtonType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "inlineQueryResultsButtonType";

  /// Construct from [Map].
  static InlineQueryResultsButtonType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'inlineQueryResultsButtonTypeStartBot':
        return InlineQueryResultsButtonTypeStartBot.fromMap(_map);
      case 'inlineQueryResultsButtonTypeWebApp':
        return InlineQueryResultsButtonTypeWebApp.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents a payload of a callback query.
///
/// Inherited by [CallbackQueryPayloadGame], [CallbackQueryPayloadDataWithPassword], [CallbackQueryPayloadData].
abstract class CallbackQueryPayload extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "callbackQueryPayload";

  /// Construct from [Map].
  static CallbackQueryPayload? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'callbackQueryPayloadGame':
        return CallbackQueryPayloadGame.fromMap(_map);
      case 'callbackQueryPayloadDataWithPassword':
        return CallbackQueryPayloadDataWithPassword.fromMap(_map);
      case 'callbackQueryPayloadData':
        return CallbackQueryPayloadData.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents a chat event.
///
/// Inherited by [ChatEventUsernameChanged], [ChatEventInviteLinkDeleted], [ChatEventLinkedChatChanged], [ChatEventMessageAutoDeleteTimeChanged], [ChatEventInviteLinkRevoked], [ChatEventVideoChatEnded], [ChatEventForumTopicCreated], [ChatEventMemberJoinedByRequest], [ChatEventVideoChatCreated], [ChatEventForumTopicPinned], [ChatEventTitleChanged], [ChatEventInviteLinkEdited], [ChatEventSlowModeDelayChanged], [ChatEventIsForumToggled], [ChatEventHasProtectedContentToggled], [ChatEventMessageUnpinned], [ChatEventMemberJoinedByInviteLink], [ChatEventInvitesToggled], [ChatEventPermissionsChanged], [ChatEventSignMessagesToggled], [ChatEventPollStopped], [ChatEventLocationChanged], [ChatEventAvailableReactionsChanged], [ChatEventStickerSetChanged], [ChatEventHasAggressiveAntiSpamEnabledToggled], [ChatEventMemberRestricted], [ChatEventIsAllHistoryAvailableToggled], [ChatEventMemberJoined], [ChatEventForumTopicEdited], [ChatEventMemberInvited], [ChatEventMemberPromoted], [ChatEventForumTopicToggleIsClosed], [ChatEventMemberLeft], [ChatEventVideoChatMuteNewParticipantsToggled], [ChatEventVideoChatParticipantIsMutedToggled], [ChatEventForumTopicDeleted], [ChatEventMessagePinned], [ChatEventMessageDeleted], [ChatEventDescriptionChanged], [ChatEventActiveUsernamesChanged], [ChatEventMessageEdited], [ChatEventPhotoChanged], [ChatEventForumTopicToggleIsHidden], [ChatEventVideoChatParticipantVolumeLevelChanged].
abstract class ChatEventAction extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "chatEventAction";

  /// Construct from [Map].
  static ChatEventAction? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'chatEventUsernameChanged':
        return ChatEventUsernameChanged.fromMap(_map);
      case 'chatEventInviteLinkDeleted':
        return ChatEventInviteLinkDeleted.fromMap(_map);
      case 'chatEventLinkedChatChanged':
        return ChatEventLinkedChatChanged.fromMap(_map);
      case 'chatEventMessageAutoDeleteTimeChanged':
        return ChatEventMessageAutoDeleteTimeChanged.fromMap(_map);
      case 'chatEventInviteLinkRevoked':
        return ChatEventInviteLinkRevoked.fromMap(_map);
      case 'chatEventVideoChatEnded':
        return ChatEventVideoChatEnded.fromMap(_map);
      case 'chatEventForumTopicCreated':
        return ChatEventForumTopicCreated.fromMap(_map);
      case 'chatEventMemberJoinedByRequest':
        return ChatEventMemberJoinedByRequest.fromMap(_map);
      case 'chatEventVideoChatCreated':
        return ChatEventVideoChatCreated.fromMap(_map);
      case 'chatEventForumTopicPinned':
        return ChatEventForumTopicPinned.fromMap(_map);
      case 'chatEventTitleChanged':
        return ChatEventTitleChanged.fromMap(_map);
      case 'chatEventInviteLinkEdited':
        return ChatEventInviteLinkEdited.fromMap(_map);
      case 'chatEventSlowModeDelayChanged':
        return ChatEventSlowModeDelayChanged.fromMap(_map);
      case 'chatEventIsForumToggled':
        return ChatEventIsForumToggled.fromMap(_map);
      case 'chatEventHasProtectedContentToggled':
        return ChatEventHasProtectedContentToggled.fromMap(_map);
      case 'chatEventMessageUnpinned':
        return ChatEventMessageUnpinned.fromMap(_map);
      case 'chatEventMemberJoinedByInviteLink':
        return ChatEventMemberJoinedByInviteLink.fromMap(_map);
      case 'chatEventInvitesToggled':
        return ChatEventInvitesToggled.fromMap(_map);
      case 'chatEventPermissionsChanged':
        return ChatEventPermissionsChanged.fromMap(_map);
      case 'chatEventSignMessagesToggled':
        return ChatEventSignMessagesToggled.fromMap(_map);
      case 'chatEventPollStopped':
        return ChatEventPollStopped.fromMap(_map);
      case 'chatEventLocationChanged':
        return ChatEventLocationChanged.fromMap(_map);
      case 'chatEventAvailableReactionsChanged':
        return ChatEventAvailableReactionsChanged.fromMap(_map);
      case 'chatEventStickerSetChanged':
        return ChatEventStickerSetChanged.fromMap(_map);
      case 'chatEventHasAggressiveAntiSpamEnabledToggled':
        return ChatEventHasAggressiveAntiSpamEnabledToggled.fromMap(_map);
      case 'chatEventMemberRestricted':
        return ChatEventMemberRestricted.fromMap(_map);
      case 'chatEventIsAllHistoryAvailableToggled':
        return ChatEventIsAllHistoryAvailableToggled.fromMap(_map);
      case 'chatEventMemberJoined':
        return ChatEventMemberJoined.fromMap(_map);
      case 'chatEventForumTopicEdited':
        return ChatEventForumTopicEdited.fromMap(_map);
      case 'chatEventMemberInvited':
        return ChatEventMemberInvited.fromMap(_map);
      case 'chatEventMemberPromoted':
        return ChatEventMemberPromoted.fromMap(_map);
      case 'chatEventForumTopicToggleIsClosed':
        return ChatEventForumTopicToggleIsClosed.fromMap(_map);
      case 'chatEventMemberLeft':
        return ChatEventMemberLeft.fromMap(_map);
      case 'chatEventVideoChatMuteNewParticipantsToggled':
        return ChatEventVideoChatMuteNewParticipantsToggled.fromMap(_map);
      case 'chatEventVideoChatParticipantIsMutedToggled':
        return ChatEventVideoChatParticipantIsMutedToggled.fromMap(_map);
      case 'chatEventForumTopicDeleted':
        return ChatEventForumTopicDeleted.fromMap(_map);
      case 'chatEventMessagePinned':
        return ChatEventMessagePinned.fromMap(_map);
      case 'chatEventMessageDeleted':
        return ChatEventMessageDeleted.fromMap(_map);
      case 'chatEventDescriptionChanged':
        return ChatEventDescriptionChanged.fromMap(_map);
      case 'chatEventActiveUsernamesChanged':
        return ChatEventActiveUsernamesChanged.fromMap(_map);
      case 'chatEventMessageEdited':
        return ChatEventMessageEdited.fromMap(_map);
      case 'chatEventPhotoChanged':
        return ChatEventPhotoChanged.fromMap(_map);
      case 'chatEventForumTopicToggleIsHidden':
        return ChatEventForumTopicToggleIsHidden.fromMap(_map);
      case 'chatEventVideoChatParticipantVolumeLevelChanged':
        return ChatEventVideoChatParticipantVolumeLevelChanged.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents the value of a string in a language pack.
///
/// Inherited by [LanguagePackStringValueOrdinary], [LanguagePackStringValuePluralized], [LanguagePackStringValueDeleted].
abstract class LanguagePackStringValue extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "languagePackStringValue";

  /// Construct from [Map].
  static LanguagePackStringValue? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'languagePackStringValueOrdinary':
        return LanguagePackStringValueOrdinary.fromMap(_map);
      case 'languagePackStringValuePluralized':
        return LanguagePackStringValuePluralized.fromMap(_map);
      case 'languagePackStringValueDeleted':
        return LanguagePackStringValueDeleted.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes type of a limit, increased for Premium users.
///
/// Inherited by [PremiumLimitTypeSavedAnimationCount], [PremiumLimitTypeChatFolderChosenChatCount], [PremiumLimitTypeMonthlySentStoryCount], [PremiumLimitTypePinnedArchivedChatCount], [PremiumLimitTypeSupergroupCount], [PremiumLimitTypeChatFolderCount], [PremiumLimitTypePinnedChatCount], [PremiumLimitTypeShareableChatFolderCount], [PremiumLimitTypeActiveStoryCount], [PremiumLimitTypeWeeklySentStoryCount], [PremiumLimitTypeCreatedPublicChatCount], [PremiumLimitTypeBioLength], [PremiumLimitTypeStorySuggestedReactionAreaCount], [PremiumLimitTypeCaptionLength], [PremiumLimitTypeFavoriteStickerCount], [PremiumLimitTypeChatFolderInviteLinkCount], [PremiumLimitTypeStoryCaptionLength].
abstract class PremiumLimitType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "premiumLimitType";

  /// Construct from [Map].
  static PremiumLimitType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'premiumLimitTypeSavedAnimationCount':
        return PremiumLimitTypeSavedAnimationCount.fromMap(_map);
      case 'premiumLimitTypeChatFolderChosenChatCount':
        return PremiumLimitTypeChatFolderChosenChatCount.fromMap(_map);
      case 'premiumLimitTypeMonthlySentStoryCount':
        return PremiumLimitTypeMonthlySentStoryCount.fromMap(_map);
      case 'premiumLimitTypePinnedArchivedChatCount':
        return PremiumLimitTypePinnedArchivedChatCount.fromMap(_map);
      case 'premiumLimitTypeSupergroupCount':
        return PremiumLimitTypeSupergroupCount.fromMap(_map);
      case 'premiumLimitTypeChatFolderCount':
        return PremiumLimitTypeChatFolderCount.fromMap(_map);
      case 'premiumLimitTypePinnedChatCount':
        return PremiumLimitTypePinnedChatCount.fromMap(_map);
      case 'premiumLimitTypeShareableChatFolderCount':
        return PremiumLimitTypeShareableChatFolderCount.fromMap(_map);
      case 'premiumLimitTypeActiveStoryCount':
        return PremiumLimitTypeActiveStoryCount.fromMap(_map);
      case 'premiumLimitTypeWeeklySentStoryCount':
        return PremiumLimitTypeWeeklySentStoryCount.fromMap(_map);
      case 'premiumLimitTypeCreatedPublicChatCount':
        return PremiumLimitTypeCreatedPublicChatCount.fromMap(_map);
      case 'premiumLimitTypeBioLength':
        return PremiumLimitTypeBioLength.fromMap(_map);
      case 'premiumLimitTypeStorySuggestedReactionAreaCount':
        return PremiumLimitTypeStorySuggestedReactionAreaCount.fromMap(_map);
      case 'premiumLimitTypeCaptionLength':
        return PremiumLimitTypeCaptionLength.fromMap(_map);
      case 'premiumLimitTypeFavoriteStickerCount':
        return PremiumLimitTypeFavoriteStickerCount.fromMap(_map);
      case 'premiumLimitTypeChatFolderInviteLinkCount':
        return PremiumLimitTypeChatFolderInviteLinkCount.fromMap(_map);
      case 'premiumLimitTypeStoryCaptionLength':
        return PremiumLimitTypeStoryCaptionLength.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a feature available to Premium users.
///
/// Inherited by [PremiumFeatureDisabledAds], [PremiumFeatureAdvancedChatManagement], [PremiumFeatureUniqueStickers], [PremiumFeatureVoiceRecognition], [PremiumFeatureEmojiStatus], [PremiumFeatureCustomEmoji], [PremiumFeatureImprovedDownloadSpeed], [PremiumFeatureForumTopicIcon], [PremiumFeatureUpgradedStories], [PremiumFeatureRealTimeChatTranslation], [PremiumFeatureIncreasedLimits], [PremiumFeatureAnimatedProfilePhoto], [PremiumFeatureAppIcons], [PremiumFeatureIncreasedUploadFileSize], [PremiumFeatureProfileBadge], [PremiumFeatureChatBoost], [PremiumFeatureUniqueReactions].
abstract class PremiumFeature extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "premiumFeature";

  /// Construct from [Map].
  static PremiumFeature? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'premiumFeatureDisabledAds':
        return PremiumFeatureDisabledAds.fromMap(_map);
      case 'premiumFeatureAdvancedChatManagement':
        return PremiumFeatureAdvancedChatManagement.fromMap(_map);
      case 'premiumFeatureUniqueStickers':
        return PremiumFeatureUniqueStickers.fromMap(_map);
      case 'premiumFeatureVoiceRecognition':
        return PremiumFeatureVoiceRecognition.fromMap(_map);
      case 'premiumFeatureEmojiStatus':
        return PremiumFeatureEmojiStatus.fromMap(_map);
      case 'premiumFeatureCustomEmoji':
        return PremiumFeatureCustomEmoji.fromMap(_map);
      case 'premiumFeatureImprovedDownloadSpeed':
        return PremiumFeatureImprovedDownloadSpeed.fromMap(_map);
      case 'premiumFeatureForumTopicIcon':
        return PremiumFeatureForumTopicIcon.fromMap(_map);
      case 'premiumFeatureUpgradedStories':
        return PremiumFeatureUpgradedStories.fromMap(_map);
      case 'premiumFeatureRealTimeChatTranslation':
        return PremiumFeatureRealTimeChatTranslation.fromMap(_map);
      case 'premiumFeatureIncreasedLimits':
        return PremiumFeatureIncreasedLimits.fromMap(_map);
      case 'premiumFeatureAnimatedProfilePhoto':
        return PremiumFeatureAnimatedProfilePhoto.fromMap(_map);
      case 'premiumFeatureAppIcons':
        return PremiumFeatureAppIcons.fromMap(_map);
      case 'premiumFeatureIncreasedUploadFileSize':
        return PremiumFeatureIncreasedUploadFileSize.fromMap(_map);
      case 'premiumFeatureProfileBadge':
        return PremiumFeatureProfileBadge.fromMap(_map);
      case 'premiumFeatureChatBoost':
        return PremiumFeatureChatBoost.fromMap(_map);
      case 'premiumFeatureUniqueReactions':
        return PremiumFeatureUniqueReactions.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a story feature available to Premium users.
///
/// Inherited by [PremiumStoryFeatureSaveStories], [PremiumStoryFeaturePermanentViewsHistory], [PremiumStoryFeatureLinksAndFormatting], [PremiumStoryFeatureStealthMode], [PremiumStoryFeatureCustomExpirationDuration], [PremiumStoryFeaturePriorityOrder].
abstract class PremiumStoryFeature extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "premiumStoryFeature";

  /// Construct from [Map].
  static PremiumStoryFeature? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'premiumStoryFeatureSaveStories':
        return PremiumStoryFeatureSaveStories.fromMap(_map);
      case 'premiumStoryFeaturePermanentViewsHistory':
        return PremiumStoryFeaturePermanentViewsHistory.fromMap(_map);
      case 'premiumStoryFeatureLinksAndFormatting':
        return PremiumStoryFeatureLinksAndFormatting.fromMap(_map);
      case 'premiumStoryFeatureStealthMode':
        return PremiumStoryFeatureStealthMode.fromMap(_map);
      case 'premiumStoryFeatureCustomExpirationDuration':
        return PremiumStoryFeatureCustomExpirationDuration.fromMap(_map);
      case 'premiumStoryFeaturePriorityOrder':
        return PremiumStoryFeaturePriorityOrder.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a source from which the Premium features screen is opened.
///
/// Inherited by [PremiumSourceStoryFeature], [PremiumSourceLimitExceeded], [PremiumSourceFeature], [PremiumSourceLink], [PremiumSourceSettings].
abstract class PremiumSource extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "premiumSource";

  /// Construct from [Map].
  static PremiumSource? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'premiumSourceStoryFeature':
        return PremiumSourceStoryFeature.fromMap(_map);
      case 'premiumSourceLimitExceeded':
        return PremiumSourceLimitExceeded.fromMap(_map);
      case 'premiumSourceFeature':
        return PremiumSourceFeature.fromMap(_map);
      case 'premiumSourceLink':
        return PremiumSourceLink.fromMap(_map);
      case 'premiumSourceSettings':
        return PremiumSourceSettings.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a purpose of an in-store payment.
///
/// Inherited by [StorePaymentPurposePremiumSubscription], [StorePaymentPurposeGiftedPremium].
abstract class StorePaymentPurpose extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "storePaymentPurpose";

  /// Construct from [Map].
  static StorePaymentPurpose? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'storePaymentPurposePremiumSubscription':
        return StorePaymentPurposePremiumSubscription.fromMap(_map);
      case 'storePaymentPurposeGiftedPremium':
        return StorePaymentPurposeGiftedPremium.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents a data needed to subscribe for push notifications through registerDevice method..
///
/// Inherited by [DeviceTokenFirebaseCloudMessaging], [DeviceTokenHuaweiPush], [DeviceTokenMicrosoftPush], [DeviceTokenWebPush], [DeviceTokenTizenPush], [DeviceTokenMicrosoftPushVoIP], [DeviceTokenApplePush], [DeviceTokenSimplePush], [DeviceTokenUbuntuPush], [DeviceTokenApplePushVoIP], [DeviceTokenWindowsPush], [DeviceTokenBlackBerryPush].
abstract class DeviceToken extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "deviceToken";

  /// Construct from [Map].
  static DeviceToken? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'deviceTokenFirebaseCloudMessaging':
        return DeviceTokenFirebaseCloudMessaging.fromMap(_map);
      case 'deviceTokenHuaweiPush':
        return DeviceTokenHuaweiPush.fromMap(_map);
      case 'deviceTokenMicrosoftPush':
        return DeviceTokenMicrosoftPush.fromMap(_map);
      case 'deviceTokenWebPush':
        return DeviceTokenWebPush.fromMap(_map);
      case 'deviceTokenTizenPush':
        return DeviceTokenTizenPush.fromMap(_map);
      case 'deviceTokenMicrosoftPushVoIP':
        return DeviceTokenMicrosoftPushVoIP.fromMap(_map);
      case 'deviceTokenApplePush':
        return DeviceTokenApplePush.fromMap(_map);
      case 'deviceTokenSimplePush':
        return DeviceTokenSimplePush.fromMap(_map);
      case 'deviceTokenUbuntuPush':
        return DeviceTokenUbuntuPush.fromMap(_map);
      case 'deviceTokenApplePushVoIP':
        return DeviceTokenApplePushVoIP.fromMap(_map);
      case 'deviceTokenWindowsPush':
        return DeviceTokenWindowsPush.fromMap(_map);
      case 'deviceTokenBlackBerryPush':
        return DeviceTokenBlackBerryPush.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a fill of a background.
///
/// Inherited by [BackgroundFillFreeformGradient], [BackgroundFillSolid], [BackgroundFillGradient].
abstract class BackgroundFill extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "backgroundFill";

  /// Construct from [Map].
  static BackgroundFill? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'backgroundFillFreeformGradient':
        return BackgroundFillFreeformGradient.fromMap(_map);
      case 'backgroundFillSolid':
        return BackgroundFillSolid.fromMap(_map);
      case 'backgroundFillGradient':
        return BackgroundFillGradient.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the type of a background.
///
/// Inherited by [BackgroundTypeFill], [BackgroundTypeWallpaper], [BackgroundTypePattern].
abstract class BackgroundType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "backgroundType";

  /// Construct from [Map].
  static BackgroundType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'backgroundTypeFill':
        return BackgroundTypeFill.fromMap(_map);
      case 'backgroundTypeWallpaper':
        return BackgroundTypeWallpaper.fromMap(_map);
      case 'backgroundTypePattern':
        return BackgroundTypePattern.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains information about background to set.
///
/// Inherited by [InputBackgroundLocal], [InputBackgroundPrevious], [InputBackgroundRemote].
abstract class InputBackground extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "inputBackground";

  /// Construct from [Map].
  static InputBackground? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'inputBackgroundLocal':
        return InputBackgroundLocal.fromMap(_map);
      case 'inputBackgroundPrevious':
        return InputBackgroundPrevious.fromMap(_map);
      case 'inputBackgroundRemote':
        return InputBackgroundRemote.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents result of checking whether the current user can send a story in the specific chat.
///
/// Inherited by [CanSendStoryResultPremiumNeeded], [CanSendStoryResultWeeklyLimitExceeded], [CanSendStoryResultBoostNeeded], [CanSendStoryResultOk], [CanSendStoryResultMonthlyLimitExceeded], [CanSendStoryResultActiveStoryLimitExceeded].
abstract class CanSendStoryResult extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "canSendStoryResult";

  /// Construct from [Map].
  static CanSendStoryResult? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'canSendStoryResultPremiumNeeded':
        return CanSendStoryResultPremiumNeeded.fromMap(_map);
      case 'canSendStoryResultWeeklyLimitExceeded':
        return CanSendStoryResultWeeklyLimitExceeded.fromMap(_map);
      case 'canSendStoryResultBoostNeeded':
        return CanSendStoryResultBoostNeeded.fromMap(_map);
      case 'canSendStoryResultOk':
        return CanSendStoryResultOk.fromMap(_map);
      case 'canSendStoryResultMonthlyLimitExceeded':
        return CanSendStoryResultMonthlyLimitExceeded.fromMap(_map);
      case 'canSendStoryResultActiveStoryLimitExceeded':
        return CanSendStoryResultActiveStoryLimitExceeded.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents result of checking whether the current user can boost the specific chat.
///
/// Inherited by [CanBoostChatResultAlreadyBoosted], [CanBoostChatResultOk], [CanBoostChatResultPremiumSubscriptionNeeded], [CanBoostChatResultWaitNeeded], [CanBoostChatResultInvalidChat], [CanBoostChatResultPremiumNeeded].
abstract class CanBoostChatResult extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "canBoostChatResult";

  /// Construct from [Map].
  static CanBoostChatResult? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'canBoostChatResultAlreadyBoosted':
        return CanBoostChatResultAlreadyBoosted.fromMap(_map);
      case 'canBoostChatResultOk':
        return CanBoostChatResultOk.fromMap(_map);
      case 'canBoostChatResultPremiumSubscriptionNeeded':
        return CanBoostChatResultPremiumSubscriptionNeeded.fromMap(_map);
      case 'canBoostChatResultWaitNeeded':
        return CanBoostChatResultWaitNeeded.fromMap(_map);
      case 'canBoostChatResultInvalidChat':
        return CanBoostChatResultInvalidChat.fromMap(_map);
      case 'canBoostChatResultPremiumNeeded':
        return CanBoostChatResultPremiumNeeded.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents result of checking whether the current session can be used to transfer a chat ownership to another user.
///
/// Inherited by [CanTransferOwnershipResultPasswordNeeded], [CanTransferOwnershipResultPasswordTooFresh], [CanTransferOwnershipResultOk], [CanTransferOwnershipResultSessionTooFresh].
abstract class CanTransferOwnershipResult extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "canTransferOwnershipResult";

  /// Construct from [Map].
  static CanTransferOwnershipResult? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'canTransferOwnershipResultPasswordNeeded':
        return CanTransferOwnershipResultPasswordNeeded.fromMap(_map);
      case 'canTransferOwnershipResultPasswordTooFresh':
        return CanTransferOwnershipResultPasswordTooFresh.fromMap(_map);
      case 'canTransferOwnershipResultOk':
        return CanTransferOwnershipResultOk.fromMap(_map);
      case 'canTransferOwnershipResultSessionTooFresh':
        return CanTransferOwnershipResultSessionTooFresh.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents result of checking whether a username can be set for a chat.
///
/// Inherited by [CheckChatUsernameResultUsernameInvalid], [CheckChatUsernameResultUsernameOccupied], [CheckChatUsernameResultUsernamePurchasable], [CheckChatUsernameResultPublicChatsTooMany], [CheckChatUsernameResultPublicGroupsUnavailable], [CheckChatUsernameResultOk].
abstract class CheckChatUsernameResult extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "checkChatUsernameResult";

  /// Construct from [Map].
  static CheckChatUsernameResult? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'checkChatUsernameResultUsernameInvalid':
        return CheckChatUsernameResultUsernameInvalid.fromMap(_map);
      case 'checkChatUsernameResultUsernameOccupied':
        return CheckChatUsernameResultUsernameOccupied.fromMap(_map);
      case 'checkChatUsernameResultUsernamePurchasable':
        return CheckChatUsernameResultUsernamePurchasable.fromMap(_map);
      case 'checkChatUsernameResultPublicChatsTooMany':
        return CheckChatUsernameResultPublicChatsTooMany.fromMap(_map);
      case 'checkChatUsernameResultPublicGroupsUnavailable':
        return CheckChatUsernameResultPublicGroupsUnavailable.fromMap(_map);
      case 'checkChatUsernameResultOk':
        return CheckChatUsernameResultOk.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents result of checking whether a name can be used for a new sticker set.
///
/// Inherited by [CheckStickerSetNameResultNameOccupied], [CheckStickerSetNameResultOk], [CheckStickerSetNameResultNameInvalid].
abstract class CheckStickerSetNameResult extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "checkStickerSetNameResult";

  /// Construct from [Map].
  static CheckStickerSetNameResult? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'checkStickerSetNameResultNameOccupied':
        return CheckStickerSetNameResultNameOccupied.fromMap(_map);
      case 'checkStickerSetNameResultOk':
        return CheckStickerSetNameResultOk.fromMap(_map);
      case 'checkStickerSetNameResultNameInvalid':
        return CheckStickerSetNameResultNameInvalid.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents result of 2-step verification password reset.
///
/// Inherited by [ResetPasswordResultOk], [ResetPasswordResultPending], [ResetPasswordResultDeclined].
abstract class ResetPasswordResult extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "resetPasswordResult";

  /// Construct from [Map].
  static ResetPasswordResult? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'resetPasswordResultOk':
        return ResetPasswordResultOk.fromMap(_map);
      case 'resetPasswordResultPending':
        return ResetPasswordResultPending.fromMap(_map);
      case 'resetPasswordResultDeclined':
        return ResetPasswordResultDeclined.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains information about a file with messages exported from another app.
///
/// Inherited by [MessageFileTypeUnknown], [MessageFileTypePrivate], [MessageFileTypeGroup].
abstract class MessageFileType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "messageFileType";

  /// Construct from [Map].
  static MessageFileType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'messageFileTypeUnknown':
        return MessageFileTypeUnknown.fromMap(_map);
      case 'messageFileTypePrivate':
        return MessageFileTypePrivate.fromMap(_map);
      case 'messageFileTypeGroup':
        return MessageFileTypeGroup.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains content of a push message notification.
///
/// Inherited by [PushMessageContentChatChangeTitle], [PushMessageContentInvoice], [PushMessageContentAnimation], [PushMessageContentStory], [PushMessageContentChatSetBackground], [PushMessageContentGame], [PushMessageContentDocument], [PushMessageContentPhoto], [PushMessageContentGameScore], [PushMessageContentLocation], [PushMessageContentChatJoinByRequest], [PushMessageContentContact], [PushMessageContentRecurringPayment], [PushMessageContentSuggestProfilePhoto], [PushMessageContentMessageForwards], [PushMessageContentMediaAlbum], [PushMessageContentVideo], [PushMessageContentBasicGroupChatCreate], [PushMessageContentAudio], [PushMessageContentHidden], [PushMessageContentChatDeleteMember], [PushMessageContentSticker], [PushMessageContentPoll], [PushMessageContentVoiceNote], [PushMessageContentContactRegistered], [PushMessageContentVideoNote], [PushMessageContentChatSetTheme], [PushMessageContentChatChangePhoto], [PushMessageContentChatJoinByLink], [PushMessageContentText], [PushMessageContentChatAddMembers], [PushMessageContentScreenshotTaken].
abstract class PushMessageContent extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "pushMessageContent";

  /// Construct from [Map].
  static PushMessageContent? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'pushMessageContentChatChangeTitle':
        return PushMessageContentChatChangeTitle.fromMap(_map);
      case 'pushMessageContentInvoice':
        return PushMessageContentInvoice.fromMap(_map);
      case 'pushMessageContentAnimation':
        return PushMessageContentAnimation.fromMap(_map);
      case 'pushMessageContentStory':
        return PushMessageContentStory.fromMap(_map);
      case 'pushMessageContentChatSetBackground':
        return PushMessageContentChatSetBackground.fromMap(_map);
      case 'pushMessageContentGame':
        return PushMessageContentGame.fromMap(_map);
      case 'pushMessageContentDocument':
        return PushMessageContentDocument.fromMap(_map);
      case 'pushMessageContentPhoto':
        return PushMessageContentPhoto.fromMap(_map);
      case 'pushMessageContentGameScore':
        return PushMessageContentGameScore.fromMap(_map);
      case 'pushMessageContentLocation':
        return PushMessageContentLocation.fromMap(_map);
      case 'pushMessageContentChatJoinByRequest':
        return PushMessageContentChatJoinByRequest.fromMap(_map);
      case 'pushMessageContentContact':
        return PushMessageContentContact.fromMap(_map);
      case 'pushMessageContentRecurringPayment':
        return PushMessageContentRecurringPayment.fromMap(_map);
      case 'pushMessageContentSuggestProfilePhoto':
        return PushMessageContentSuggestProfilePhoto.fromMap(_map);
      case 'pushMessageContentMessageForwards':
        return PushMessageContentMessageForwards.fromMap(_map);
      case 'pushMessageContentMediaAlbum':
        return PushMessageContentMediaAlbum.fromMap(_map);
      case 'pushMessageContentVideo':
        return PushMessageContentVideo.fromMap(_map);
      case 'pushMessageContentBasicGroupChatCreate':
        return PushMessageContentBasicGroupChatCreate.fromMap(_map);
      case 'pushMessageContentAudio':
        return PushMessageContentAudio.fromMap(_map);
      case 'pushMessageContentHidden':
        return PushMessageContentHidden.fromMap(_map);
      case 'pushMessageContentChatDeleteMember':
        return PushMessageContentChatDeleteMember.fromMap(_map);
      case 'pushMessageContentSticker':
        return PushMessageContentSticker.fromMap(_map);
      case 'pushMessageContentPoll':
        return PushMessageContentPoll.fromMap(_map);
      case 'pushMessageContentVoiceNote':
        return PushMessageContentVoiceNote.fromMap(_map);
      case 'pushMessageContentContactRegistered':
        return PushMessageContentContactRegistered.fromMap(_map);
      case 'pushMessageContentVideoNote':
        return PushMessageContentVideoNote.fromMap(_map);
      case 'pushMessageContentChatSetTheme':
        return PushMessageContentChatSetTheme.fromMap(_map);
      case 'pushMessageContentChatChangePhoto':
        return PushMessageContentChatChangePhoto.fromMap(_map);
      case 'pushMessageContentChatJoinByLink':
        return PushMessageContentChatJoinByLink.fromMap(_map);
      case 'pushMessageContentText':
        return PushMessageContentText.fromMap(_map);
      case 'pushMessageContentChatAddMembers':
        return PushMessageContentChatAddMembers.fromMap(_map);
      case 'pushMessageContentScreenshotTaken':
        return PushMessageContentScreenshotTaken.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains detailed information about a notification.
///
/// Inherited by [NotificationTypeNewCall], [NotificationTypeNewPushMessage], [NotificationTypeNewMessage], [NotificationTypeNewSecretChat].
abstract class NotificationType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "notificationType";

  /// Construct from [Map].
  static NotificationType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'notificationTypeNewCall':
        return NotificationTypeNewCall.fromMap(_map);
      case 'notificationTypeNewPushMessage':
        return NotificationTypeNewPushMessage.fromMap(_map);
      case 'notificationTypeNewMessage':
        return NotificationTypeNewMessage.fromMap(_map);
      case 'notificationTypeNewSecretChat':
        return NotificationTypeNewSecretChat.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the type of notifications in a notification group.
///
/// Inherited by [NotificationGroupTypeCalls], [NotificationGroupTypeMentions], [NotificationGroupTypeSecretChat], [NotificationGroupTypeMessages].
abstract class NotificationGroupType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "notificationGroupType";

  /// Construct from [Map].
  static NotificationGroupType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'notificationGroupTypeCalls':
        return NotificationGroupTypeCalls.fromMap(_map);
      case 'notificationGroupTypeMentions':
        return NotificationGroupTypeMentions.fromMap(_map);
      case 'notificationGroupTypeSecretChat':
        return NotificationGroupTypeSecretChat.fromMap(_map);
      case 'notificationGroupTypeMessages':
        return NotificationGroupTypeMessages.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents the value of an option.
///
/// Inherited by [OptionValueString], [OptionValueInteger], [OptionValueBoolean], [OptionValueEmpty].
abstract class OptionValue extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "optionValue";

  /// Construct from [Map].
  static OptionValue? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'optionValueString':
        return OptionValueString.fromMap(_map);
      case 'optionValueInteger':
        return OptionValueInteger.fromMap(_map);
      case 'optionValueBoolean':
        return OptionValueBoolean.fromMap(_map);
      case 'optionValueEmpty':
        return OptionValueEmpty.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents a JSON value.
///
/// Inherited by [JsonValueObject], [JsonValueArray], [JsonValueBoolean], [JsonValueNumber], [JsonValueString], [JsonValueNull].
abstract class JsonValue extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "jsonValue";

  /// Construct from [Map].
  static JsonValue? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'jsonValueObject':
        return JsonValueObject.fromMap(_map);
      case 'jsonValueArray':
        return JsonValueArray.fromMap(_map);
      case 'jsonValueBoolean':
        return JsonValueBoolean.fromMap(_map);
      case 'jsonValueNumber':
        return JsonValueNumber.fromMap(_map);
      case 'jsonValueString':
        return JsonValueString.fromMap(_map);
      case 'jsonValueNull':
        return JsonValueNull.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes privacy settings of a story.
///
/// Inherited by [StoryPrivacySettingsEveryone], [StoryPrivacySettingsCloseFriends], [StoryPrivacySettingsContacts], [StoryPrivacySettingsSelectedUsers].
abstract class StoryPrivacySettings extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "storyPrivacySettings";

  /// Construct from [Map].
  static StoryPrivacySettings? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'storyPrivacySettingsEveryone':
        return StoryPrivacySettingsEveryone.fromMap(_map);
      case 'storyPrivacySettingsCloseFriends':
        return StoryPrivacySettingsCloseFriends.fromMap(_map);
      case 'storyPrivacySettingsContacts':
        return StoryPrivacySettingsContacts.fromMap(_map);
      case 'storyPrivacySettingsSelectedUsers':
        return StoryPrivacySettingsSelectedUsers.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents a single rule for managing user privacy settings.
///
/// Inherited by [UserPrivacySettingRuleRestrictChatMembers], [UserPrivacySettingRuleAllowChatMembers], [UserPrivacySettingRuleRestrictUsers], [UserPrivacySettingRuleRestrictAll], [UserPrivacySettingRuleAllowAll], [UserPrivacySettingRuleAllowContacts], [UserPrivacySettingRuleRestrictContacts], [UserPrivacySettingRuleAllowUsers].
abstract class UserPrivacySettingRule extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "userPrivacySettingRule";

  /// Construct from [Map].
  static UserPrivacySettingRule? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'userPrivacySettingRuleRestrictChatMembers':
        return UserPrivacySettingRuleRestrictChatMembers.fromMap(_map);
      case 'userPrivacySettingRuleAllowChatMembers':
        return UserPrivacySettingRuleAllowChatMembers.fromMap(_map);
      case 'userPrivacySettingRuleRestrictUsers':
        return UserPrivacySettingRuleRestrictUsers.fromMap(_map);
      case 'userPrivacySettingRuleRestrictAll':
        return UserPrivacySettingRuleRestrictAll.fromMap(_map);
      case 'userPrivacySettingRuleAllowAll':
        return UserPrivacySettingRuleAllowAll.fromMap(_map);
      case 'userPrivacySettingRuleAllowContacts':
        return UserPrivacySettingRuleAllowContacts.fromMap(_map);
      case 'userPrivacySettingRuleRestrictContacts':
        return UserPrivacySettingRuleRestrictContacts.fromMap(_map);
      case 'userPrivacySettingRuleAllowUsers':
        return UserPrivacySettingRuleAllowUsers.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes available user privacy settings.
///
/// Inherited by [UserPrivacySettingAllowCalls], [UserPrivacySettingShowProfilePhoto], [UserPrivacySettingShowLinkInForwardedMessages], [UserPrivacySettingShowStatus], [UserPrivacySettingAllowPeerToPeerCalls], [UserPrivacySettingAllowFindingByPhoneNumber], [UserPrivacySettingShowPhoneNumber], [UserPrivacySettingAllowChatInvites], [UserPrivacySettingShowBio], [UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages].
abstract class UserPrivacySetting extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "userPrivacySetting";

  /// Construct from [Map].
  static UserPrivacySetting? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'userPrivacySettingAllowCalls':
        return UserPrivacySettingAllowCalls.fromMap(_map);
      case 'userPrivacySettingShowProfilePhoto':
        return UserPrivacySettingShowProfilePhoto.fromMap(_map);
      case 'userPrivacySettingShowLinkInForwardedMessages':
        return UserPrivacySettingShowLinkInForwardedMessages.fromMap(_map);
      case 'userPrivacySettingShowStatus':
        return UserPrivacySettingShowStatus.fromMap(_map);
      case 'userPrivacySettingAllowPeerToPeerCalls':
        return UserPrivacySettingAllowPeerToPeerCalls.fromMap(_map);
      case 'userPrivacySettingAllowFindingByPhoneNumber':
        return UserPrivacySettingAllowFindingByPhoneNumber.fromMap(_map);
      case 'userPrivacySettingShowPhoneNumber':
        return UserPrivacySettingShowPhoneNumber.fromMap(_map);
      case 'userPrivacySettingAllowChatInvites':
        return UserPrivacySettingAllowChatInvites.fromMap(_map);
      case 'userPrivacySettingShowBio':
        return UserPrivacySettingShowBio.fromMap(_map);
      case 'userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages':
        return UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages.fromMap(
            _map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents the type of a session.
///
/// Inherited by [SessionTypeEdge], [SessionTypeUbuntu], [SessionTypeWindows], [SessionTypeIpad], [SessionTypeBrave], [SessionTypeIphone], [SessionTypeMac], [SessionTypeUnknown], [SessionTypeSafari], [SessionTypeLinux], [SessionTypeOpera], [SessionTypeAndroid], [SessionTypeXbox], [SessionTypeFirefox], [SessionTypeVivaldi], [SessionTypeChrome], [SessionTypeApple].
abstract class SessionType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "sessionType";

  /// Construct from [Map].
  static SessionType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'sessionTypeEdge':
        return SessionTypeEdge.fromMap(_map);
      case 'sessionTypeUbuntu':
        return SessionTypeUbuntu.fromMap(_map);
      case 'sessionTypeWindows':
        return SessionTypeWindows.fromMap(_map);
      case 'sessionTypeIpad':
        return SessionTypeIpad.fromMap(_map);
      case 'sessionTypeBrave':
        return SessionTypeBrave.fromMap(_map);
      case 'sessionTypeIphone':
        return SessionTypeIphone.fromMap(_map);
      case 'sessionTypeMac':
        return SessionTypeMac.fromMap(_map);
      case 'sessionTypeUnknown':
        return SessionTypeUnknown.fromMap(_map);
      case 'sessionTypeSafari':
        return SessionTypeSafari.fromMap(_map);
      case 'sessionTypeLinux':
        return SessionTypeLinux.fromMap(_map);
      case 'sessionTypeOpera':
        return SessionTypeOpera.fromMap(_map);
      case 'sessionTypeAndroid':
        return SessionTypeAndroid.fromMap(_map);
      case 'sessionTypeXbox':
        return SessionTypeXbox.fromMap(_map);
      case 'sessionTypeFirefox':
        return SessionTypeFirefox.fromMap(_map);
      case 'sessionTypeVivaldi':
        return SessionTypeVivaldi.fromMap(_map);
      case 'sessionTypeChrome':
        return SessionTypeChrome.fromMap(_map);
      case 'sessionTypeApple':
        return SessionTypeApple.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the reason why a chat is reported.
///
/// Inherited by [ReportReasonUnrelatedLocation], [ReportReasonSpam], [ReportReasonFake], [ReportReasonViolence], [ReportReasonIllegalDrugs], [ReportReasonChildAbuse], [ReportReasonPersonalDetails], [ReportReasonPornography], [ReportReasonCustom], [ReportReasonCopyright].
abstract class ReportReason extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "reportReason";

  /// Construct from [Map].
  static ReportReason? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'reportReasonUnrelatedLocation':
        return ReportReasonUnrelatedLocation.fromMap(_map);
      case 'reportReasonSpam':
        return ReportReasonSpam.fromMap(_map);
      case 'reportReasonFake':
        return ReportReasonFake.fromMap(_map);
      case 'reportReasonViolence':
        return ReportReasonViolence.fromMap(_map);
      case 'reportReasonIllegalDrugs':
        return ReportReasonIllegalDrugs.fromMap(_map);
      case 'reportReasonChildAbuse':
        return ReportReasonChildAbuse.fromMap(_map);
      case 'reportReasonPersonalDetails':
        return ReportReasonPersonalDetails.fromMap(_map);
      case 'reportReasonPornography':
        return ReportReasonPornography.fromMap(_map);
      case 'reportReasonCustom':
        return ReportReasonCustom.fromMap(_map);
      case 'reportReasonCopyright':
        return ReportReasonCopyright.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the target chat to be opened.
///
/// Inherited by [TargetChatInternalLink], [TargetChatChosen], [TargetChatCurrent].
abstract class TargetChat extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "targetChat";

  /// Construct from [Map].
  static TargetChat? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'targetChatInternalLink':
        return TargetChatInternalLink.fromMap(_map);
      case 'targetChatChosen':
        return TargetChatChosen.fromMap(_map);
      case 'targetChatCurrent':
        return TargetChatCurrent.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes an internal https://t.me or tg: link, which must be processed by the application in a special way.
///
/// Inherited by [InternalLinkTypeGame], [InternalLinkTypeChatFolderSettings], [InternalLinkTypeStory], [InternalLinkTypeChangePhoneNumber], [InternalLinkTypeQrCodeAuthentication], [InternalLinkTypeBotStartInGroup], [InternalLinkTypePhoneNumberConfirmation], [InternalLinkTypeMessageDraft], [InternalLinkTypeThemeSettings], [InternalLinkTypeUnsupportedProxy], [InternalLinkTypeChatFolderInvite], [InternalLinkTypeChatBoost], [InternalLinkTypeVideoChat], [InternalLinkTypeStickerSet], [InternalLinkTypeEditProfileSettings], [InternalLinkTypePublicChat], [InternalLinkTypeBotStart], [InternalLinkTypeWebApp], [InternalLinkTypeUserPhoneNumber], [InternalLinkTypeBackground], [InternalLinkTypeLanguagePack], [InternalLinkTypeUserToken], [InternalLinkTypeTheme], [InternalLinkTypeUnknownDeepLink], [InternalLinkTypeSideMenuBot], [InternalLinkTypeAuthenticationCode], [InternalLinkTypeInstantView], [InternalLinkTypeBotAddToChannel], [InternalLinkTypePrivacyAndSecuritySettings], [InternalLinkTypeInvoice], [InternalLinkTypeSettings], [InternalLinkTypeAttachmentMenuBot], [InternalLinkTypeChatInvite], [InternalLinkTypeDefaultMessageAutoDeleteTimerSettings], [InternalLinkTypePassportDataRequest], [InternalLinkTypeLanguageSettings], [InternalLinkTypeRestorePurchases], [InternalLinkTypePremiumFeatures], [InternalLinkTypeActiveSessions], [InternalLinkTypeMessage], [InternalLinkTypeProxy].
abstract class InternalLinkType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "internalLinkType";

  /// Construct from [Map].
  static InternalLinkType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'internalLinkTypeGame':
        return InternalLinkTypeGame.fromMap(_map);
      case 'internalLinkTypeChatFolderSettings':
        return InternalLinkTypeChatFolderSettings.fromMap(_map);
      case 'internalLinkTypeStory':
        return InternalLinkTypeStory.fromMap(_map);
      case 'internalLinkTypeChangePhoneNumber':
        return InternalLinkTypeChangePhoneNumber.fromMap(_map);
      case 'internalLinkTypeQrCodeAuthentication':
        return InternalLinkTypeQrCodeAuthentication.fromMap(_map);
      case 'internalLinkTypeBotStartInGroup':
        return InternalLinkTypeBotStartInGroup.fromMap(_map);
      case 'internalLinkTypePhoneNumberConfirmation':
        return InternalLinkTypePhoneNumberConfirmation.fromMap(_map);
      case 'internalLinkTypeMessageDraft':
        return InternalLinkTypeMessageDraft.fromMap(_map);
      case 'internalLinkTypeThemeSettings':
        return InternalLinkTypeThemeSettings.fromMap(_map);
      case 'internalLinkTypeUnsupportedProxy':
        return InternalLinkTypeUnsupportedProxy.fromMap(_map);
      case 'internalLinkTypeChatFolderInvite':
        return InternalLinkTypeChatFolderInvite.fromMap(_map);
      case 'internalLinkTypeChatBoost':
        return InternalLinkTypeChatBoost.fromMap(_map);
      case 'internalLinkTypeVideoChat':
        return InternalLinkTypeVideoChat.fromMap(_map);
      case 'internalLinkTypeStickerSet':
        return InternalLinkTypeStickerSet.fromMap(_map);
      case 'internalLinkTypeEditProfileSettings':
        return InternalLinkTypeEditProfileSettings.fromMap(_map);
      case 'internalLinkTypePublicChat':
        return InternalLinkTypePublicChat.fromMap(_map);
      case 'internalLinkTypeBotStart':
        return InternalLinkTypeBotStart.fromMap(_map);
      case 'internalLinkTypeWebApp':
        return InternalLinkTypeWebApp.fromMap(_map);
      case 'internalLinkTypeUserPhoneNumber':
        return InternalLinkTypeUserPhoneNumber.fromMap(_map);
      case 'internalLinkTypeBackground':
        return InternalLinkTypeBackground.fromMap(_map);
      case 'internalLinkTypeLanguagePack':
        return InternalLinkTypeLanguagePack.fromMap(_map);
      case 'internalLinkTypeUserToken':
        return InternalLinkTypeUserToken.fromMap(_map);
      case 'internalLinkTypeTheme':
        return InternalLinkTypeTheme.fromMap(_map);
      case 'internalLinkTypeUnknownDeepLink':
        return InternalLinkTypeUnknownDeepLink.fromMap(_map);
      case 'internalLinkTypeSideMenuBot':
        return InternalLinkTypeSideMenuBot.fromMap(_map);
      case 'internalLinkTypeAuthenticationCode':
        return InternalLinkTypeAuthenticationCode.fromMap(_map);
      case 'internalLinkTypeInstantView':
        return InternalLinkTypeInstantView.fromMap(_map);
      case 'internalLinkTypeBotAddToChannel':
        return InternalLinkTypeBotAddToChannel.fromMap(_map);
      case 'internalLinkTypePrivacyAndSecuritySettings':
        return InternalLinkTypePrivacyAndSecuritySettings.fromMap(_map);
      case 'internalLinkTypeInvoice':
        return InternalLinkTypeInvoice.fromMap(_map);
      case 'internalLinkTypeSettings':
        return InternalLinkTypeSettings.fromMap(_map);
      case 'internalLinkTypeAttachmentMenuBot':
        return InternalLinkTypeAttachmentMenuBot.fromMap(_map);
      case 'internalLinkTypeChatInvite':
        return InternalLinkTypeChatInvite.fromMap(_map);
      case 'internalLinkTypeDefaultMessageAutoDeleteTimerSettings':
        return InternalLinkTypeDefaultMessageAutoDeleteTimerSettings.fromMap(
            _map);
      case 'internalLinkTypePassportDataRequest':
        return InternalLinkTypePassportDataRequest.fromMap(_map);
      case 'internalLinkTypeLanguageSettings':
        return InternalLinkTypeLanguageSettings.fromMap(_map);
      case 'internalLinkTypeRestorePurchases':
        return InternalLinkTypeRestorePurchases.fromMap(_map);
      case 'internalLinkTypePremiumFeatures':
        return InternalLinkTypePremiumFeatures.fromMap(_map);
      case 'internalLinkTypeActiveSessions':
        return InternalLinkTypeActiveSessions.fromMap(_map);
      case 'internalLinkTypeMessage':
        return InternalLinkTypeMessage.fromMap(_map);
      case 'internalLinkTypeProxy':
        return InternalLinkTypeProxy.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a type of a block list.
///
/// Inherited by [BlockListStories], [BlockListMain].
abstract class BlockList extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "blockList";

  /// Construct from [Map].
  static BlockList? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'blockListStories':
        return BlockListStories.fromMap(_map);
      case 'blockListMain':
        return BlockListMain.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents the type of a file.
///
/// Inherited by [FileTypeDocument], [FileTypeThumbnail], [FileTypeSecretThumbnail], [FileTypeAudio], [FileTypeSecret], [FileTypeWallpaper], [FileTypeUnknown], [FileTypeSticker], [FileTypeProfilePhoto], [FileTypeNotificationSound], [FileTypeVideoNote], [FileTypeAnimation], [FileTypeVideoStory], [FileTypeVideo], [FileTypePhoto], [FileTypeSecure], [FileTypeNone], [FileTypePhotoStory], [FileTypeVoiceNote].
abstract class FileType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "fileType";

  /// Construct from [Map].
  static FileType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'fileTypeDocument':
        return FileTypeDocument.fromMap(_map);
      case 'fileTypeThumbnail':
        return FileTypeThumbnail.fromMap(_map);
      case 'fileTypeSecretThumbnail':
        return FileTypeSecretThumbnail.fromMap(_map);
      case 'fileTypeAudio':
        return FileTypeAudio.fromMap(_map);
      case 'fileTypeSecret':
        return FileTypeSecret.fromMap(_map);
      case 'fileTypeWallpaper':
        return FileTypeWallpaper.fromMap(_map);
      case 'fileTypeUnknown':
        return FileTypeUnknown.fromMap(_map);
      case 'fileTypeSticker':
        return FileTypeSticker.fromMap(_map);
      case 'fileTypeProfilePhoto':
        return FileTypeProfilePhoto.fromMap(_map);
      case 'fileTypeNotificationSound':
        return FileTypeNotificationSound.fromMap(_map);
      case 'fileTypeVideoNote':
        return FileTypeVideoNote.fromMap(_map);
      case 'fileTypeAnimation':
        return FileTypeAnimation.fromMap(_map);
      case 'fileTypeVideoStory':
        return FileTypeVideoStory.fromMap(_map);
      case 'fileTypeVideo':
        return FileTypeVideo.fromMap(_map);
      case 'fileTypePhoto':
        return FileTypePhoto.fromMap(_map);
      case 'fileTypeSecure':
        return FileTypeSecure.fromMap(_map);
      case 'fileTypeNone':
        return FileTypeNone.fromMap(_map);
      case 'fileTypePhotoStory':
        return FileTypePhotoStory.fromMap(_map);
      case 'fileTypeVoiceNote':
        return FileTypeVoiceNote.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents the type of a network.
///
/// Inherited by [NetworkTypeOther], [NetworkTypeMobile], [NetworkTypeWiFi], [NetworkTypeNone], [NetworkTypeMobileRoaming].
abstract class NetworkType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "networkType";

  /// Construct from [Map].
  static NetworkType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'networkTypeOther':
        return NetworkTypeOther.fromMap(_map);
      case 'networkTypeMobile':
        return NetworkTypeMobile.fromMap(_map);
      case 'networkTypeWiFi':
        return NetworkTypeWiFi.fromMap(_map);
      case 'networkTypeNone':
        return NetworkTypeNone.fromMap(_map);
      case 'networkTypeMobileRoaming':
        return NetworkTypeMobileRoaming.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains statistics about network usage.
///
/// Inherited by [NetworkStatisticsEntryCall], [NetworkStatisticsEntryFile].
abstract class NetworkStatisticsEntry extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "networkStatisticsEntry";

  /// Construct from [Map].
  static NetworkStatisticsEntry? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'networkStatisticsEntryCall':
        return NetworkStatisticsEntryCall.fromMap(_map);
      case 'networkStatisticsEntryFile':
        return NetworkStatisticsEntryFile.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes scope of autosave settings.
///
/// Inherited by [AutosaveSettingsScopeGroupChats], [AutosaveSettingsScopeChannelChats], [AutosaveSettingsScopeChat], [AutosaveSettingsScopePrivateChats].
abstract class AutosaveSettingsScope extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "autosaveSettingsScope";

  /// Construct from [Map].
  static AutosaveSettingsScope? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'autosaveSettingsScopeGroupChats':
        return AutosaveSettingsScopeGroupChats.fromMap(_map);
      case 'autosaveSettingsScopeChannelChats':
        return AutosaveSettingsScopeChannelChats.fromMap(_map);
      case 'autosaveSettingsScopeChat':
        return AutosaveSettingsScopeChat.fromMap(_map);
      case 'autosaveSettingsScopePrivateChats':
        return AutosaveSettingsScopePrivateChats.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the current state of the connection to Telegram servers.
///
/// Inherited by [ConnectionStateConnectingToProxy], [ConnectionStateUpdating], [ConnectionStateReady], [ConnectionStateWaitingForNetwork], [ConnectionStateConnecting].
abstract class ConnectionState extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "connectionState";

  /// Construct from [Map].
  static ConnectionState? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'connectionStateConnectingToProxy':
        return ConnectionStateConnectingToProxy.fromMap(_map);
      case 'connectionStateUpdating':
        return ConnectionStateUpdating.fromMap(_map);
      case 'connectionStateReady':
        return ConnectionStateReady.fromMap(_map);
      case 'connectionStateWaitingForNetwork':
        return ConnectionStateWaitingForNetwork.fromMap(_map);
      case 'connectionStateConnecting':
        return ConnectionStateConnecting.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents the categories of chats for which a list of frequently used chats can be retrieved.
///
/// Inherited by [TopChatCategoryForwardChats], [TopChatCategoryChannels], [TopChatCategoryUsers], [TopChatCategoryCalls], [TopChatCategoryInlineBots], [TopChatCategoryBots], [TopChatCategoryGroups].
abstract class TopChatCategory extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "topChatCategory";

  /// Construct from [Map].
  static TopChatCategory? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'topChatCategoryForwardChats':
        return TopChatCategoryForwardChats.fromMap(_map);
      case 'topChatCategoryChannels':
        return TopChatCategoryChannels.fromMap(_map);
      case 'topChatCategoryUsers':
        return TopChatCategoryUsers.fromMap(_map);
      case 'topChatCategoryCalls':
        return TopChatCategoryCalls.fromMap(_map);
      case 'topChatCategoryInlineBots':
        return TopChatCategoryInlineBots.fromMap(_map);
      case 'topChatCategoryBots':
        return TopChatCategoryBots.fromMap(_map);
      case 'topChatCategoryGroups':
        return TopChatCategoryGroups.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the type of a URL linking to an internal Telegram entity.
///
/// Inherited by [TMeUrlTypeStickerSet], [TMeUrlTypeChatInvite], [TMeUrlTypeUser], [TMeUrlTypeSupergroup].
abstract class TMeUrlType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "tMeUrlType";

  /// Construct from [Map].
  static TMeUrlType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'tMeUrlTypeStickerSet':
        return TMeUrlTypeStickerSet.fromMap(_map);
      case 'tMeUrlTypeChatInvite':
        return TMeUrlTypeChatInvite.fromMap(_map);
      case 'tMeUrlTypeUser':
        return TMeUrlTypeUser.fromMap(_map);
      case 'tMeUrlTypeSupergroup':
        return TMeUrlTypeSupergroup.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes an action suggested to the current user.
///
/// Inherited by [SuggestedActionUpgradePremium], [SuggestedActionCheckPhoneNumber], [SuggestedActionEnableArchiveAndMuteNewChats], [SuggestedActionConvertToBroadcastGroup], [SuggestedActionViewChecksHint], [SuggestedActionSubscribeToAnnualPremium], [SuggestedActionCheckPassword], [SuggestedActionRestorePremium], [SuggestedActionSetPassword].
abstract class SuggestedAction extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "suggestedAction";

  /// Construct from [Map].
  static SuggestedAction? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'suggestedActionUpgradePremium':
        return SuggestedActionUpgradePremium.fromMap(_map);
      case 'suggestedActionCheckPhoneNumber':
        return SuggestedActionCheckPhoneNumber.fromMap(_map);
      case 'suggestedActionEnableArchiveAndMuteNewChats':
        return SuggestedActionEnableArchiveAndMuteNewChats.fromMap(_map);
      case 'suggestedActionConvertToBroadcastGroup':
        return SuggestedActionConvertToBroadcastGroup.fromMap(_map);
      case 'suggestedActionViewChecksHint':
        return SuggestedActionViewChecksHint.fromMap(_map);
      case 'suggestedActionSubscribeToAnnualPremium':
        return SuggestedActionSubscribeToAnnualPremium.fromMap(_map);
      case 'suggestedActionCheckPassword':
        return SuggestedActionCheckPassword.fromMap(_map);
      case 'suggestedActionRestorePremium':
        return SuggestedActionRestorePremium.fromMap(_map);
      case 'suggestedActionSetPassword':
        return SuggestedActionSetPassword.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the way the text needs to be parsed for text entities.
///
/// Inherited by [TextParseModeMarkdown], [TextParseModeHTML].
abstract class TextParseMode extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "textParseMode";

  /// Construct from [Map].
  static TextParseMode? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'textParseModeMarkdown':
        return TextParseModeMarkdown.fromMap(_map);
      case 'textParseModeHTML':
        return TextParseModeHTML.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes the type of a proxy server.
///
/// Inherited by [ProxyTypeHttp], [ProxyTypeSocks5], [ProxyTypeMtproto].
abstract class ProxyType extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "proxyType";

  /// Construct from [Map].
  static ProxyType? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'proxyTypeHttp':
        return ProxyTypeHttp.fromMap(_map);
      case 'proxyTypeSocks5':
        return ProxyTypeSocks5.fromMap(_map);
      case 'proxyTypeMtproto':
        return ProxyTypeMtproto.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a statistical graph.
///
/// Inherited by [StatisticalGraphData], [StatisticalGraphAsync], [StatisticalGraphError].
abstract class StatisticalGraph extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "statisticalGraph";

  /// Construct from [Map].
  static StatisticalGraph? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'statisticalGraphData':
        return StatisticalGraphData.fromMap(_map);
      case 'statisticalGraphAsync':
        return StatisticalGraphAsync.fromMap(_map);
      case 'statisticalGraphError':
        return StatisticalGraphError.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains a detailed statistics about a chat.
///
/// Inherited by [ChatStatisticsChannel], [ChatStatisticsSupergroup].
abstract class ChatStatistics extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "chatStatistics";

  /// Construct from [Map].
  static ChatStatistics? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'chatStatisticsChannel':
        return ChatStatisticsChannel.fromMap(_map);
      case 'chatStatisticsSupergroup':
        return ChatStatisticsSupergroup.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents a vector path command.
///
/// Inherited by [VectorPathCommandCubicBezierCurve], [VectorPathCommandLine].
abstract class VectorPathCommand extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "vectorPathCommand";

  /// Construct from [Map].
  static VectorPathCommand? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'vectorPathCommandCubicBezierCurve':
        return VectorPathCommandCubicBezierCurve.fromMap(_map);
      case 'vectorPathCommandLine':
        return VectorPathCommandLine.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Represents the scope to which bot commands are relevant.
///
/// Inherited by [BotCommandScopeChatAdministrators], [BotCommandScopeAllChatAdministrators], [BotCommandScopeAllPrivateChats], [BotCommandScopeAllGroupChats], [BotCommandScopeChatMember], [BotCommandScopeDefault], [BotCommandScopeChat].
abstract class BotCommandScope extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "botCommandScope";

  /// Construct from [Map].
  static BotCommandScope? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'botCommandScopeChatAdministrators':
        return BotCommandScopeChatAdministrators.fromMap(_map);
      case 'botCommandScopeAllChatAdministrators':
        return BotCommandScopeAllChatAdministrators.fromMap(_map);
      case 'botCommandScopeAllPrivateChats':
        return BotCommandScopeAllPrivateChats.fromMap(_map);
      case 'botCommandScopeAllGroupChats':
        return BotCommandScopeAllGroupChats.fromMap(_map);
      case 'botCommandScopeChatMember':
        return BotCommandScopeChatMember.fromMap(_map);
      case 'botCommandScopeDefault':
        return BotCommandScopeDefault.fromMap(_map);
      case 'botCommandScopeChat':
        return BotCommandScopeChat.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Contains notifications about data changes.
///
/// Inherited by [UpdateFile], [UpdateNotificationGroup], [UpdateFileGenerationStop], [UpdateMessageSendAcknowledged], [UpdateMessageUnreadReactions], [UpdateStorySendSucceeded], [UpdateNewInlineCallbackQuery], [UpdateNewInlineQuery], [UpdateChatMember], [UpdateScopeNotificationSettings], [UpdateUserPrivacySettingRules], [UpdateSupergroupFullInfo], [UpdateServiceNotification], [UpdateActiveNotifications], [UpdateStory], [UpdateTermsOfService], [UpdateChatHasProtectedContent], [UpdateMessageEdited], [UpdateOption], [UpdateChatReadInbox], [UpdateHavePendingNotifications], [UpdateChatActiveStories], [UpdateInstalledStickerSets], [UpdateAnimationSearchParameters], [UpdateChatMessageSender], [UpdateChatLastMessage], [UpdateFileGenerationStart], [UpdateChatUnreadMentionCount], [UpdateChatFolders], [UpdateChatHasScheduledMessages], [UpdateDiceEmojis], [UpdateAnimatedEmojiMessageClicked], [UpdateRecentStickers], [UpdateAuthorizationState], [UpdateSuggestedActions], [UpdateBasicGroupFullInfo], [UpdateSavedAnimations], [UpdateUserStatus], [UpdateSavedNotificationSounds], [UpdateAutosaveSettings], [UpdateUnconfirmedSession], [UpdateChatIsTranslatable], [UpdateFileDownload], [UpdateConnectionState], [UpdateChatPhoto], [UpdateFileDownloads], [UpdateChatPosition], [UpdateNewShippingQuery], [UpdateGroupCallParticipant], [UpdateChatDefaultDisableNotification], [UpdateMessageContentOpened], [UpdateWebAppMessageSent], [UpdatePollAnswer], [UpdateChatReadOutbox], [UpdateTrendingStickerSets], [UpdateMessageSendSucceeded], [UpdateStickerSet], [UpdateGroupCall], [UpdateSelectedBackground], [UpdateChatPermissions], [UpdateStoryStealthMode], [UpdateChatThemes], [UpdateUsersNearby], [UpdateStoryListChatCount], [UpdateChatActionBar], [UpdateMessageMentionRead], [UpdateNewCallbackQuery], [UpdateStoryDeleted], [UpdateNewCallSignalingData], [UpdateNewPreCheckoutQuery], [UpdateUnreadChatCount], [UpdateLanguagePackStrings], [UpdateUserFullInfo], [UpdateChatNotificationSettings], [UpdateMessageInteractionInfo], [UpdatePoll], [UpdateMessageIsPinned], [UpdateCall], [UpdateMessageContent], [UpdateAttachmentMenuBots], [UpdateChatAction], [UpdateNewCustomEvent], [UpdateActiveEmojiReactions], [UpdateSupergroup], [UpdateNewChat], [UpdateChatTitle], [UpdateNewCustomQuery], [UpdateChatIsMarkedAsUnread], [UpdateChatTheme], [UpdateForumTopicInfo], [UpdateNotification], [UpdateChatReplyMarkup], [UpdateChatBlockList], [UpdateFavoriteStickers], [UpdateDefaultReactionType], [UpdateMessageLiveLocationViewed], [UpdateChatAvailableReactions], [UpdateAddChatMembersPrivacyForbidden], [UpdateDeleteMessages], [UpdateNewMessage], [UpdateSecretChat], [UpdateFileRemovedFromDownloads], [UpdateChatOnlineMemberCount], [UpdateChatUnreadReactionCount], [UpdateMessageSendFailed], [UpdateUser], [UpdateUnreadMessageCount], [UpdateChatMessageAutoDeleteTime], [UpdateFileAddedToDownloads], [UpdateBasicGroup], [UpdateChatVideoChat], [UpdateNewChatJoinRequest], [UpdateStorySendFailed], [UpdateChatPendingJoinRequests], [UpdateChatBackground], [UpdateChatDraftMessage], [UpdateNewChosenInlineResult].
abstract class Update extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "update";

  /// Construct from [Map].
  static Update? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'updateFile':
        return UpdateFile.fromMap(_map);
      case 'updateNotificationGroup':
        return UpdateNotificationGroup.fromMap(_map);
      case 'updateFileGenerationStop':
        return UpdateFileGenerationStop.fromMap(_map);
      case 'updateMessageSendAcknowledged':
        return UpdateMessageSendAcknowledged.fromMap(_map);
      case 'updateMessageUnreadReactions':
        return UpdateMessageUnreadReactions.fromMap(_map);
      case 'updateStorySendSucceeded':
        return UpdateStorySendSucceeded.fromMap(_map);
      case 'updateNewInlineCallbackQuery':
        return UpdateNewInlineCallbackQuery.fromMap(_map);
      case 'updateNewInlineQuery':
        return UpdateNewInlineQuery.fromMap(_map);
      case 'updateChatMember':
        return UpdateChatMember.fromMap(_map);
      case 'updateScopeNotificationSettings':
        return UpdateScopeNotificationSettings.fromMap(_map);
      case 'updateUserPrivacySettingRules':
        return UpdateUserPrivacySettingRules.fromMap(_map);
      case 'updateSupergroupFullInfo':
        return UpdateSupergroupFullInfo.fromMap(_map);
      case 'updateServiceNotification':
        return UpdateServiceNotification.fromMap(_map);
      case 'updateActiveNotifications':
        return UpdateActiveNotifications.fromMap(_map);
      case 'updateStory':
        return UpdateStory.fromMap(_map);
      case 'updateTermsOfService':
        return UpdateTermsOfService.fromMap(_map);
      case 'updateChatHasProtectedContent':
        return UpdateChatHasProtectedContent.fromMap(_map);
      case 'updateMessageEdited':
        return UpdateMessageEdited.fromMap(_map);
      case 'updateOption':
        return UpdateOption.fromMap(_map);
      case 'updateChatReadInbox':
        return UpdateChatReadInbox.fromMap(_map);
      case 'updateHavePendingNotifications':
        return UpdateHavePendingNotifications.fromMap(_map);
      case 'updateChatActiveStories':
        return UpdateChatActiveStories.fromMap(_map);
      case 'updateInstalledStickerSets':
        return UpdateInstalledStickerSets.fromMap(_map);
      case 'updateAnimationSearchParameters':
        return UpdateAnimationSearchParameters.fromMap(_map);
      case 'updateChatMessageSender':
        return UpdateChatMessageSender.fromMap(_map);
      case 'updateChatLastMessage':
        return UpdateChatLastMessage.fromMap(_map);
      case 'updateFileGenerationStart':
        return UpdateFileGenerationStart.fromMap(_map);
      case 'updateChatUnreadMentionCount':
        return UpdateChatUnreadMentionCount.fromMap(_map);
      case 'updateChatFolders':
        return UpdateChatFolders.fromMap(_map);
      case 'updateChatHasScheduledMessages':
        return UpdateChatHasScheduledMessages.fromMap(_map);
      case 'updateDiceEmojis':
        return UpdateDiceEmojis.fromMap(_map);
      case 'updateAnimatedEmojiMessageClicked':
        return UpdateAnimatedEmojiMessageClicked.fromMap(_map);
      case 'updateRecentStickers':
        return UpdateRecentStickers.fromMap(_map);
      case 'updateAuthorizationState':
        return UpdateAuthorizationState.fromMap(_map);
      case 'updateSuggestedActions':
        return UpdateSuggestedActions.fromMap(_map);
      case 'updateBasicGroupFullInfo':
        return UpdateBasicGroupFullInfo.fromMap(_map);
      case 'updateSavedAnimations':
        return UpdateSavedAnimations.fromMap(_map);
      case 'updateUserStatus':
        return UpdateUserStatus.fromMap(_map);
      case 'updateSavedNotificationSounds':
        return UpdateSavedNotificationSounds.fromMap(_map);
      case 'updateAutosaveSettings':
        return UpdateAutosaveSettings.fromMap(_map);
      case 'updateUnconfirmedSession':
        return UpdateUnconfirmedSession.fromMap(_map);
      case 'updateChatIsTranslatable':
        return UpdateChatIsTranslatable.fromMap(_map);
      case 'updateFileDownload':
        return UpdateFileDownload.fromMap(_map);
      case 'updateConnectionState':
        return UpdateConnectionState.fromMap(_map);
      case 'updateChatPhoto':
        return UpdateChatPhoto.fromMap(_map);
      case 'updateFileDownloads':
        return UpdateFileDownloads.fromMap(_map);
      case 'updateChatPosition':
        return UpdateChatPosition.fromMap(_map);
      case 'updateNewShippingQuery':
        return UpdateNewShippingQuery.fromMap(_map);
      case 'updateGroupCallParticipant':
        return UpdateGroupCallParticipant.fromMap(_map);
      case 'updateChatDefaultDisableNotification':
        return UpdateChatDefaultDisableNotification.fromMap(_map);
      case 'updateMessageContentOpened':
        return UpdateMessageContentOpened.fromMap(_map);
      case 'updateWebAppMessageSent':
        return UpdateWebAppMessageSent.fromMap(_map);
      case 'updatePollAnswer':
        return UpdatePollAnswer.fromMap(_map);
      case 'updateChatReadOutbox':
        return UpdateChatReadOutbox.fromMap(_map);
      case 'updateTrendingStickerSets':
        return UpdateTrendingStickerSets.fromMap(_map);
      case 'updateMessageSendSucceeded':
        return UpdateMessageSendSucceeded.fromMap(_map);
      case 'updateStickerSet':
        return UpdateStickerSet.fromMap(_map);
      case 'updateGroupCall':
        return UpdateGroupCall.fromMap(_map);
      case 'updateSelectedBackground':
        return UpdateSelectedBackground.fromMap(_map);
      case 'updateChatPermissions':
        return UpdateChatPermissions.fromMap(_map);
      case 'updateStoryStealthMode':
        return UpdateStoryStealthMode.fromMap(_map);
      case 'updateChatThemes':
        return UpdateChatThemes.fromMap(_map);
      case 'updateUsersNearby':
        return UpdateUsersNearby.fromMap(_map);
      case 'updateStoryListChatCount':
        return UpdateStoryListChatCount.fromMap(_map);
      case 'updateChatActionBar':
        return UpdateChatActionBar.fromMap(_map);
      case 'updateMessageMentionRead':
        return UpdateMessageMentionRead.fromMap(_map);
      case 'updateNewCallbackQuery':
        return UpdateNewCallbackQuery.fromMap(_map);
      case 'updateStoryDeleted':
        return UpdateStoryDeleted.fromMap(_map);
      case 'updateNewCallSignalingData':
        return UpdateNewCallSignalingData.fromMap(_map);
      case 'updateNewPreCheckoutQuery':
        return UpdateNewPreCheckoutQuery.fromMap(_map);
      case 'updateUnreadChatCount':
        return UpdateUnreadChatCount.fromMap(_map);
      case 'updateLanguagePackStrings':
        return UpdateLanguagePackStrings.fromMap(_map);
      case 'updateUserFullInfo':
        return UpdateUserFullInfo.fromMap(_map);
      case 'updateChatNotificationSettings':
        return UpdateChatNotificationSettings.fromMap(_map);
      case 'updateMessageInteractionInfo':
        return UpdateMessageInteractionInfo.fromMap(_map);
      case 'updatePoll':
        return UpdatePoll.fromMap(_map);
      case 'updateMessageIsPinned':
        return UpdateMessageIsPinned.fromMap(_map);
      case 'updateCall':
        return UpdateCall.fromMap(_map);
      case 'updateMessageContent':
        return UpdateMessageContent.fromMap(_map);
      case 'updateAttachmentMenuBots':
        return UpdateAttachmentMenuBots.fromMap(_map);
      case 'updateChatAction':
        return UpdateChatAction.fromMap(_map);
      case 'updateNewCustomEvent':
        return UpdateNewCustomEvent.fromMap(_map);
      case 'updateActiveEmojiReactions':
        return UpdateActiveEmojiReactions.fromMap(_map);
      case 'updateSupergroup':
        return UpdateSupergroup.fromMap(_map);
      case 'updateNewChat':
        return UpdateNewChat.fromMap(_map);
      case 'updateChatTitle':
        return UpdateChatTitle.fromMap(_map);
      case 'updateNewCustomQuery':
        return UpdateNewCustomQuery.fromMap(_map);
      case 'updateChatIsMarkedAsUnread':
        return UpdateChatIsMarkedAsUnread.fromMap(_map);
      case 'updateChatTheme':
        return UpdateChatTheme.fromMap(_map);
      case 'updateForumTopicInfo':
        return UpdateForumTopicInfo.fromMap(_map);
      case 'updateNotification':
        return UpdateNotification.fromMap(_map);
      case 'updateChatReplyMarkup':
        return UpdateChatReplyMarkup.fromMap(_map);
      case 'updateChatBlockList':
        return UpdateChatBlockList.fromMap(_map);
      case 'updateFavoriteStickers':
        return UpdateFavoriteStickers.fromMap(_map);
      case 'updateDefaultReactionType':
        return UpdateDefaultReactionType.fromMap(_map);
      case 'updateMessageLiveLocationViewed':
        return UpdateMessageLiveLocationViewed.fromMap(_map);
      case 'updateChatAvailableReactions':
        return UpdateChatAvailableReactions.fromMap(_map);
      case 'updateAddChatMembersPrivacyForbidden':
        return UpdateAddChatMembersPrivacyForbidden.fromMap(_map);
      case 'updateDeleteMessages':
        return UpdateDeleteMessages.fromMap(_map);
      case 'updateNewMessage':
        return UpdateNewMessage.fromMap(_map);
      case 'updateSecretChat':
        return UpdateSecretChat.fromMap(_map);
      case 'updateFileRemovedFromDownloads':
        return UpdateFileRemovedFromDownloads.fromMap(_map);
      case 'updateChatOnlineMemberCount':
        return UpdateChatOnlineMemberCount.fromMap(_map);
      case 'updateChatUnreadReactionCount':
        return UpdateChatUnreadReactionCount.fromMap(_map);
      case 'updateMessageSendFailed':
        return UpdateMessageSendFailed.fromMap(_map);
      case 'updateUser':
        return UpdateUser.fromMap(_map);
      case 'updateUnreadMessageCount':
        return UpdateUnreadMessageCount.fromMap(_map);
      case 'updateChatMessageAutoDeleteTime':
        return UpdateChatMessageAutoDeleteTime.fromMap(_map);
      case 'updateFileAddedToDownloads':
        return UpdateFileAddedToDownloads.fromMap(_map);
      case 'updateBasicGroup':
        return UpdateBasicGroup.fromMap(_map);
      case 'updateChatVideoChat':
        return UpdateChatVideoChat.fromMap(_map);
      case 'updateNewChatJoinRequest':
        return UpdateNewChatJoinRequest.fromMap(_map);
      case 'updateStorySendFailed':
        return UpdateStorySendFailed.fromMap(_map);
      case 'updateChatPendingJoinRequests':
        return UpdateChatPendingJoinRequests.fromMap(_map);
      case 'updateChatBackground':
        return UpdateChatBackground.fromMap(_map);
      case 'updateChatDraftMessage':
        return UpdateChatDraftMessage.fromMap(_map);
      case 'updateNewChosenInlineResult':
        return UpdateNewChosenInlineResult.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}

/// Describes a stream to which TDLib internal log is written.
///
/// Inherited by [LogStreamDefault], [LogStreamFile], [LogStreamEmpty].
abstract class LogStream extends TlObject {
  /// @type
  static const String CONSTRUCTOR = "logStream";

  /// Construct from [Map].
  static LogStream? fromMap(Map<String, dynamic>? _map) {
    if (_map == null) return null;
    var _ = _map["@type"];
    switch (_) {
      case 'logStreamDefault':
        return LogStreamDefault.fromMap(_map);
      case 'logStreamFile':
        return LogStreamFile.fromMap(_map);
      case 'logStreamEmpty':
        return LogStreamEmpty.fromMap(_map);
      case null:
      default:
        return null;
    }
  }
}
