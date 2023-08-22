import './classes.dart';
import './abc.dart';

extension AuthenticationCodeTypeExt on AuthenticationCodeType {
  AuthenticationCodeTypeTelegramMessage?
      get authenticationCodeTypeTelegramMessage {
    if (this is AuthenticationCodeTypeTelegramMessage) {
      return this as AuthenticationCodeTypeTelegramMessage;
    }
    return null;
  }

  AuthenticationCodeTypeFirebaseAndroid?
      get authenticationCodeTypeFirebaseAndroid {
    if (this is AuthenticationCodeTypeFirebaseAndroid) {
      return this as AuthenticationCodeTypeFirebaseAndroid;
    }
    return null;
  }

  AuthenticationCodeTypeSms? get authenticationCodeTypeSms {
    if (this is AuthenticationCodeTypeSms) {
      return this as AuthenticationCodeTypeSms;
    }
    return null;
  }

  AuthenticationCodeTypeFragment? get authenticationCodeTypeFragment {
    if (this is AuthenticationCodeTypeFragment) {
      return this as AuthenticationCodeTypeFragment;
    }
    return null;
  }

  AuthenticationCodeTypeMissedCall? get authenticationCodeTypeMissedCall {
    if (this is AuthenticationCodeTypeMissedCall) {
      return this as AuthenticationCodeTypeMissedCall;
    }
    return null;
  }

  AuthenticationCodeTypeFirebaseIos? get authenticationCodeTypeFirebaseIos {
    if (this is AuthenticationCodeTypeFirebaseIos) {
      return this as AuthenticationCodeTypeFirebaseIos;
    }
    return null;
  }

  AuthenticationCodeTypeFlashCall? get authenticationCodeTypeFlashCall {
    if (this is AuthenticationCodeTypeFlashCall) {
      return this as AuthenticationCodeTypeFlashCall;
    }
    return null;
  }

  AuthenticationCodeTypeCall? get authenticationCodeTypeCall {
    if (this is AuthenticationCodeTypeCall) {
      return this as AuthenticationCodeTypeCall;
    }
    return null;
  }
}

extension EmailAddressAuthenticationExt on EmailAddressAuthentication {
  EmailAddressAuthenticationAppleId? get emailAddressAuthenticationAppleId {
    if (this is EmailAddressAuthenticationAppleId) {
      return this as EmailAddressAuthenticationAppleId;
    }
    return null;
  }

  EmailAddressAuthenticationGoogleId? get emailAddressAuthenticationGoogleId {
    if (this is EmailAddressAuthenticationGoogleId) {
      return this as EmailAddressAuthenticationGoogleId;
    }
    return null;
  }

  EmailAddressAuthenticationCode? get emailAddressAuthenticationCode {
    if (this is EmailAddressAuthenticationCode) {
      return this as EmailAddressAuthenticationCode;
    }
    return null;
  }
}

extension EmailAddressResetStateExt on EmailAddressResetState {
  EmailAddressResetStateAvailable? get emailAddressResetStateAvailable {
    if (this is EmailAddressResetStateAvailable) {
      return this as EmailAddressResetStateAvailable;
    }
    return null;
  }

  EmailAddressResetStatePending? get emailAddressResetStatePending {
    if (this is EmailAddressResetStatePending) {
      return this as EmailAddressResetStatePending;
    }
    return null;
  }
}

extension AuthorizationStateExt on AuthorizationState {
  AuthorizationStateWaitRegistration? get authorizationStateWaitRegistration {
    if (this is AuthorizationStateWaitRegistration) {
      return this as AuthorizationStateWaitRegistration;
    }
    return null;
  }

  AuthorizationStateWaitPassword? get authorizationStateWaitPassword {
    if (this is AuthorizationStateWaitPassword) {
      return this as AuthorizationStateWaitPassword;
    }
    return null;
  }

  AuthorizationStateClosed? get authorizationStateClosed {
    if (this is AuthorizationStateClosed) {
      return this as AuthorizationStateClosed;
    }
    return null;
  }

  AuthorizationStateWaitEmailAddress? get authorizationStateWaitEmailAddress {
    if (this is AuthorizationStateWaitEmailAddress) {
      return this as AuthorizationStateWaitEmailAddress;
    }
    return null;
  }

  AuthorizationStateLoggingOut? get authorizationStateLoggingOut {
    if (this is AuthorizationStateLoggingOut) {
      return this as AuthorizationStateLoggingOut;
    }
    return null;
  }

  AuthorizationStateClosing? get authorizationStateClosing {
    if (this is AuthorizationStateClosing) {
      return this as AuthorizationStateClosing;
    }
    return null;
  }

  AuthorizationStateWaitPhoneNumber? get authorizationStateWaitPhoneNumber {
    if (this is AuthorizationStateWaitPhoneNumber) {
      return this as AuthorizationStateWaitPhoneNumber;
    }
    return null;
  }

  AuthorizationStateWaitEmailCode? get authorizationStateWaitEmailCode {
    if (this is AuthorizationStateWaitEmailCode) {
      return this as AuthorizationStateWaitEmailCode;
    }
    return null;
  }

  AuthorizationStateWaitTdlibParameters?
      get authorizationStateWaitTdlibParameters {
    if (this is AuthorizationStateWaitTdlibParameters) {
      return this as AuthorizationStateWaitTdlibParameters;
    }
    return null;
  }

  AuthorizationStateWaitOtherDeviceConfirmation?
      get authorizationStateWaitOtherDeviceConfirmation {
    if (this is AuthorizationStateWaitOtherDeviceConfirmation) {
      return this as AuthorizationStateWaitOtherDeviceConfirmation;
    }
    return null;
  }

  AuthorizationStateWaitCode? get authorizationStateWaitCode {
    if (this is AuthorizationStateWaitCode) {
      return this as AuthorizationStateWaitCode;
    }
    return null;
  }

  AuthorizationStateReady? get authorizationStateReady {
    if (this is AuthorizationStateReady) {
      return this as AuthorizationStateReady;
    }
    return null;
  }
}

extension InputFileExt on InputFile {
  InputFileRemote? get inputFileRemote {
    if (this is InputFileRemote) {
      return this as InputFileRemote;
    }
    return null;
  }

  InputFileId? get inputFileId {
    if (this is InputFileId) {
      return this as InputFileId;
    }
    return null;
  }

  InputFileLocal? get inputFileLocal {
    if (this is InputFileLocal) {
      return this as InputFileLocal;
    }
    return null;
  }

  InputFileGenerated? get inputFileGenerated {
    if (this is InputFileGenerated) {
      return this as InputFileGenerated;
    }
    return null;
  }
}

extension ThumbnailFormatExt on ThumbnailFormat {
  ThumbnailFormatTgs? get thumbnailFormatTgs {
    if (this is ThumbnailFormatTgs) {
      return this as ThumbnailFormatTgs;
    }
    return null;
  }

  ThumbnailFormatPng? get thumbnailFormatPng {
    if (this is ThumbnailFormatPng) {
      return this as ThumbnailFormatPng;
    }
    return null;
  }

  ThumbnailFormatGif? get thumbnailFormatGif {
    if (this is ThumbnailFormatGif) {
      return this as ThumbnailFormatGif;
    }
    return null;
  }

  ThumbnailFormatMpeg4? get thumbnailFormatMpeg4 {
    if (this is ThumbnailFormatMpeg4) {
      return this as ThumbnailFormatMpeg4;
    }
    return null;
  }

  ThumbnailFormatJpeg? get thumbnailFormatJpeg {
    if (this is ThumbnailFormatJpeg) {
      return this as ThumbnailFormatJpeg;
    }
    return null;
  }

  ThumbnailFormatWebp? get thumbnailFormatWebp {
    if (this is ThumbnailFormatWebp) {
      return this as ThumbnailFormatWebp;
    }
    return null;
  }

  ThumbnailFormatWebm? get thumbnailFormatWebm {
    if (this is ThumbnailFormatWebm) {
      return this as ThumbnailFormatWebm;
    }
    return null;
  }
}

extension MaskPointExt on MaskPoint {
  MaskPointForehead? get maskPointForehead {
    if (this is MaskPointForehead) {
      return this as MaskPointForehead;
    }
    return null;
  }

  MaskPointMouth? get maskPointMouth {
    if (this is MaskPointMouth) {
      return this as MaskPointMouth;
    }
    return null;
  }

  MaskPointEyes? get maskPointEyes {
    if (this is MaskPointEyes) {
      return this as MaskPointEyes;
    }
    return null;
  }

  MaskPointChin? get maskPointChin {
    if (this is MaskPointChin) {
      return this as MaskPointChin;
    }
    return null;
  }
}

extension StickerFormatExt on StickerFormat {
  StickerFormatWebm? get stickerFormatWebm {
    if (this is StickerFormatWebm) {
      return this as StickerFormatWebm;
    }
    return null;
  }

  StickerFormatWebp? get stickerFormatWebp {
    if (this is StickerFormatWebp) {
      return this as StickerFormatWebp;
    }
    return null;
  }

  StickerFormatTgs? get stickerFormatTgs {
    if (this is StickerFormatTgs) {
      return this as StickerFormatTgs;
    }
    return null;
  }
}

extension StickerTypeExt on StickerType {
  StickerTypeMask? get stickerTypeMask {
    if (this is StickerTypeMask) {
      return this as StickerTypeMask;
    }
    return null;
  }

  StickerTypeCustomEmoji? get stickerTypeCustomEmoji {
    if (this is StickerTypeCustomEmoji) {
      return this as StickerTypeCustomEmoji;
    }
    return null;
  }

  StickerTypeRegular? get stickerTypeRegular {
    if (this is StickerTypeRegular) {
      return this as StickerTypeRegular;
    }
    return null;
  }
}

extension StickerFullTypeExt on StickerFullType {
  StickerFullTypeCustomEmoji? get stickerFullTypeCustomEmoji {
    if (this is StickerFullTypeCustomEmoji) {
      return this as StickerFullTypeCustomEmoji;
    }
    return null;
  }

  StickerFullTypeMask? get stickerFullTypeMask {
    if (this is StickerFullTypeMask) {
      return this as StickerFullTypeMask;
    }
    return null;
  }

  StickerFullTypeRegular? get stickerFullTypeRegular {
    if (this is StickerFullTypeRegular) {
      return this as StickerFullTypeRegular;
    }
    return null;
  }
}

extension PollTypeExt on PollType {
  PollTypeQuiz? get pollTypeQuiz {
    if (this is PollTypeQuiz) {
      return this as PollTypeQuiz;
    }
    return null;
  }

  PollTypeRegular? get pollTypeRegular {
    if (this is PollTypeRegular) {
      return this as PollTypeRegular;
    }
    return null;
  }
}

extension UserTypeExt on UserType {
  UserTypeBot? get userTypeBot {
    if (this is UserTypeBot) {
      return this as UserTypeBot;
    }
    return null;
  }

  UserTypeRegular? get userTypeRegular {
    if (this is UserTypeRegular) {
      return this as UserTypeRegular;
    }
    return null;
  }

  UserTypeDeleted? get userTypeDeleted {
    if (this is UserTypeDeleted) {
      return this as UserTypeDeleted;
    }
    return null;
  }

  UserTypeUnknown? get userTypeUnknown {
    if (this is UserTypeUnknown) {
      return this as UserTypeUnknown;
    }
    return null;
  }
}

extension ChatPhotoStickerTypeExt on ChatPhotoStickerType {
  ChatPhotoStickerTypeCustomEmoji? get chatPhotoStickerTypeCustomEmoji {
    if (this is ChatPhotoStickerTypeCustomEmoji) {
      return this as ChatPhotoStickerTypeCustomEmoji;
    }
    return null;
  }

  ChatPhotoStickerTypeRegularOrMask? get chatPhotoStickerTypeRegularOrMask {
    if (this is ChatPhotoStickerTypeRegularOrMask) {
      return this as ChatPhotoStickerTypeRegularOrMask;
    }
    return null;
  }
}

extension InputChatPhotoExt on InputChatPhoto {
  InputChatPhotoPrevious? get inputChatPhotoPrevious {
    if (this is InputChatPhotoPrevious) {
      return this as InputChatPhotoPrevious;
    }
    return null;
  }

  InputChatPhotoAnimation? get inputChatPhotoAnimation {
    if (this is InputChatPhotoAnimation) {
      return this as InputChatPhotoAnimation;
    }
    return null;
  }

  InputChatPhotoStatic? get inputChatPhotoStatic {
    if (this is InputChatPhotoStatic) {
      return this as InputChatPhotoStatic;
    }
    return null;
  }

  InputChatPhotoSticker? get inputChatPhotoSticker {
    if (this is InputChatPhotoSticker) {
      return this as InputChatPhotoSticker;
    }
    return null;
  }
}

extension ChatMemberStatusExt on ChatMemberStatus {
  ChatMemberStatusLeft? get chatMemberStatusLeft {
    if (this is ChatMemberStatusLeft) {
      return this as ChatMemberStatusLeft;
    }
    return null;
  }

  ChatMemberStatusBanned? get chatMemberStatusBanned {
    if (this is ChatMemberStatusBanned) {
      return this as ChatMemberStatusBanned;
    }
    return null;
  }

  ChatMemberStatusAdministrator? get chatMemberStatusAdministrator {
    if (this is ChatMemberStatusAdministrator) {
      return this as ChatMemberStatusAdministrator;
    }
    return null;
  }

  ChatMemberStatusMember? get chatMemberStatusMember {
    if (this is ChatMemberStatusMember) {
      return this as ChatMemberStatusMember;
    }
    return null;
  }

  ChatMemberStatusRestricted? get chatMemberStatusRestricted {
    if (this is ChatMemberStatusRestricted) {
      return this as ChatMemberStatusRestricted;
    }
    return null;
  }

  ChatMemberStatusCreator? get chatMemberStatusCreator {
    if (this is ChatMemberStatusCreator) {
      return this as ChatMemberStatusCreator;
    }
    return null;
  }
}

extension ChatMembersFilterExt on ChatMembersFilter {
  ChatMembersFilterRestricted? get chatMembersFilterRestricted {
    if (this is ChatMembersFilterRestricted) {
      return this as ChatMembersFilterRestricted;
    }
    return null;
  }

  ChatMembersFilterBanned? get chatMembersFilterBanned {
    if (this is ChatMembersFilterBanned) {
      return this as ChatMembersFilterBanned;
    }
    return null;
  }

  ChatMembersFilterAdministrators? get chatMembersFilterAdministrators {
    if (this is ChatMembersFilterAdministrators) {
      return this as ChatMembersFilterAdministrators;
    }
    return null;
  }

  ChatMembersFilterMembers? get chatMembersFilterMembers {
    if (this is ChatMembersFilterMembers) {
      return this as ChatMembersFilterMembers;
    }
    return null;
  }

  ChatMembersFilterContacts? get chatMembersFilterContacts {
    if (this is ChatMembersFilterContacts) {
      return this as ChatMembersFilterContacts;
    }
    return null;
  }

  ChatMembersFilterMention? get chatMembersFilterMention {
    if (this is ChatMembersFilterMention) {
      return this as ChatMembersFilterMention;
    }
    return null;
  }

  ChatMembersFilterBots? get chatMembersFilterBots {
    if (this is ChatMembersFilterBots) {
      return this as ChatMembersFilterBots;
    }
    return null;
  }
}

extension SupergroupMembersFilterExt on SupergroupMembersFilter {
  SupergroupMembersFilterRestricted? get supergroupMembersFilterRestricted {
    if (this is SupergroupMembersFilterRestricted) {
      return this as SupergroupMembersFilterRestricted;
    }
    return null;
  }

  SupergroupMembersFilterAdministrators?
      get supergroupMembersFilterAdministrators {
    if (this is SupergroupMembersFilterAdministrators) {
      return this as SupergroupMembersFilterAdministrators;
    }
    return null;
  }

  SupergroupMembersFilterMention? get supergroupMembersFilterMention {
    if (this is SupergroupMembersFilterMention) {
      return this as SupergroupMembersFilterMention;
    }
    return null;
  }

  SupergroupMembersFilterSearch? get supergroupMembersFilterSearch {
    if (this is SupergroupMembersFilterSearch) {
      return this as SupergroupMembersFilterSearch;
    }
    return null;
  }

  SupergroupMembersFilterContacts? get supergroupMembersFilterContacts {
    if (this is SupergroupMembersFilterContacts) {
      return this as SupergroupMembersFilterContacts;
    }
    return null;
  }

  SupergroupMembersFilterRecent? get supergroupMembersFilterRecent {
    if (this is SupergroupMembersFilterRecent) {
      return this as SupergroupMembersFilterRecent;
    }
    return null;
  }

  SupergroupMembersFilterBanned? get supergroupMembersFilterBanned {
    if (this is SupergroupMembersFilterBanned) {
      return this as SupergroupMembersFilterBanned;
    }
    return null;
  }

  SupergroupMembersFilterBots? get supergroupMembersFilterBots {
    if (this is SupergroupMembersFilterBots) {
      return this as SupergroupMembersFilterBots;
    }
    return null;
  }
}

extension SecretChatStateExt on SecretChatState {
  SecretChatStatePending? get secretChatStatePending {
    if (this is SecretChatStatePending) {
      return this as SecretChatStatePending;
    }
    return null;
  }

  SecretChatStateReady? get secretChatStateReady {
    if (this is SecretChatStateReady) {
      return this as SecretChatStateReady;
    }
    return null;
  }

  SecretChatStateClosed? get secretChatStateClosed {
    if (this is SecretChatStateClosed) {
      return this as SecretChatStateClosed;
    }
    return null;
  }
}

extension MessageSenderExt on MessageSender {
  MessageSenderUser? get messageSenderUser {
    if (this is MessageSenderUser) {
      return this as MessageSenderUser;
    }
    return null;
  }

  MessageSenderChat? get messageSenderChat {
    if (this is MessageSenderChat) {
      return this as MessageSenderChat;
    }
    return null;
  }
}

extension MessageForwardOriginExt on MessageForwardOrigin {
  MessageForwardOriginHiddenUser? get messageForwardOriginHiddenUser {
    if (this is MessageForwardOriginHiddenUser) {
      return this as MessageForwardOriginHiddenUser;
    }
    return null;
  }

  MessageForwardOriginMessageImport? get messageForwardOriginMessageImport {
    if (this is MessageForwardOriginMessageImport) {
      return this as MessageForwardOriginMessageImport;
    }
    return null;
  }

  MessageForwardOriginChat? get messageForwardOriginChat {
    if (this is MessageForwardOriginChat) {
      return this as MessageForwardOriginChat;
    }
    return null;
  }

  MessageForwardOriginUser? get messageForwardOriginUser {
    if (this is MessageForwardOriginUser) {
      return this as MessageForwardOriginUser;
    }
    return null;
  }

  MessageForwardOriginChannel? get messageForwardOriginChannel {
    if (this is MessageForwardOriginChannel) {
      return this as MessageForwardOriginChannel;
    }
    return null;
  }
}

extension ReactionTypeExt on ReactionType {
  ReactionTypeEmoji? get reactionTypeEmoji {
    if (this is ReactionTypeEmoji) {
      return this as ReactionTypeEmoji;
    }
    return null;
  }

  ReactionTypeCustomEmoji? get reactionTypeCustomEmoji {
    if (this is ReactionTypeCustomEmoji) {
      return this as ReactionTypeCustomEmoji;
    }
    return null;
  }
}

extension MessageSendingStateExt on MessageSendingState {
  MessageSendingStateFailed? get messageSendingStateFailed {
    if (this is MessageSendingStateFailed) {
      return this as MessageSendingStateFailed;
    }
    return null;
  }

  MessageSendingStatePending? get messageSendingStatePending {
    if (this is MessageSendingStatePending) {
      return this as MessageSendingStatePending;
    }
    return null;
  }
}

extension MessageReplyToExt on MessageReplyTo {
  MessageReplyToStory? get messageReplyToStory {
    if (this is MessageReplyToStory) {
      return this as MessageReplyToStory;
    }
    return null;
  }

  MessageReplyToMessage? get messageReplyToMessage {
    if (this is MessageReplyToMessage) {
      return this as MessageReplyToMessage;
    }
    return null;
  }
}

extension MessageSourceExt on MessageSource {
  MessageSourceChatEventLog? get messageSourceChatEventLog {
    if (this is MessageSourceChatEventLog) {
      return this as MessageSourceChatEventLog;
    }
    return null;
  }

  MessageSourceOther? get messageSourceOther {
    if (this is MessageSourceOther) {
      return this as MessageSourceOther;
    }
    return null;
  }

  MessageSourceChatHistory? get messageSourceChatHistory {
    if (this is MessageSourceChatHistory) {
      return this as MessageSourceChatHistory;
    }
    return null;
  }

  MessageSourceSearch? get messageSourceSearch {
    if (this is MessageSourceSearch) {
      return this as MessageSourceSearch;
    }
    return null;
  }

  MessageSourceHistoryPreview? get messageSourceHistoryPreview {
    if (this is MessageSourceHistoryPreview) {
      return this as MessageSourceHistoryPreview;
    }
    return null;
  }

  MessageSourceMessageThreadHistory? get messageSourceMessageThreadHistory {
    if (this is MessageSourceMessageThreadHistory) {
      return this as MessageSourceMessageThreadHistory;
    }
    return null;
  }

  MessageSourceNotification? get messageSourceNotification {
    if (this is MessageSourceNotification) {
      return this as MessageSourceNotification;
    }
    return null;
  }

  MessageSourceChatList? get messageSourceChatList {
    if (this is MessageSourceChatList) {
      return this as MessageSourceChatList;
    }
    return null;
  }

  MessageSourceForumTopicHistory? get messageSourceForumTopicHistory {
    if (this is MessageSourceForumTopicHistory) {
      return this as MessageSourceForumTopicHistory;
    }
    return null;
  }

  MessageSourceScreenshot? get messageSourceScreenshot {
    if (this is MessageSourceScreenshot) {
      return this as MessageSourceScreenshot;
    }
    return null;
  }
}

extension MessageSponsorTypeExt on MessageSponsorType {
  MessageSponsorTypePublicChannel? get messageSponsorTypePublicChannel {
    if (this is MessageSponsorTypePublicChannel) {
      return this as MessageSponsorTypePublicChannel;
    }
    return null;
  }

  MessageSponsorTypeWebsite? get messageSponsorTypeWebsite {
    if (this is MessageSponsorTypeWebsite) {
      return this as MessageSponsorTypeWebsite;
    }
    return null;
  }

  MessageSponsorTypeBot? get messageSponsorTypeBot {
    if (this is MessageSponsorTypeBot) {
      return this as MessageSponsorTypeBot;
    }
    return null;
  }

  MessageSponsorTypePrivateChannel? get messageSponsorTypePrivateChannel {
    if (this is MessageSponsorTypePrivateChannel) {
      return this as MessageSponsorTypePrivateChannel;
    }
    return null;
  }
}

extension NotificationSettingsScopeExt on NotificationSettingsScope {
  NotificationSettingsScopeChannelChats?
      get notificationSettingsScopeChannelChats {
    if (this is NotificationSettingsScopeChannelChats) {
      return this as NotificationSettingsScopeChannelChats;
    }
    return null;
  }

  NotificationSettingsScopeGroupChats? get notificationSettingsScopeGroupChats {
    if (this is NotificationSettingsScopeGroupChats) {
      return this as NotificationSettingsScopeGroupChats;
    }
    return null;
  }

  NotificationSettingsScopePrivateChats?
      get notificationSettingsScopePrivateChats {
    if (this is NotificationSettingsScopePrivateChats) {
      return this as NotificationSettingsScopePrivateChats;
    }
    return null;
  }
}

extension ChatTypeExt on ChatType {
  ChatTypeSupergroup? get chatTypeSupergroup {
    if (this is ChatTypeSupergroup) {
      return this as ChatTypeSupergroup;
    }
    return null;
  }

  ChatTypePrivate? get chatTypePrivate {
    if (this is ChatTypePrivate) {
      return this as ChatTypePrivate;
    }
    return null;
  }

  ChatTypeBasicGroup? get chatTypeBasicGroup {
    if (this is ChatTypeBasicGroup) {
      return this as ChatTypeBasicGroup;
    }
    return null;
  }

  ChatTypeSecret? get chatTypeSecret {
    if (this is ChatTypeSecret) {
      return this as ChatTypeSecret;
    }
    return null;
  }
}

extension ChatListExt on ChatList {
  ChatListFolder? get chatListFolder {
    if (this is ChatListFolder) {
      return this as ChatListFolder;
    }
    return null;
  }

  ChatListArchive? get chatListArchive {
    if (this is ChatListArchive) {
      return this as ChatListArchive;
    }
    return null;
  }

  ChatListMain? get chatListMain {
    if (this is ChatListMain) {
      return this as ChatListMain;
    }
    return null;
  }
}

extension ChatSourceExt on ChatSource {
  ChatSourcePublicServiceAnnouncement? get chatSourcePublicServiceAnnouncement {
    if (this is ChatSourcePublicServiceAnnouncement) {
      return this as ChatSourcePublicServiceAnnouncement;
    }
    return null;
  }

  ChatSourceMtprotoProxy? get chatSourceMtprotoProxy {
    if (this is ChatSourceMtprotoProxy) {
      return this as ChatSourceMtprotoProxy;
    }
    return null;
  }
}

extension ChatAvailableReactionsExt on ChatAvailableReactions {
  ChatAvailableReactionsAll? get chatAvailableReactionsAll {
    if (this is ChatAvailableReactionsAll) {
      return this as ChatAvailableReactionsAll;
    }
    return null;
  }

  ChatAvailableReactionsSome? get chatAvailableReactionsSome {
    if (this is ChatAvailableReactionsSome) {
      return this as ChatAvailableReactionsSome;
    }
    return null;
  }
}

extension PublicChatTypeExt on PublicChatType {
  PublicChatTypeHasUsername? get publicChatTypeHasUsername {
    if (this is PublicChatTypeHasUsername) {
      return this as PublicChatTypeHasUsername;
    }
    return null;
  }

  PublicChatTypeIsLocationBased? get publicChatTypeIsLocationBased {
    if (this is PublicChatTypeIsLocationBased) {
      return this as PublicChatTypeIsLocationBased;
    }
    return null;
  }
}

extension ChatActionBarExt on ChatActionBar {
  ChatActionBarSharePhoneNumber? get chatActionBarSharePhoneNumber {
    if (this is ChatActionBarSharePhoneNumber) {
      return this as ChatActionBarSharePhoneNumber;
    }
    return null;
  }

  ChatActionBarReportSpam? get chatActionBarReportSpam {
    if (this is ChatActionBarReportSpam) {
      return this as ChatActionBarReportSpam;
    }
    return null;
  }

  ChatActionBarReportUnrelatedLocation?
      get chatActionBarReportUnrelatedLocation {
    if (this is ChatActionBarReportUnrelatedLocation) {
      return this as ChatActionBarReportUnrelatedLocation;
    }
    return null;
  }

  ChatActionBarReportAddBlock? get chatActionBarReportAddBlock {
    if (this is ChatActionBarReportAddBlock) {
      return this as ChatActionBarReportAddBlock;
    }
    return null;
  }

  ChatActionBarJoinRequest? get chatActionBarJoinRequest {
    if (this is ChatActionBarJoinRequest) {
      return this as ChatActionBarJoinRequest;
    }
    return null;
  }

  ChatActionBarAddContact? get chatActionBarAddContact {
    if (this is ChatActionBarAddContact) {
      return this as ChatActionBarAddContact;
    }
    return null;
  }

  ChatActionBarInviteMembers? get chatActionBarInviteMembers {
    if (this is ChatActionBarInviteMembers) {
      return this as ChatActionBarInviteMembers;
    }
    return null;
  }
}

extension KeyboardButtonTypeExt on KeyboardButtonType {
  KeyboardButtonTypeText? get keyboardButtonTypeText {
    if (this is KeyboardButtonTypeText) {
      return this as KeyboardButtonTypeText;
    }
    return null;
  }

  KeyboardButtonTypeRequestPhoneNumber?
      get keyboardButtonTypeRequestPhoneNumber {
    if (this is KeyboardButtonTypeRequestPhoneNumber) {
      return this as KeyboardButtonTypeRequestPhoneNumber;
    }
    return null;
  }

  KeyboardButtonTypeRequestLocation? get keyboardButtonTypeRequestLocation {
    if (this is KeyboardButtonTypeRequestLocation) {
      return this as KeyboardButtonTypeRequestLocation;
    }
    return null;
  }

  KeyboardButtonTypeRequestUser? get keyboardButtonTypeRequestUser {
    if (this is KeyboardButtonTypeRequestUser) {
      return this as KeyboardButtonTypeRequestUser;
    }
    return null;
  }

  KeyboardButtonTypeRequestPoll? get keyboardButtonTypeRequestPoll {
    if (this is KeyboardButtonTypeRequestPoll) {
      return this as KeyboardButtonTypeRequestPoll;
    }
    return null;
  }

  KeyboardButtonTypeWebApp? get keyboardButtonTypeWebApp {
    if (this is KeyboardButtonTypeWebApp) {
      return this as KeyboardButtonTypeWebApp;
    }
    return null;
  }

  KeyboardButtonTypeRequestChat? get keyboardButtonTypeRequestChat {
    if (this is KeyboardButtonTypeRequestChat) {
      return this as KeyboardButtonTypeRequestChat;
    }
    return null;
  }
}

extension InlineKeyboardButtonTypeExt on InlineKeyboardButtonType {
  InlineKeyboardButtonTypeCallback? get inlineKeyboardButtonTypeCallback {
    if (this is InlineKeyboardButtonTypeCallback) {
      return this as InlineKeyboardButtonTypeCallback;
    }
    return null;
  }

  InlineKeyboardButtonTypeSwitchInline?
      get inlineKeyboardButtonTypeSwitchInline {
    if (this is InlineKeyboardButtonTypeSwitchInline) {
      return this as InlineKeyboardButtonTypeSwitchInline;
    }
    return null;
  }

  InlineKeyboardButtonTypeBuy? get inlineKeyboardButtonTypeBuy {
    if (this is InlineKeyboardButtonTypeBuy) {
      return this as InlineKeyboardButtonTypeBuy;
    }
    return null;
  }

  InlineKeyboardButtonTypeUser? get inlineKeyboardButtonTypeUser {
    if (this is InlineKeyboardButtonTypeUser) {
      return this as InlineKeyboardButtonTypeUser;
    }
    return null;
  }

  InlineKeyboardButtonTypeCallbackWithPassword?
      get inlineKeyboardButtonTypeCallbackWithPassword {
    if (this is InlineKeyboardButtonTypeCallbackWithPassword) {
      return this as InlineKeyboardButtonTypeCallbackWithPassword;
    }
    return null;
  }

  InlineKeyboardButtonTypeWebApp? get inlineKeyboardButtonTypeWebApp {
    if (this is InlineKeyboardButtonTypeWebApp) {
      return this as InlineKeyboardButtonTypeWebApp;
    }
    return null;
  }

  InlineKeyboardButtonTypeLoginUrl? get inlineKeyboardButtonTypeLoginUrl {
    if (this is InlineKeyboardButtonTypeLoginUrl) {
      return this as InlineKeyboardButtonTypeLoginUrl;
    }
    return null;
  }

  InlineKeyboardButtonTypeUrl? get inlineKeyboardButtonTypeUrl {
    if (this is InlineKeyboardButtonTypeUrl) {
      return this as InlineKeyboardButtonTypeUrl;
    }
    return null;
  }

  InlineKeyboardButtonTypeCallbackGame?
      get inlineKeyboardButtonTypeCallbackGame {
    if (this is InlineKeyboardButtonTypeCallbackGame) {
      return this as InlineKeyboardButtonTypeCallbackGame;
    }
    return null;
  }
}

extension ReplyMarkupExt on ReplyMarkup {
  ReplyMarkupRemoveKeyboard? get replyMarkupRemoveKeyboard {
    if (this is ReplyMarkupRemoveKeyboard) {
      return this as ReplyMarkupRemoveKeyboard;
    }
    return null;
  }

  ReplyMarkupForceReply? get replyMarkupForceReply {
    if (this is ReplyMarkupForceReply) {
      return this as ReplyMarkupForceReply;
    }
    return null;
  }

  ReplyMarkupInlineKeyboard? get replyMarkupInlineKeyboard {
    if (this is ReplyMarkupInlineKeyboard) {
      return this as ReplyMarkupInlineKeyboard;
    }
    return null;
  }

  ReplyMarkupShowKeyboard? get replyMarkupShowKeyboard {
    if (this is ReplyMarkupShowKeyboard) {
      return this as ReplyMarkupShowKeyboard;
    }
    return null;
  }
}

extension LoginUrlInfoExt on LoginUrlInfo {
  LoginUrlInfoRequestConfirmation? get loginUrlInfoRequestConfirmation {
    if (this is LoginUrlInfoRequestConfirmation) {
      return this as LoginUrlInfoRequestConfirmation;
    }
    return null;
  }

  LoginUrlInfoOpen? get loginUrlInfoOpen {
    if (this is LoginUrlInfoOpen) {
      return this as LoginUrlInfoOpen;
    }
    return null;
  }
}

extension RichTextExt on RichText {
  RichTextSuperscript? get richTextSuperscript {
    if (this is RichTextSuperscript) {
      return this as RichTextSuperscript;
    }
    return null;
  }

  RichTextAnchorLink? get richTextAnchorLink {
    if (this is RichTextAnchorLink) {
      return this as RichTextAnchorLink;
    }
    return null;
  }

  RichTextStrikethrough? get richTextStrikethrough {
    if (this is RichTextStrikethrough) {
      return this as RichTextStrikethrough;
    }
    return null;
  }

  RichTextMarked? get richTextMarked {
    if (this is RichTextMarked) {
      return this as RichTextMarked;
    }
    return null;
  }

  RichTextReference? get richTextReference {
    if (this is RichTextReference) {
      return this as RichTextReference;
    }
    return null;
  }

  RichTextAnchor? get richTextAnchor {
    if (this is RichTextAnchor) {
      return this as RichTextAnchor;
    }
    return null;
  }

  RichTextIcon? get richTextIcon {
    if (this is RichTextIcon) {
      return this as RichTextIcon;
    }
    return null;
  }

  RichTextSubscript? get richTextSubscript {
    if (this is RichTextSubscript) {
      return this as RichTextSubscript;
    }
    return null;
  }

  RichTextEmailAddress? get richTextEmailAddress {
    if (this is RichTextEmailAddress) {
      return this as RichTextEmailAddress;
    }
    return null;
  }

  RichTextUrl? get richTextUrl {
    if (this is RichTextUrl) {
      return this as RichTextUrl;
    }
    return null;
  }

  RichTextUnderline? get richTextUnderline {
    if (this is RichTextUnderline) {
      return this as RichTextUnderline;
    }
    return null;
  }

  RichTextPlain? get richTextPlain {
    if (this is RichTextPlain) {
      return this as RichTextPlain;
    }
    return null;
  }

  RichTextBold? get richTextBold {
    if (this is RichTextBold) {
      return this as RichTextBold;
    }
    return null;
  }

  RichTextFixed? get richTextFixed {
    if (this is RichTextFixed) {
      return this as RichTextFixed;
    }
    return null;
  }

  RichTexts? get richTexts {
    if (this is RichTexts) {
      return this as RichTexts;
    }
    return null;
  }

  RichTextPhoneNumber? get richTextPhoneNumber {
    if (this is RichTextPhoneNumber) {
      return this as RichTextPhoneNumber;
    }
    return null;
  }

  RichTextItalic? get richTextItalic {
    if (this is RichTextItalic) {
      return this as RichTextItalic;
    }
    return null;
  }
}

extension PageBlockHorizontalAlignmentExt on PageBlockHorizontalAlignment {
  PageBlockHorizontalAlignmentCenter? get pageBlockHorizontalAlignmentCenter {
    if (this is PageBlockHorizontalAlignmentCenter) {
      return this as PageBlockHorizontalAlignmentCenter;
    }
    return null;
  }

  PageBlockHorizontalAlignmentRight? get pageBlockHorizontalAlignmentRight {
    if (this is PageBlockHorizontalAlignmentRight) {
      return this as PageBlockHorizontalAlignmentRight;
    }
    return null;
  }

  PageBlockHorizontalAlignmentLeft? get pageBlockHorizontalAlignmentLeft {
    if (this is PageBlockHorizontalAlignmentLeft) {
      return this as PageBlockHorizontalAlignmentLeft;
    }
    return null;
  }
}

extension PageBlockVerticalAlignmentExt on PageBlockVerticalAlignment {
  PageBlockVerticalAlignmentMiddle? get pageBlockVerticalAlignmentMiddle {
    if (this is PageBlockVerticalAlignmentMiddle) {
      return this as PageBlockVerticalAlignmentMiddle;
    }
    return null;
  }

  PageBlockVerticalAlignmentTop? get pageBlockVerticalAlignmentTop {
    if (this is PageBlockVerticalAlignmentTop) {
      return this as PageBlockVerticalAlignmentTop;
    }
    return null;
  }

  PageBlockVerticalAlignmentBottom? get pageBlockVerticalAlignmentBottom {
    if (this is PageBlockVerticalAlignmentBottom) {
      return this as PageBlockVerticalAlignmentBottom;
    }
    return null;
  }
}

extension PageBlockExt on PageBlock {
  PageBlockSubtitle? get pageBlockSubtitle {
    if (this is PageBlockSubtitle) {
      return this as PageBlockSubtitle;
    }
    return null;
  }

  PageBlockBlockQuote? get pageBlockBlockQuote {
    if (this is PageBlockBlockQuote) {
      return this as PageBlockBlockQuote;
    }
    return null;
  }

  PageBlockHeader? get pageBlockHeader {
    if (this is PageBlockHeader) {
      return this as PageBlockHeader;
    }
    return null;
  }

  PageBlockCollage? get pageBlockCollage {
    if (this is PageBlockCollage) {
      return this as PageBlockCollage;
    }
    return null;
  }

  PageBlockAnchor? get pageBlockAnchor {
    if (this is PageBlockAnchor) {
      return this as PageBlockAnchor;
    }
    return null;
  }

  PageBlockRelatedArticles? get pageBlockRelatedArticles {
    if (this is PageBlockRelatedArticles) {
      return this as PageBlockRelatedArticles;
    }
    return null;
  }

  PageBlockPreformatted? get pageBlockPreformatted {
    if (this is PageBlockPreformatted) {
      return this as PageBlockPreformatted;
    }
    return null;
  }

  PageBlockFooter? get pageBlockFooter {
    if (this is PageBlockFooter) {
      return this as PageBlockFooter;
    }
    return null;
  }

  PageBlockCover? get pageBlockCover {
    if (this is PageBlockCover) {
      return this as PageBlockCover;
    }
    return null;
  }

  PageBlockPhoto? get pageBlockPhoto {
    if (this is PageBlockPhoto) {
      return this as PageBlockPhoto;
    }
    return null;
  }

  PageBlockTable? get pageBlockTable {
    if (this is PageBlockTable) {
      return this as PageBlockTable;
    }
    return null;
  }

  PageBlockDetails? get pageBlockDetails {
    if (this is PageBlockDetails) {
      return this as PageBlockDetails;
    }
    return null;
  }

  PageBlockKicker? get pageBlockKicker {
    if (this is PageBlockKicker) {
      return this as PageBlockKicker;
    }
    return null;
  }

  PageBlockSlideshow? get pageBlockSlideshow {
    if (this is PageBlockSlideshow) {
      return this as PageBlockSlideshow;
    }
    return null;
  }

  PageBlockAnimation? get pageBlockAnimation {
    if (this is PageBlockAnimation) {
      return this as PageBlockAnimation;
    }
    return null;
  }

  PageBlockDivider? get pageBlockDivider {
    if (this is PageBlockDivider) {
      return this as PageBlockDivider;
    }
    return null;
  }

  PageBlockAudio? get pageBlockAudio {
    if (this is PageBlockAudio) {
      return this as PageBlockAudio;
    }
    return null;
  }

  PageBlockPullQuote? get pageBlockPullQuote {
    if (this is PageBlockPullQuote) {
      return this as PageBlockPullQuote;
    }
    return null;
  }

  PageBlockVoiceNote? get pageBlockVoiceNote {
    if (this is PageBlockVoiceNote) {
      return this as PageBlockVoiceNote;
    }
    return null;
  }

  PageBlockVideo? get pageBlockVideo {
    if (this is PageBlockVideo) {
      return this as PageBlockVideo;
    }
    return null;
  }

  PageBlockSubheader? get pageBlockSubheader {
    if (this is PageBlockSubheader) {
      return this as PageBlockSubheader;
    }
    return null;
  }

  PageBlockEmbedded? get pageBlockEmbedded {
    if (this is PageBlockEmbedded) {
      return this as PageBlockEmbedded;
    }
    return null;
  }

  PageBlockTitle? get pageBlockTitle {
    if (this is PageBlockTitle) {
      return this as PageBlockTitle;
    }
    return null;
  }

  PageBlockList? get pageBlockList {
    if (this is PageBlockList) {
      return this as PageBlockList;
    }
    return null;
  }

  PageBlockChatLink? get pageBlockChatLink {
    if (this is PageBlockChatLink) {
      return this as PageBlockChatLink;
    }
    return null;
  }

  PageBlockEmbeddedPost? get pageBlockEmbeddedPost {
    if (this is PageBlockEmbeddedPost) {
      return this as PageBlockEmbeddedPost;
    }
    return null;
  }

  PageBlockMap? get pageBlockMap {
    if (this is PageBlockMap) {
      return this as PageBlockMap;
    }
    return null;
  }

  PageBlockAuthorDate? get pageBlockAuthorDate {
    if (this is PageBlockAuthorDate) {
      return this as PageBlockAuthorDate;
    }
    return null;
  }

  PageBlockParagraph? get pageBlockParagraph {
    if (this is PageBlockParagraph) {
      return this as PageBlockParagraph;
    }
    return null;
  }
}

extension InputCredentialsExt on InputCredentials {
  InputCredentialsGooglePay? get inputCredentialsGooglePay {
    if (this is InputCredentialsGooglePay) {
      return this as InputCredentialsGooglePay;
    }
    return null;
  }

  InputCredentialsApplePay? get inputCredentialsApplePay {
    if (this is InputCredentialsApplePay) {
      return this as InputCredentialsApplePay;
    }
    return null;
  }

  InputCredentialsSaved? get inputCredentialsSaved {
    if (this is InputCredentialsSaved) {
      return this as InputCredentialsSaved;
    }
    return null;
  }

  InputCredentialsNew? get inputCredentialsNew {
    if (this is InputCredentialsNew) {
      return this as InputCredentialsNew;
    }
    return null;
  }
}

extension PaymentProviderExt on PaymentProvider {
  PaymentProviderOther? get paymentProviderOther {
    if (this is PaymentProviderOther) {
      return this as PaymentProviderOther;
    }
    return null;
  }

  PaymentProviderSmartGlocal? get paymentProviderSmartGlocal {
    if (this is PaymentProviderSmartGlocal) {
      return this as PaymentProviderSmartGlocal;
    }
    return null;
  }

  PaymentProviderStripe? get paymentProviderStripe {
    if (this is PaymentProviderStripe) {
      return this as PaymentProviderStripe;
    }
    return null;
  }
}

extension InputInvoiceExt on InputInvoice {
  InputInvoiceMessage? get inputInvoiceMessage {
    if (this is InputInvoiceMessage) {
      return this as InputInvoiceMessage;
    }
    return null;
  }

  InputInvoiceName? get inputInvoiceName {
    if (this is InputInvoiceName) {
      return this as InputInvoiceName;
    }
    return null;
  }
}

extension MessageExtendedMediaExt on MessageExtendedMedia {
  MessageExtendedMediaUnsupported? get messageExtendedMediaUnsupported {
    if (this is MessageExtendedMediaUnsupported) {
      return this as MessageExtendedMediaUnsupported;
    }
    return null;
  }

  MessageExtendedMediaPhoto? get messageExtendedMediaPhoto {
    if (this is MessageExtendedMediaPhoto) {
      return this as MessageExtendedMediaPhoto;
    }
    return null;
  }

  MessageExtendedMediaPreview? get messageExtendedMediaPreview {
    if (this is MessageExtendedMediaPreview) {
      return this as MessageExtendedMediaPreview;
    }
    return null;
  }

  MessageExtendedMediaVideo? get messageExtendedMediaVideo {
    if (this is MessageExtendedMediaVideo) {
      return this as MessageExtendedMediaVideo;
    }
    return null;
  }
}

extension PassportElementTypeExt on PassportElementType {
  PassportElementTypeEmailAddress? get passportElementTypeEmailAddress {
    if (this is PassportElementTypeEmailAddress) {
      return this as PassportElementTypeEmailAddress;
    }
    return null;
  }

  PassportElementTypeInternalPassport? get passportElementTypeInternalPassport {
    if (this is PassportElementTypeInternalPassport) {
      return this as PassportElementTypeInternalPassport;
    }
    return null;
  }

  PassportElementTypeDriverLicense? get passportElementTypeDriverLicense {
    if (this is PassportElementTypeDriverLicense) {
      return this as PassportElementTypeDriverLicense;
    }
    return null;
  }

  PassportElementTypeTemporaryRegistration?
      get passportElementTypeTemporaryRegistration {
    if (this is PassportElementTypeTemporaryRegistration) {
      return this as PassportElementTypeTemporaryRegistration;
    }
    return null;
  }

  PassportElementTypeAddress? get passportElementTypeAddress {
    if (this is PassportElementTypeAddress) {
      return this as PassportElementTypeAddress;
    }
    return null;
  }

  PassportElementTypePassportRegistration?
      get passportElementTypePassportRegistration {
    if (this is PassportElementTypePassportRegistration) {
      return this as PassportElementTypePassportRegistration;
    }
    return null;
  }

  PassportElementTypeUtilityBill? get passportElementTypeUtilityBill {
    if (this is PassportElementTypeUtilityBill) {
      return this as PassportElementTypeUtilityBill;
    }
    return null;
  }

  PassportElementTypePhoneNumber? get passportElementTypePhoneNumber {
    if (this is PassportElementTypePhoneNumber) {
      return this as PassportElementTypePhoneNumber;
    }
    return null;
  }

  PassportElementTypePassport? get passportElementTypePassport {
    if (this is PassportElementTypePassport) {
      return this as PassportElementTypePassport;
    }
    return null;
  }

  PassportElementTypePersonalDetails? get passportElementTypePersonalDetails {
    if (this is PassportElementTypePersonalDetails) {
      return this as PassportElementTypePersonalDetails;
    }
    return null;
  }

  PassportElementTypeBankStatement? get passportElementTypeBankStatement {
    if (this is PassportElementTypeBankStatement) {
      return this as PassportElementTypeBankStatement;
    }
    return null;
  }

  PassportElementTypeRentalAgreement? get passportElementTypeRentalAgreement {
    if (this is PassportElementTypeRentalAgreement) {
      return this as PassportElementTypeRentalAgreement;
    }
    return null;
  }

  PassportElementTypeIdentityCard? get passportElementTypeIdentityCard {
    if (this is PassportElementTypeIdentityCard) {
      return this as PassportElementTypeIdentityCard;
    }
    return null;
  }
}

extension PassportElementExt on PassportElement {
  PassportElementRentalAgreement? get passportElementRentalAgreement {
    if (this is PassportElementRentalAgreement) {
      return this as PassportElementRentalAgreement;
    }
    return null;
  }

  PassportElementPassport? get passportElementPassport {
    if (this is PassportElementPassport) {
      return this as PassportElementPassport;
    }
    return null;
  }

  PassportElementPhoneNumber? get passportElementPhoneNumber {
    if (this is PassportElementPhoneNumber) {
      return this as PassportElementPhoneNumber;
    }
    return null;
  }

  PassportElementIdentityCard? get passportElementIdentityCard {
    if (this is PassportElementIdentityCard) {
      return this as PassportElementIdentityCard;
    }
    return null;
  }

  PassportElementAddress? get passportElementAddress {
    if (this is PassportElementAddress) {
      return this as PassportElementAddress;
    }
    return null;
  }

  PassportElementTemporaryRegistration?
      get passportElementTemporaryRegistration {
    if (this is PassportElementTemporaryRegistration) {
      return this as PassportElementTemporaryRegistration;
    }
    return null;
  }

  PassportElementBankStatement? get passportElementBankStatement {
    if (this is PassportElementBankStatement) {
      return this as PassportElementBankStatement;
    }
    return null;
  }

  PassportElementDriverLicense? get passportElementDriverLicense {
    if (this is PassportElementDriverLicense) {
      return this as PassportElementDriverLicense;
    }
    return null;
  }

  PassportElementPassportRegistration? get passportElementPassportRegistration {
    if (this is PassportElementPassportRegistration) {
      return this as PassportElementPassportRegistration;
    }
    return null;
  }

  PassportElementEmailAddress? get passportElementEmailAddress {
    if (this is PassportElementEmailAddress) {
      return this as PassportElementEmailAddress;
    }
    return null;
  }

  PassportElementPersonalDetails? get passportElementPersonalDetails {
    if (this is PassportElementPersonalDetails) {
      return this as PassportElementPersonalDetails;
    }
    return null;
  }

  PassportElementUtilityBill? get passportElementUtilityBill {
    if (this is PassportElementUtilityBill) {
      return this as PassportElementUtilityBill;
    }
    return null;
  }

  PassportElementInternalPassport? get passportElementInternalPassport {
    if (this is PassportElementInternalPassport) {
      return this as PassportElementInternalPassport;
    }
    return null;
  }
}

extension InputPassportElementExt on InputPassportElement {
  InputPassportElementIdentityCard? get inputPassportElementIdentityCard {
    if (this is InputPassportElementIdentityCard) {
      return this as InputPassportElementIdentityCard;
    }
    return null;
  }

  InputPassportElementDriverLicense? get inputPassportElementDriverLicense {
    if (this is InputPassportElementDriverLicense) {
      return this as InputPassportElementDriverLicense;
    }
    return null;
  }

  InputPassportElementUtilityBill? get inputPassportElementUtilityBill {
    if (this is InputPassportElementUtilityBill) {
      return this as InputPassportElementUtilityBill;
    }
    return null;
  }

  InputPassportElementPassport? get inputPassportElementPassport {
    if (this is InputPassportElementPassport) {
      return this as InputPassportElementPassport;
    }
    return null;
  }

  InputPassportElementRentalAgreement? get inputPassportElementRentalAgreement {
    if (this is InputPassportElementRentalAgreement) {
      return this as InputPassportElementRentalAgreement;
    }
    return null;
  }

  InputPassportElementInternalPassport?
      get inputPassportElementInternalPassport {
    if (this is InputPassportElementInternalPassport) {
      return this as InputPassportElementInternalPassport;
    }
    return null;
  }

  InputPassportElementBankStatement? get inputPassportElementBankStatement {
    if (this is InputPassportElementBankStatement) {
      return this as InputPassportElementBankStatement;
    }
    return null;
  }

  InputPassportElementAddress? get inputPassportElementAddress {
    if (this is InputPassportElementAddress) {
      return this as InputPassportElementAddress;
    }
    return null;
  }

  InputPassportElementPhoneNumber? get inputPassportElementPhoneNumber {
    if (this is InputPassportElementPhoneNumber) {
      return this as InputPassportElementPhoneNumber;
    }
    return null;
  }

  InputPassportElementPersonalDetails? get inputPassportElementPersonalDetails {
    if (this is InputPassportElementPersonalDetails) {
      return this as InputPassportElementPersonalDetails;
    }
    return null;
  }

  InputPassportElementEmailAddress? get inputPassportElementEmailAddress {
    if (this is InputPassportElementEmailAddress) {
      return this as InputPassportElementEmailAddress;
    }
    return null;
  }

  InputPassportElementTemporaryRegistration?
      get inputPassportElementTemporaryRegistration {
    if (this is InputPassportElementTemporaryRegistration) {
      return this as InputPassportElementTemporaryRegistration;
    }
    return null;
  }

  InputPassportElementPassportRegistration?
      get inputPassportElementPassportRegistration {
    if (this is InputPassportElementPassportRegistration) {
      return this as InputPassportElementPassportRegistration;
    }
    return null;
  }
}

extension PassportElementErrorSourceExt on PassportElementErrorSource {
  PassportElementErrorSourceDataField? get passportElementErrorSourceDataField {
    if (this is PassportElementErrorSourceDataField) {
      return this as PassportElementErrorSourceDataField;
    }
    return null;
  }

  PassportElementErrorSourceUnspecified?
      get passportElementErrorSourceUnspecified {
    if (this is PassportElementErrorSourceUnspecified) {
      return this as PassportElementErrorSourceUnspecified;
    }
    return null;
  }

  PassportElementErrorSourceReverseSide?
      get passportElementErrorSourceReverseSide {
    if (this is PassportElementErrorSourceReverseSide) {
      return this as PassportElementErrorSourceReverseSide;
    }
    return null;
  }

  PassportElementErrorSourceFrontSide? get passportElementErrorSourceFrontSide {
    if (this is PassportElementErrorSourceFrontSide) {
      return this as PassportElementErrorSourceFrontSide;
    }
    return null;
  }

  PassportElementErrorSourceTranslationFiles?
      get passportElementErrorSourceTranslationFiles {
    if (this is PassportElementErrorSourceTranslationFiles) {
      return this as PassportElementErrorSourceTranslationFiles;
    }
    return null;
  }

  PassportElementErrorSourceTranslationFile?
      get passportElementErrorSourceTranslationFile {
    if (this is PassportElementErrorSourceTranslationFile) {
      return this as PassportElementErrorSourceTranslationFile;
    }
    return null;
  }

  PassportElementErrorSourceFile? get passportElementErrorSourceFile {
    if (this is PassportElementErrorSourceFile) {
      return this as PassportElementErrorSourceFile;
    }
    return null;
  }

  PassportElementErrorSourceSelfie? get passportElementErrorSourceSelfie {
    if (this is PassportElementErrorSourceSelfie) {
      return this as PassportElementErrorSourceSelfie;
    }
    return null;
  }

  PassportElementErrorSourceFiles? get passportElementErrorSourceFiles {
    if (this is PassportElementErrorSourceFiles) {
      return this as PassportElementErrorSourceFiles;
    }
    return null;
  }
}

extension InputPassportElementErrorSourceExt
    on InputPassportElementErrorSource {
  InputPassportElementErrorSourceUnspecified?
      get inputPassportElementErrorSourceUnspecified {
    if (this is InputPassportElementErrorSourceUnspecified) {
      return this as InputPassportElementErrorSourceUnspecified;
    }
    return null;
  }

  InputPassportElementErrorSourceTranslationFile?
      get inputPassportElementErrorSourceTranslationFile {
    if (this is InputPassportElementErrorSourceTranslationFile) {
      return this as InputPassportElementErrorSourceTranslationFile;
    }
    return null;
  }

  InputPassportElementErrorSourceFile? get inputPassportElementErrorSourceFile {
    if (this is InputPassportElementErrorSourceFile) {
      return this as InputPassportElementErrorSourceFile;
    }
    return null;
  }

  InputPassportElementErrorSourceFrontSide?
      get inputPassportElementErrorSourceFrontSide {
    if (this is InputPassportElementErrorSourceFrontSide) {
      return this as InputPassportElementErrorSourceFrontSide;
    }
    return null;
  }

  InputPassportElementErrorSourceFiles?
      get inputPassportElementErrorSourceFiles {
    if (this is InputPassportElementErrorSourceFiles) {
      return this as InputPassportElementErrorSourceFiles;
    }
    return null;
  }

  InputPassportElementErrorSourceTranslationFiles?
      get inputPassportElementErrorSourceTranslationFiles {
    if (this is InputPassportElementErrorSourceTranslationFiles) {
      return this as InputPassportElementErrorSourceTranslationFiles;
    }
    return null;
  }

  InputPassportElementErrorSourceDataField?
      get inputPassportElementErrorSourceDataField {
    if (this is InputPassportElementErrorSourceDataField) {
      return this as InputPassportElementErrorSourceDataField;
    }
    return null;
  }

  InputPassportElementErrorSourceReverseSide?
      get inputPassportElementErrorSourceReverseSide {
    if (this is InputPassportElementErrorSourceReverseSide) {
      return this as InputPassportElementErrorSourceReverseSide;
    }
    return null;
  }

  InputPassportElementErrorSourceSelfie?
      get inputPassportElementErrorSourceSelfie {
    if (this is InputPassportElementErrorSourceSelfie) {
      return this as InputPassportElementErrorSourceSelfie;
    }
    return null;
  }
}

extension MessageContentExt on MessageContent {
  MessageBasicGroupChatCreate? get messageBasicGroupChatCreate {
    if (this is MessageBasicGroupChatCreate) {
      return this as MessageBasicGroupChatCreate;
    }
    return null;
  }

  MessageStory? get messageStory {
    if (this is MessageStory) {
      return this as MessageStory;
    }
    return null;
  }

  MessageGiftedPremium? get messageGiftedPremium {
    if (this is MessageGiftedPremium) {
      return this as MessageGiftedPremium;
    }
    return null;
  }

  MessageSuggestProfilePhoto? get messageSuggestProfilePhoto {
    if (this is MessageSuggestProfilePhoto) {
      return this as MessageSuggestProfilePhoto;
    }
    return null;
  }

  MessagePassportDataReceived? get messagePassportDataReceived {
    if (this is MessagePassportDataReceived) {
      return this as MessagePassportDataReceived;
    }
    return null;
  }

  MessageInvoice? get messageInvoice {
    if (this is MessageInvoice) {
      return this as MessageInvoice;
    }
    return null;
  }

  MessageUserShared? get messageUserShared {
    if (this is MessageUserShared) {
      return this as MessageUserShared;
    }
    return null;
  }

  MessageVenue? get messageVenue {
    if (this is MessageVenue) {
      return this as MessageVenue;
    }
    return null;
  }

  MessageChatUpgradeTo? get messageChatUpgradeTo {
    if (this is MessageChatUpgradeTo) {
      return this as MessageChatUpgradeTo;
    }
    return null;
  }

  MessageVoiceNote? get messageVoiceNote {
    if (this is MessageVoiceNote) {
      return this as MessageVoiceNote;
    }
    return null;
  }

  MessageInviteVideoChatParticipants? get messageInviteVideoChatParticipants {
    if (this is MessageInviteVideoChatParticipants) {
      return this as MessageInviteVideoChatParticipants;
    }
    return null;
  }

  MessageChatSetMessageAutoDeleteTime? get messageChatSetMessageAutoDeleteTime {
    if (this is MessageChatSetMessageAutoDeleteTime) {
      return this as MessageChatSetMessageAutoDeleteTime;
    }
    return null;
  }

  MessageLocation? get messageLocation {
    if (this is MessageLocation) {
      return this as MessageLocation;
    }
    return null;
  }

  MessageWebsiteConnected? get messageWebsiteConnected {
    if (this is MessageWebsiteConnected) {
      return this as MessageWebsiteConnected;
    }
    return null;
  }

  MessageChatAddMembers? get messageChatAddMembers {
    if (this is MessageChatAddMembers) {
      return this as MessageChatAddMembers;
    }
    return null;
  }

  MessageChatSetTheme? get messageChatSetTheme {
    if (this is MessageChatSetTheme) {
      return this as MessageChatSetTheme;
    }
    return null;
  }

  MessageContactRegistered? get messageContactRegistered {
    if (this is MessageContactRegistered) {
      return this as MessageContactRegistered;
    }
    return null;
  }

  MessageText? get messageText {
    if (this is MessageText) {
      return this as MessageText;
    }
    return null;
  }

  MessageVideoChatStarted? get messageVideoChatStarted {
    if (this is MessageVideoChatStarted) {
      return this as MessageVideoChatStarted;
    }
    return null;
  }

  MessagePaymentSuccessful? get messagePaymentSuccessful {
    if (this is MessagePaymentSuccessful) {
      return this as MessagePaymentSuccessful;
    }
    return null;
  }

  MessageUnsupported? get messageUnsupported {
    if (this is MessageUnsupported) {
      return this as MessageUnsupported;
    }
    return null;
  }

  MessageBotWriteAccessAllowed? get messageBotWriteAccessAllowed {
    if (this is MessageBotWriteAccessAllowed) {
      return this as MessageBotWriteAccessAllowed;
    }
    return null;
  }

  MessageChatShared? get messageChatShared {
    if (this is MessageChatShared) {
      return this as MessageChatShared;
    }
    return null;
  }

  MessageVideoChatEnded? get messageVideoChatEnded {
    if (this is MessageVideoChatEnded) {
      return this as MessageVideoChatEnded;
    }
    return null;
  }

  MessageChatDeleteMember? get messageChatDeleteMember {
    if (this is MessageChatDeleteMember) {
      return this as MessageChatDeleteMember;
    }
    return null;
  }

  MessageWebAppDataSent? get messageWebAppDataSent {
    if (this is MessageWebAppDataSent) {
      return this as MessageWebAppDataSent;
    }
    return null;
  }

  MessageVideoNote? get messageVideoNote {
    if (this is MessageVideoNote) {
      return this as MessageVideoNote;
    }
    return null;
  }

  MessageForumTopicIsClosedToggled? get messageForumTopicIsClosedToggled {
    if (this is MessageForumTopicIsClosedToggled) {
      return this as MessageForumTopicIsClosedToggled;
    }
    return null;
  }

  MessageProximityAlertTriggered? get messageProximityAlertTriggered {
    if (this is MessageProximityAlertTriggered) {
      return this as MessageProximityAlertTriggered;
    }
    return null;
  }

  MessageAnimatedEmoji? get messageAnimatedEmoji {
    if (this is MessageAnimatedEmoji) {
      return this as MessageAnimatedEmoji;
    }
    return null;
  }

  MessageChatJoinByRequest? get messageChatJoinByRequest {
    if (this is MessageChatJoinByRequest) {
      return this as MessageChatJoinByRequest;
    }
    return null;
  }

  MessageChatUpgradeFrom? get messageChatUpgradeFrom {
    if (this is MessageChatUpgradeFrom) {
      return this as MessageChatUpgradeFrom;
    }
    return null;
  }

  MessagePassportDataSent? get messagePassportDataSent {
    if (this is MessagePassportDataSent) {
      return this as MessagePassportDataSent;
    }
    return null;
  }

  MessageCustomServiceAction? get messageCustomServiceAction {
    if (this is MessageCustomServiceAction) {
      return this as MessageCustomServiceAction;
    }
    return null;
  }

  MessageContact? get messageContact {
    if (this is MessageContact) {
      return this as MessageContact;
    }
    return null;
  }

  MessageDocument? get messageDocument {
    if (this is MessageDocument) {
      return this as MessageDocument;
    }
    return null;
  }

  MessageScreenshotTaken? get messageScreenshotTaken {
    if (this is MessageScreenshotTaken) {
      return this as MessageScreenshotTaken;
    }
    return null;
  }

  MessageSupergroupChatCreate? get messageSupergroupChatCreate {
    if (this is MessageSupergroupChatCreate) {
      return this as MessageSupergroupChatCreate;
    }
    return null;
  }

  MessageAnimation? get messageAnimation {
    if (this is MessageAnimation) {
      return this as MessageAnimation;
    }
    return null;
  }

  MessageExpiredVideo? get messageExpiredVideo {
    if (this is MessageExpiredVideo) {
      return this as MessageExpiredVideo;
    }
    return null;
  }

  MessageForumTopicEdited? get messageForumTopicEdited {
    if (this is MessageForumTopicEdited) {
      return this as MessageForumTopicEdited;
    }
    return null;
  }

  MessageVideo? get messageVideo {
    if (this is MessageVideo) {
      return this as MessageVideo;
    }
    return null;
  }

  MessageExpiredPhoto? get messageExpiredPhoto {
    if (this is MessageExpiredPhoto) {
      return this as MessageExpiredPhoto;
    }
    return null;
  }

  MessageChatJoinByLink? get messageChatJoinByLink {
    if (this is MessageChatJoinByLink) {
      return this as MessageChatJoinByLink;
    }
    return null;
  }

  MessageForumTopicCreated? get messageForumTopicCreated {
    if (this is MessageForumTopicCreated) {
      return this as MessageForumTopicCreated;
    }
    return null;
  }

  MessageWebAppDataReceived? get messageWebAppDataReceived {
    if (this is MessageWebAppDataReceived) {
      return this as MessageWebAppDataReceived;
    }
    return null;
  }

  MessageChatSetBackground? get messageChatSetBackground {
    if (this is MessageChatSetBackground) {
      return this as MessageChatSetBackground;
    }
    return null;
  }

  MessageChatChangeTitle? get messageChatChangeTitle {
    if (this is MessageChatChangeTitle) {
      return this as MessageChatChangeTitle;
    }
    return null;
  }

  MessageGameScore? get messageGameScore {
    if (this is MessageGameScore) {
      return this as MessageGameScore;
    }
    return null;
  }

  MessagePinMessage? get messagePinMessage {
    if (this is MessagePinMessage) {
      return this as MessagePinMessage;
    }
    return null;
  }

  MessageForumTopicIsHiddenToggled? get messageForumTopicIsHiddenToggled {
    if (this is MessageForumTopicIsHiddenToggled) {
      return this as MessageForumTopicIsHiddenToggled;
    }
    return null;
  }

  MessageSticker? get messageSticker {
    if (this is MessageSticker) {
      return this as MessageSticker;
    }
    return null;
  }

  MessageDice? get messageDice {
    if (this is MessageDice) {
      return this as MessageDice;
    }
    return null;
  }

  MessageVideoChatScheduled? get messageVideoChatScheduled {
    if (this is MessageVideoChatScheduled) {
      return this as MessageVideoChatScheduled;
    }
    return null;
  }

  MessageChatDeletePhoto? get messageChatDeletePhoto {
    if (this is MessageChatDeletePhoto) {
      return this as MessageChatDeletePhoto;
    }
    return null;
  }

  MessagePhoto? get messagePhoto {
    if (this is MessagePhoto) {
      return this as MessagePhoto;
    }
    return null;
  }

  MessagePaymentSuccessfulBot? get messagePaymentSuccessfulBot {
    if (this is MessagePaymentSuccessfulBot) {
      return this as MessagePaymentSuccessfulBot;
    }
    return null;
  }

  MessageChatChangePhoto? get messageChatChangePhoto {
    if (this is MessageChatChangePhoto) {
      return this as MessageChatChangePhoto;
    }
    return null;
  }

  MessagePoll? get messagePoll {
    if (this is MessagePoll) {
      return this as MessagePoll;
    }
    return null;
  }

  MessageGame? get messageGame {
    if (this is MessageGame) {
      return this as MessageGame;
    }
    return null;
  }

  MessageAudio? get messageAudio {
    if (this is MessageAudio) {
      return this as MessageAudio;
    }
    return null;
  }

  MessageCall? get messageCall {
    if (this is MessageCall) {
      return this as MessageCall;
    }
    return null;
  }
}

extension TextEntityTypeExt on TextEntityType {
  TextEntityTypeMentionName? get textEntityTypeMentionName {
    if (this is TextEntityTypeMentionName) {
      return this as TextEntityTypeMentionName;
    }
    return null;
  }

  TextEntityTypeUrl? get textEntityTypeUrl {
    if (this is TextEntityTypeUrl) {
      return this as TextEntityTypeUrl;
    }
    return null;
  }

  TextEntityTypeCashtag? get textEntityTypeCashtag {
    if (this is TextEntityTypeCashtag) {
      return this as TextEntityTypeCashtag;
    }
    return null;
  }

  TextEntityTypeStrikethrough? get textEntityTypeStrikethrough {
    if (this is TextEntityTypeStrikethrough) {
      return this as TextEntityTypeStrikethrough;
    }
    return null;
  }

  TextEntityTypeCustomEmoji? get textEntityTypeCustomEmoji {
    if (this is TextEntityTypeCustomEmoji) {
      return this as TextEntityTypeCustomEmoji;
    }
    return null;
  }

  TextEntityTypePre? get textEntityTypePre {
    if (this is TextEntityTypePre) {
      return this as TextEntityTypePre;
    }
    return null;
  }

  TextEntityTypePreCode? get textEntityTypePreCode {
    if (this is TextEntityTypePreCode) {
      return this as TextEntityTypePreCode;
    }
    return null;
  }

  TextEntityTypeUnderline? get textEntityTypeUnderline {
    if (this is TextEntityTypeUnderline) {
      return this as TextEntityTypeUnderline;
    }
    return null;
  }

  TextEntityTypeMediaTimestamp? get textEntityTypeMediaTimestamp {
    if (this is TextEntityTypeMediaTimestamp) {
      return this as TextEntityTypeMediaTimestamp;
    }
    return null;
  }

  TextEntityTypeItalic? get textEntityTypeItalic {
    if (this is TextEntityTypeItalic) {
      return this as TextEntityTypeItalic;
    }
    return null;
  }

  TextEntityTypeSpoiler? get textEntityTypeSpoiler {
    if (this is TextEntityTypeSpoiler) {
      return this as TextEntityTypeSpoiler;
    }
    return null;
  }

  TextEntityTypePhoneNumber? get textEntityTypePhoneNumber {
    if (this is TextEntityTypePhoneNumber) {
      return this as TextEntityTypePhoneNumber;
    }
    return null;
  }

  TextEntityTypeBold? get textEntityTypeBold {
    if (this is TextEntityTypeBold) {
      return this as TextEntityTypeBold;
    }
    return null;
  }

  TextEntityTypeHashtag? get textEntityTypeHashtag {
    if (this is TextEntityTypeHashtag) {
      return this as TextEntityTypeHashtag;
    }
    return null;
  }

  TextEntityTypeEmailAddress? get textEntityTypeEmailAddress {
    if (this is TextEntityTypeEmailAddress) {
      return this as TextEntityTypeEmailAddress;
    }
    return null;
  }

  TextEntityTypeBotCommand? get textEntityTypeBotCommand {
    if (this is TextEntityTypeBotCommand) {
      return this as TextEntityTypeBotCommand;
    }
    return null;
  }

  TextEntityTypeBankCardNumber? get textEntityTypeBankCardNumber {
    if (this is TextEntityTypeBankCardNumber) {
      return this as TextEntityTypeBankCardNumber;
    }
    return null;
  }

  TextEntityTypeCode? get textEntityTypeCode {
    if (this is TextEntityTypeCode) {
      return this as TextEntityTypeCode;
    }
    return null;
  }

  TextEntityTypeMention? get textEntityTypeMention {
    if (this is TextEntityTypeMention) {
      return this as TextEntityTypeMention;
    }
    return null;
  }

  TextEntityTypeTextUrl? get textEntityTypeTextUrl {
    if (this is TextEntityTypeTextUrl) {
      return this as TextEntityTypeTextUrl;
    }
    return null;
  }
}

extension MessageSchedulingStateExt on MessageSchedulingState {
  MessageSchedulingStateSendAtDate? get messageSchedulingStateSendAtDate {
    if (this is MessageSchedulingStateSendAtDate) {
      return this as MessageSchedulingStateSendAtDate;
    }
    return null;
  }

  MessageSchedulingStateSendWhenOnline?
      get messageSchedulingStateSendWhenOnline {
    if (this is MessageSchedulingStateSendWhenOnline) {
      return this as MessageSchedulingStateSendWhenOnline;
    }
    return null;
  }
}

extension InputMessageContentExt on InputMessageContent {
  InputMessageDocument? get inputMessageDocument {
    if (this is InputMessageDocument) {
      return this as InputMessageDocument;
    }
    return null;
  }

  InputMessageVideoNote? get inputMessageVideoNote {
    if (this is InputMessageVideoNote) {
      return this as InputMessageVideoNote;
    }
    return null;
  }

  InputMessageGame? get inputMessageGame {
    if (this is InputMessageGame) {
      return this as InputMessageGame;
    }
    return null;
  }

  InputMessageSticker? get inputMessageSticker {
    if (this is InputMessageSticker) {
      return this as InputMessageSticker;
    }
    return null;
  }

  InputMessageText? get inputMessageText {
    if (this is InputMessageText) {
      return this as InputMessageText;
    }
    return null;
  }

  InputMessageInvoice? get inputMessageInvoice {
    if (this is InputMessageInvoice) {
      return this as InputMessageInvoice;
    }
    return null;
  }

  InputMessagePhoto? get inputMessagePhoto {
    if (this is InputMessagePhoto) {
      return this as InputMessagePhoto;
    }
    return null;
  }

  InputMessageDice? get inputMessageDice {
    if (this is InputMessageDice) {
      return this as InputMessageDice;
    }
    return null;
  }

  InputMessageContact? get inputMessageContact {
    if (this is InputMessageContact) {
      return this as InputMessageContact;
    }
    return null;
  }

  InputMessageForwarded? get inputMessageForwarded {
    if (this is InputMessageForwarded) {
      return this as InputMessageForwarded;
    }
    return null;
  }

  InputMessageLocation? get inputMessageLocation {
    if (this is InputMessageLocation) {
      return this as InputMessageLocation;
    }
    return null;
  }

  InputMessageVenue? get inputMessageVenue {
    if (this is InputMessageVenue) {
      return this as InputMessageVenue;
    }
    return null;
  }

  InputMessageAudio? get inputMessageAudio {
    if (this is InputMessageAudio) {
      return this as InputMessageAudio;
    }
    return null;
  }

  InputMessageAnimation? get inputMessageAnimation {
    if (this is InputMessageAnimation) {
      return this as InputMessageAnimation;
    }
    return null;
  }

  InputMessageVideo? get inputMessageVideo {
    if (this is InputMessageVideo) {
      return this as InputMessageVideo;
    }
    return null;
  }

  InputMessageStory? get inputMessageStory {
    if (this is InputMessageStory) {
      return this as InputMessageStory;
    }
    return null;
  }

  InputMessagePoll? get inputMessagePoll {
    if (this is InputMessagePoll) {
      return this as InputMessagePoll;
    }
    return null;
  }

  InputMessageVoiceNote? get inputMessageVoiceNote {
    if (this is InputMessageVoiceNote) {
      return this as InputMessageVoiceNote;
    }
    return null;
  }
}

extension SearchMessagesFilterExt on SearchMessagesFilter {
  SearchMessagesFilterFailedToSend? get searchMessagesFilterFailedToSend {
    if (this is SearchMessagesFilterFailedToSend) {
      return this as SearchMessagesFilterFailedToSend;
    }
    return null;
  }

  SearchMessagesFilterVideo? get searchMessagesFilterVideo {
    if (this is SearchMessagesFilterVideo) {
      return this as SearchMessagesFilterVideo;
    }
    return null;
  }

  SearchMessagesFilterAudio? get searchMessagesFilterAudio {
    if (this is SearchMessagesFilterAudio) {
      return this as SearchMessagesFilterAudio;
    }
    return null;
  }

  SearchMessagesFilterAnimation? get searchMessagesFilterAnimation {
    if (this is SearchMessagesFilterAnimation) {
      return this as SearchMessagesFilterAnimation;
    }
    return null;
  }

  SearchMessagesFilterDocument? get searchMessagesFilterDocument {
    if (this is SearchMessagesFilterDocument) {
      return this as SearchMessagesFilterDocument;
    }
    return null;
  }

  SearchMessagesFilterPhotoAndVideo? get searchMessagesFilterPhotoAndVideo {
    if (this is SearchMessagesFilterPhotoAndVideo) {
      return this as SearchMessagesFilterPhotoAndVideo;
    }
    return null;
  }

  SearchMessagesFilterChatPhoto? get searchMessagesFilterChatPhoto {
    if (this is SearchMessagesFilterChatPhoto) {
      return this as SearchMessagesFilterChatPhoto;
    }
    return null;
  }

  SearchMessagesFilterMention? get searchMessagesFilterMention {
    if (this is SearchMessagesFilterMention) {
      return this as SearchMessagesFilterMention;
    }
    return null;
  }

  SearchMessagesFilterVoiceAndVideoNote?
      get searchMessagesFilterVoiceAndVideoNote {
    if (this is SearchMessagesFilterVoiceAndVideoNote) {
      return this as SearchMessagesFilterVoiceAndVideoNote;
    }
    return null;
  }

  SearchMessagesFilterUnreadMention? get searchMessagesFilterUnreadMention {
    if (this is SearchMessagesFilterUnreadMention) {
      return this as SearchMessagesFilterUnreadMention;
    }
    return null;
  }

  SearchMessagesFilterUnreadReaction? get searchMessagesFilterUnreadReaction {
    if (this is SearchMessagesFilterUnreadReaction) {
      return this as SearchMessagesFilterUnreadReaction;
    }
    return null;
  }

  SearchMessagesFilterVoiceNote? get searchMessagesFilterVoiceNote {
    if (this is SearchMessagesFilterVoiceNote) {
      return this as SearchMessagesFilterVoiceNote;
    }
    return null;
  }

  SearchMessagesFilterVideoNote? get searchMessagesFilterVideoNote {
    if (this is SearchMessagesFilterVideoNote) {
      return this as SearchMessagesFilterVideoNote;
    }
    return null;
  }

  SearchMessagesFilterPinned? get searchMessagesFilterPinned {
    if (this is SearchMessagesFilterPinned) {
      return this as SearchMessagesFilterPinned;
    }
    return null;
  }

  SearchMessagesFilterEmpty? get searchMessagesFilterEmpty {
    if (this is SearchMessagesFilterEmpty) {
      return this as SearchMessagesFilterEmpty;
    }
    return null;
  }

  SearchMessagesFilterPhoto? get searchMessagesFilterPhoto {
    if (this is SearchMessagesFilterPhoto) {
      return this as SearchMessagesFilterPhoto;
    }
    return null;
  }

  SearchMessagesFilterUrl? get searchMessagesFilterUrl {
    if (this is SearchMessagesFilterUrl) {
      return this as SearchMessagesFilterUrl;
    }
    return null;
  }
}

extension ChatActionExt on ChatAction {
  ChatActionTyping? get chatActionTyping {
    if (this is ChatActionTyping) {
      return this as ChatActionTyping;
    }
    return null;
  }

  ChatActionUploadingVideoNote? get chatActionUploadingVideoNote {
    if (this is ChatActionUploadingVideoNote) {
      return this as ChatActionUploadingVideoNote;
    }
    return null;
  }

  ChatActionRecordingVideo? get chatActionRecordingVideo {
    if (this is ChatActionRecordingVideo) {
      return this as ChatActionRecordingVideo;
    }
    return null;
  }

  ChatActionRecordingVoiceNote? get chatActionRecordingVoiceNote {
    if (this is ChatActionRecordingVoiceNote) {
      return this as ChatActionRecordingVoiceNote;
    }
    return null;
  }

  ChatActionChoosingLocation? get chatActionChoosingLocation {
    if (this is ChatActionChoosingLocation) {
      return this as ChatActionChoosingLocation;
    }
    return null;
  }

  ChatActionCancel? get chatActionCancel {
    if (this is ChatActionCancel) {
      return this as ChatActionCancel;
    }
    return null;
  }

  ChatActionWatchingAnimations? get chatActionWatchingAnimations {
    if (this is ChatActionWatchingAnimations) {
      return this as ChatActionWatchingAnimations;
    }
    return null;
  }

  ChatActionUploadingVideo? get chatActionUploadingVideo {
    if (this is ChatActionUploadingVideo) {
      return this as ChatActionUploadingVideo;
    }
    return null;
  }

  ChatActionUploadingVoiceNote? get chatActionUploadingVoiceNote {
    if (this is ChatActionUploadingVoiceNote) {
      return this as ChatActionUploadingVoiceNote;
    }
    return null;
  }

  ChatActionUploadingPhoto? get chatActionUploadingPhoto {
    if (this is ChatActionUploadingPhoto) {
      return this as ChatActionUploadingPhoto;
    }
    return null;
  }

  ChatActionUploadingDocument? get chatActionUploadingDocument {
    if (this is ChatActionUploadingDocument) {
      return this as ChatActionUploadingDocument;
    }
    return null;
  }

  ChatActionChoosingSticker? get chatActionChoosingSticker {
    if (this is ChatActionChoosingSticker) {
      return this as ChatActionChoosingSticker;
    }
    return null;
  }

  ChatActionStartPlayingGame? get chatActionStartPlayingGame {
    if (this is ChatActionStartPlayingGame) {
      return this as ChatActionStartPlayingGame;
    }
    return null;
  }

  ChatActionChoosingContact? get chatActionChoosingContact {
    if (this is ChatActionChoosingContact) {
      return this as ChatActionChoosingContact;
    }
    return null;
  }

  ChatActionRecordingVideoNote? get chatActionRecordingVideoNote {
    if (this is ChatActionRecordingVideoNote) {
      return this as ChatActionRecordingVideoNote;
    }
    return null;
  }
}

extension UserStatusExt on UserStatus {
  UserStatusEmpty? get userStatusEmpty {
    if (this is UserStatusEmpty) {
      return this as UserStatusEmpty;
    }
    return null;
  }

  UserStatusRecently? get userStatusRecently {
    if (this is UserStatusRecently) {
      return this as UserStatusRecently;
    }
    return null;
  }

  UserStatusOnline? get userStatusOnline {
    if (this is UserStatusOnline) {
      return this as UserStatusOnline;
    }
    return null;
  }

  UserStatusLastWeek? get userStatusLastWeek {
    if (this is UserStatusLastWeek) {
      return this as UserStatusLastWeek;
    }
    return null;
  }

  UserStatusOffline? get userStatusOffline {
    if (this is UserStatusOffline) {
      return this as UserStatusOffline;
    }
    return null;
  }

  UserStatusLastMonth? get userStatusLastMonth {
    if (this is UserStatusLastMonth) {
      return this as UserStatusLastMonth;
    }
    return null;
  }
}

extension EmojiCategoryTypeExt on EmojiCategoryType {
  EmojiCategoryTypeChatPhoto? get emojiCategoryTypeChatPhoto {
    if (this is EmojiCategoryTypeChatPhoto) {
      return this as EmojiCategoryTypeChatPhoto;
    }
    return null;
  }

  EmojiCategoryTypeDefault? get emojiCategoryTypeDefault {
    if (this is EmojiCategoryTypeDefault) {
      return this as EmojiCategoryTypeDefault;
    }
    return null;
  }

  EmojiCategoryTypeEmojiStatus? get emojiCategoryTypeEmojiStatus {
    if (this is EmojiCategoryTypeEmojiStatus) {
      return this as EmojiCategoryTypeEmojiStatus;
    }
    return null;
  }
}

extension CallDiscardReasonExt on CallDiscardReason {
  CallDiscardReasonEmpty? get callDiscardReasonEmpty {
    if (this is CallDiscardReasonEmpty) {
      return this as CallDiscardReasonEmpty;
    }
    return null;
  }

  CallDiscardReasonHungUp? get callDiscardReasonHungUp {
    if (this is CallDiscardReasonHungUp) {
      return this as CallDiscardReasonHungUp;
    }
    return null;
  }

  CallDiscardReasonDeclined? get callDiscardReasonDeclined {
    if (this is CallDiscardReasonDeclined) {
      return this as CallDiscardReasonDeclined;
    }
    return null;
  }

  CallDiscardReasonDisconnected? get callDiscardReasonDisconnected {
    if (this is CallDiscardReasonDisconnected) {
      return this as CallDiscardReasonDisconnected;
    }
    return null;
  }

  CallDiscardReasonMissed? get callDiscardReasonMissed {
    if (this is CallDiscardReasonMissed) {
      return this as CallDiscardReasonMissed;
    }
    return null;
  }
}

extension CallServerTypeExt on CallServerType {
  CallServerTypeTelegramReflector? get callServerTypeTelegramReflector {
    if (this is CallServerTypeTelegramReflector) {
      return this as CallServerTypeTelegramReflector;
    }
    return null;
  }

  CallServerTypeWebrtc? get callServerTypeWebrtc {
    if (this is CallServerTypeWebrtc) {
      return this as CallServerTypeWebrtc;
    }
    return null;
  }
}

extension CallStateExt on CallState {
  CallStateHangingUp? get callStateHangingUp {
    if (this is CallStateHangingUp) {
      return this as CallStateHangingUp;
    }
    return null;
  }

  CallStateExchangingKeys? get callStateExchangingKeys {
    if (this is CallStateExchangingKeys) {
      return this as CallStateExchangingKeys;
    }
    return null;
  }

  CallStateDiscarded? get callStateDiscarded {
    if (this is CallStateDiscarded) {
      return this as CallStateDiscarded;
    }
    return null;
  }

  CallStateError? get callStateError {
    if (this is CallStateError) {
      return this as CallStateError;
    }
    return null;
  }

  CallStateReady? get callStateReady {
    if (this is CallStateReady) {
      return this as CallStateReady;
    }
    return null;
  }

  CallStatePending? get callStatePending {
    if (this is CallStatePending) {
      return this as CallStatePending;
    }
    return null;
  }
}

extension GroupCallVideoQualityExt on GroupCallVideoQuality {
  GroupCallVideoQualityMedium? get groupCallVideoQualityMedium {
    if (this is GroupCallVideoQualityMedium) {
      return this as GroupCallVideoQualityMedium;
    }
    return null;
  }

  GroupCallVideoQualityThumbnail? get groupCallVideoQualityThumbnail {
    if (this is GroupCallVideoQualityThumbnail) {
      return this as GroupCallVideoQualityThumbnail;
    }
    return null;
  }

  GroupCallVideoQualityFull? get groupCallVideoQualityFull {
    if (this is GroupCallVideoQualityFull) {
      return this as GroupCallVideoQualityFull;
    }
    return null;
  }
}

extension CallProblemExt on CallProblem {
  CallProblemDropped? get callProblemDropped {
    if (this is CallProblemDropped) {
      return this as CallProblemDropped;
    }
    return null;
  }

  CallProblemPixelatedVideo? get callProblemPixelatedVideo {
    if (this is CallProblemPixelatedVideo) {
      return this as CallProblemPixelatedVideo;
    }
    return null;
  }

  CallProblemSilentLocal? get callProblemSilentLocal {
    if (this is CallProblemSilentLocal) {
      return this as CallProblemSilentLocal;
    }
    return null;
  }

  CallProblemDistortedSpeech? get callProblemDistortedSpeech {
    if (this is CallProblemDistortedSpeech) {
      return this as CallProblemDistortedSpeech;
    }
    return null;
  }

  CallProblemInterruptions? get callProblemInterruptions {
    if (this is CallProblemInterruptions) {
      return this as CallProblemInterruptions;
    }
    return null;
  }

  CallProblemEcho? get callProblemEcho {
    if (this is CallProblemEcho) {
      return this as CallProblemEcho;
    }
    return null;
  }

  CallProblemNoise? get callProblemNoise {
    if (this is CallProblemNoise) {
      return this as CallProblemNoise;
    }
    return null;
  }

  CallProblemDistortedVideo? get callProblemDistortedVideo {
    if (this is CallProblemDistortedVideo) {
      return this as CallProblemDistortedVideo;
    }
    return null;
  }

  CallProblemSilentRemote? get callProblemSilentRemote {
    if (this is CallProblemSilentRemote) {
      return this as CallProblemSilentRemote;
    }
    return null;
  }
}

extension FirebaseAuthenticationSettingsExt on FirebaseAuthenticationSettings {
  FirebaseAuthenticationSettingsAndroid?
      get firebaseAuthenticationSettingsAndroid {
    if (this is FirebaseAuthenticationSettingsAndroid) {
      return this as FirebaseAuthenticationSettingsAndroid;
    }
    return null;
  }

  FirebaseAuthenticationSettingsIos? get firebaseAuthenticationSettingsIos {
    if (this is FirebaseAuthenticationSettingsIos) {
      return this as FirebaseAuthenticationSettingsIos;
    }
    return null;
  }
}

extension DiceStickersExt on DiceStickers {
  DiceStickersSlotMachine? get diceStickersSlotMachine {
    if (this is DiceStickersSlotMachine) {
      return this as DiceStickersSlotMachine;
    }
    return null;
  }

  DiceStickersRegular? get diceStickersRegular {
    if (this is DiceStickersRegular) {
      return this as DiceStickersRegular;
    }
    return null;
  }
}

extension SpeechRecognitionResultExt on SpeechRecognitionResult {
  SpeechRecognitionResultText? get speechRecognitionResultText {
    if (this is SpeechRecognitionResultText) {
      return this as SpeechRecognitionResultText;
    }
    return null;
  }

  SpeechRecognitionResultPending? get speechRecognitionResultPending {
    if (this is SpeechRecognitionResultPending) {
      return this as SpeechRecognitionResultPending;
    }
    return null;
  }

  SpeechRecognitionResultError? get speechRecognitionResultError {
    if (this is SpeechRecognitionResultError) {
      return this as SpeechRecognitionResultError;
    }
    return null;
  }
}

extension InputInlineQueryResultExt on InputInlineQueryResult {
  InputInlineQueryResultVenue? get inputInlineQueryResultVenue {
    if (this is InputInlineQueryResultVenue) {
      return this as InputInlineQueryResultVenue;
    }
    return null;
  }

  InputInlineQueryResultVoiceNote? get inputInlineQueryResultVoiceNote {
    if (this is InputInlineQueryResultVoiceNote) {
      return this as InputInlineQueryResultVoiceNote;
    }
    return null;
  }

  InputInlineQueryResultAudio? get inputInlineQueryResultAudio {
    if (this is InputInlineQueryResultAudio) {
      return this as InputInlineQueryResultAudio;
    }
    return null;
  }

  InputInlineQueryResultGame? get inputInlineQueryResultGame {
    if (this is InputInlineQueryResultGame) {
      return this as InputInlineQueryResultGame;
    }
    return null;
  }

  InputInlineQueryResultPhoto? get inputInlineQueryResultPhoto {
    if (this is InputInlineQueryResultPhoto) {
      return this as InputInlineQueryResultPhoto;
    }
    return null;
  }

  InputInlineQueryResultSticker? get inputInlineQueryResultSticker {
    if (this is InputInlineQueryResultSticker) {
      return this as InputInlineQueryResultSticker;
    }
    return null;
  }

  InputInlineQueryResultContact? get inputInlineQueryResultContact {
    if (this is InputInlineQueryResultContact) {
      return this as InputInlineQueryResultContact;
    }
    return null;
  }

  InputInlineQueryResultDocument? get inputInlineQueryResultDocument {
    if (this is InputInlineQueryResultDocument) {
      return this as InputInlineQueryResultDocument;
    }
    return null;
  }

  InputInlineQueryResultAnimation? get inputInlineQueryResultAnimation {
    if (this is InputInlineQueryResultAnimation) {
      return this as InputInlineQueryResultAnimation;
    }
    return null;
  }

  InputInlineQueryResultVideo? get inputInlineQueryResultVideo {
    if (this is InputInlineQueryResultVideo) {
      return this as InputInlineQueryResultVideo;
    }
    return null;
  }

  InputInlineQueryResultLocation? get inputInlineQueryResultLocation {
    if (this is InputInlineQueryResultLocation) {
      return this as InputInlineQueryResultLocation;
    }
    return null;
  }

  InputInlineQueryResultArticle? get inputInlineQueryResultArticle {
    if (this is InputInlineQueryResultArticle) {
      return this as InputInlineQueryResultArticle;
    }
    return null;
  }
}

extension InlineQueryResultExt on InlineQueryResult {
  InlineQueryResultDocument? get inlineQueryResultDocument {
    if (this is InlineQueryResultDocument) {
      return this as InlineQueryResultDocument;
    }
    return null;
  }

  InlineQueryResultLocation? get inlineQueryResultLocation {
    if (this is InlineQueryResultLocation) {
      return this as InlineQueryResultLocation;
    }
    return null;
  }

  InlineQueryResultVenue? get inlineQueryResultVenue {
    if (this is InlineQueryResultVenue) {
      return this as InlineQueryResultVenue;
    }
    return null;
  }

  InlineQueryResultPhoto? get inlineQueryResultPhoto {
    if (this is InlineQueryResultPhoto) {
      return this as InlineQueryResultPhoto;
    }
    return null;
  }

  InlineQueryResultVideo? get inlineQueryResultVideo {
    if (this is InlineQueryResultVideo) {
      return this as InlineQueryResultVideo;
    }
    return null;
  }

  InlineQueryResultAnimation? get inlineQueryResultAnimation {
    if (this is InlineQueryResultAnimation) {
      return this as InlineQueryResultAnimation;
    }
    return null;
  }

  InlineQueryResultGame? get inlineQueryResultGame {
    if (this is InlineQueryResultGame) {
      return this as InlineQueryResultGame;
    }
    return null;
  }

  InlineQueryResultArticle? get inlineQueryResultArticle {
    if (this is InlineQueryResultArticle) {
      return this as InlineQueryResultArticle;
    }
    return null;
  }

  InlineQueryResultAudio? get inlineQueryResultAudio {
    if (this is InlineQueryResultAudio) {
      return this as InlineQueryResultAudio;
    }
    return null;
  }

  InlineQueryResultSticker? get inlineQueryResultSticker {
    if (this is InlineQueryResultSticker) {
      return this as InlineQueryResultSticker;
    }
    return null;
  }

  InlineQueryResultVoiceNote? get inlineQueryResultVoiceNote {
    if (this is InlineQueryResultVoiceNote) {
      return this as InlineQueryResultVoiceNote;
    }
    return null;
  }

  InlineQueryResultContact? get inlineQueryResultContact {
    if (this is InlineQueryResultContact) {
      return this as InlineQueryResultContact;
    }
    return null;
  }
}

extension InlineQueryResultsButtonTypeExt on InlineQueryResultsButtonType {
  InlineQueryResultsButtonTypeStartBot?
      get inlineQueryResultsButtonTypeStartBot {
    if (this is InlineQueryResultsButtonTypeStartBot) {
      return this as InlineQueryResultsButtonTypeStartBot;
    }
    return null;
  }

  InlineQueryResultsButtonTypeWebApp? get inlineQueryResultsButtonTypeWebApp {
    if (this is InlineQueryResultsButtonTypeWebApp) {
      return this as InlineQueryResultsButtonTypeWebApp;
    }
    return null;
  }
}

extension CallbackQueryPayloadExt on CallbackQueryPayload {
  CallbackQueryPayloadDataWithPassword?
      get callbackQueryPayloadDataWithPassword {
    if (this is CallbackQueryPayloadDataWithPassword) {
      return this as CallbackQueryPayloadDataWithPassword;
    }
    return null;
  }

  CallbackQueryPayloadData? get callbackQueryPayloadData {
    if (this is CallbackQueryPayloadData) {
      return this as CallbackQueryPayloadData;
    }
    return null;
  }

  CallbackQueryPayloadGame? get callbackQueryPayloadGame {
    if (this is CallbackQueryPayloadGame) {
      return this as CallbackQueryPayloadGame;
    }
    return null;
  }
}

extension ChatEventActionExt on ChatEventAction {
  ChatEventPermissionsChanged? get chatEventPermissionsChanged {
    if (this is ChatEventPermissionsChanged) {
      return this as ChatEventPermissionsChanged;
    }
    return null;
  }

  ChatEventVideoChatMuteNewParticipantsToggled?
      get chatEventVideoChatMuteNewParticipantsToggled {
    if (this is ChatEventVideoChatMuteNewParticipantsToggled) {
      return this as ChatEventVideoChatMuteNewParticipantsToggled;
    }
    return null;
  }

  ChatEventIsAllHistoryAvailableToggled?
      get chatEventIsAllHistoryAvailableToggled {
    if (this is ChatEventIsAllHistoryAvailableToggled) {
      return this as ChatEventIsAllHistoryAvailableToggled;
    }
    return null;
  }

  ChatEventHasAggressiveAntiSpamEnabledToggled?
      get chatEventHasAggressiveAntiSpamEnabledToggled {
    if (this is ChatEventHasAggressiveAntiSpamEnabledToggled) {
      return this as ChatEventHasAggressiveAntiSpamEnabledToggled;
    }
    return null;
  }

  ChatEventVideoChatCreated? get chatEventVideoChatCreated {
    if (this is ChatEventVideoChatCreated) {
      return this as ChatEventVideoChatCreated;
    }
    return null;
  }

  ChatEventForumTopicToggleIsHidden? get chatEventForumTopicToggleIsHidden {
    if (this is ChatEventForumTopicToggleIsHidden) {
      return this as ChatEventForumTopicToggleIsHidden;
    }
    return null;
  }

  ChatEventSlowModeDelayChanged? get chatEventSlowModeDelayChanged {
    if (this is ChatEventSlowModeDelayChanged) {
      return this as ChatEventSlowModeDelayChanged;
    }
    return null;
  }

  ChatEventActiveUsernamesChanged? get chatEventActiveUsernamesChanged {
    if (this is ChatEventActiveUsernamesChanged) {
      return this as ChatEventActiveUsernamesChanged;
    }
    return null;
  }

  ChatEventSignMessagesToggled? get chatEventSignMessagesToggled {
    if (this is ChatEventSignMessagesToggled) {
      return this as ChatEventSignMessagesToggled;
    }
    return null;
  }

  ChatEventMessageEdited? get chatEventMessageEdited {
    if (this is ChatEventMessageEdited) {
      return this as ChatEventMessageEdited;
    }
    return null;
  }

  ChatEventAvailableReactionsChanged? get chatEventAvailableReactionsChanged {
    if (this is ChatEventAvailableReactionsChanged) {
      return this as ChatEventAvailableReactionsChanged;
    }
    return null;
  }

  ChatEventMessageDeleted? get chatEventMessageDeleted {
    if (this is ChatEventMessageDeleted) {
      return this as ChatEventMessageDeleted;
    }
    return null;
  }

  ChatEventForumTopicPinned? get chatEventForumTopicPinned {
    if (this is ChatEventForumTopicPinned) {
      return this as ChatEventForumTopicPinned;
    }
    return null;
  }

  ChatEventPhotoChanged? get chatEventPhotoChanged {
    if (this is ChatEventPhotoChanged) {
      return this as ChatEventPhotoChanged;
    }
    return null;
  }

  ChatEventLinkedChatChanged? get chatEventLinkedChatChanged {
    if (this is ChatEventLinkedChatChanged) {
      return this as ChatEventLinkedChatChanged;
    }
    return null;
  }

  ChatEventForumTopicDeleted? get chatEventForumTopicDeleted {
    if (this is ChatEventForumTopicDeleted) {
      return this as ChatEventForumTopicDeleted;
    }
    return null;
  }

  ChatEventMemberPromoted? get chatEventMemberPromoted {
    if (this is ChatEventMemberPromoted) {
      return this as ChatEventMemberPromoted;
    }
    return null;
  }

  ChatEventLocationChanged? get chatEventLocationChanged {
    if (this is ChatEventLocationChanged) {
      return this as ChatEventLocationChanged;
    }
    return null;
  }

  ChatEventMemberJoinedByRequest? get chatEventMemberJoinedByRequest {
    if (this is ChatEventMemberJoinedByRequest) {
      return this as ChatEventMemberJoinedByRequest;
    }
    return null;
  }

  ChatEventMessageAutoDeleteTimeChanged?
      get chatEventMessageAutoDeleteTimeChanged {
    if (this is ChatEventMessageAutoDeleteTimeChanged) {
      return this as ChatEventMessageAutoDeleteTimeChanged;
    }
    return null;
  }

  ChatEventUsernameChanged? get chatEventUsernameChanged {
    if (this is ChatEventUsernameChanged) {
      return this as ChatEventUsernameChanged;
    }
    return null;
  }

  ChatEventMemberLeft? get chatEventMemberLeft {
    if (this is ChatEventMemberLeft) {
      return this as ChatEventMemberLeft;
    }
    return null;
  }

  ChatEventVideoChatParticipantVolumeLevelChanged?
      get chatEventVideoChatParticipantVolumeLevelChanged {
    if (this is ChatEventVideoChatParticipantVolumeLevelChanged) {
      return this as ChatEventVideoChatParticipantVolumeLevelChanged;
    }
    return null;
  }

  ChatEventMemberJoinedByInviteLink? get chatEventMemberJoinedByInviteLink {
    if (this is ChatEventMemberJoinedByInviteLink) {
      return this as ChatEventMemberJoinedByInviteLink;
    }
    return null;
  }

  ChatEventMemberRestricted? get chatEventMemberRestricted {
    if (this is ChatEventMemberRestricted) {
      return this as ChatEventMemberRestricted;
    }
    return null;
  }

  ChatEventInvitesToggled? get chatEventInvitesToggled {
    if (this is ChatEventInvitesToggled) {
      return this as ChatEventInvitesToggled;
    }
    return null;
  }

  ChatEventForumTopicEdited? get chatEventForumTopicEdited {
    if (this is ChatEventForumTopicEdited) {
      return this as ChatEventForumTopicEdited;
    }
    return null;
  }

  ChatEventInviteLinkRevoked? get chatEventInviteLinkRevoked {
    if (this is ChatEventInviteLinkRevoked) {
      return this as ChatEventInviteLinkRevoked;
    }
    return null;
  }

  ChatEventForumTopicToggleIsClosed? get chatEventForumTopicToggleIsClosed {
    if (this is ChatEventForumTopicToggleIsClosed) {
      return this as ChatEventForumTopicToggleIsClosed;
    }
    return null;
  }

  ChatEventStickerSetChanged? get chatEventStickerSetChanged {
    if (this is ChatEventStickerSetChanged) {
      return this as ChatEventStickerSetChanged;
    }
    return null;
  }

  ChatEventMemberJoined? get chatEventMemberJoined {
    if (this is ChatEventMemberJoined) {
      return this as ChatEventMemberJoined;
    }
    return null;
  }

  ChatEventMessagePinned? get chatEventMessagePinned {
    if (this is ChatEventMessagePinned) {
      return this as ChatEventMessagePinned;
    }
    return null;
  }

  ChatEventIsForumToggled? get chatEventIsForumToggled {
    if (this is ChatEventIsForumToggled) {
      return this as ChatEventIsForumToggled;
    }
    return null;
  }

  ChatEventVideoChatParticipantIsMutedToggled?
      get chatEventVideoChatParticipantIsMutedToggled {
    if (this is ChatEventVideoChatParticipantIsMutedToggled) {
      return this as ChatEventVideoChatParticipantIsMutedToggled;
    }
    return null;
  }

  ChatEventPollStopped? get chatEventPollStopped {
    if (this is ChatEventPollStopped) {
      return this as ChatEventPollStopped;
    }
    return null;
  }

  ChatEventInviteLinkDeleted? get chatEventInviteLinkDeleted {
    if (this is ChatEventInviteLinkDeleted) {
      return this as ChatEventInviteLinkDeleted;
    }
    return null;
  }

  ChatEventTitleChanged? get chatEventTitleChanged {
    if (this is ChatEventTitleChanged) {
      return this as ChatEventTitleChanged;
    }
    return null;
  }

  ChatEventHasProtectedContentToggled? get chatEventHasProtectedContentToggled {
    if (this is ChatEventHasProtectedContentToggled) {
      return this as ChatEventHasProtectedContentToggled;
    }
    return null;
  }

  ChatEventInviteLinkEdited? get chatEventInviteLinkEdited {
    if (this is ChatEventInviteLinkEdited) {
      return this as ChatEventInviteLinkEdited;
    }
    return null;
  }

  ChatEventForumTopicCreated? get chatEventForumTopicCreated {
    if (this is ChatEventForumTopicCreated) {
      return this as ChatEventForumTopicCreated;
    }
    return null;
  }

  ChatEventVideoChatEnded? get chatEventVideoChatEnded {
    if (this is ChatEventVideoChatEnded) {
      return this as ChatEventVideoChatEnded;
    }
    return null;
  }

  ChatEventMemberInvited? get chatEventMemberInvited {
    if (this is ChatEventMemberInvited) {
      return this as ChatEventMemberInvited;
    }
    return null;
  }

  ChatEventMessageUnpinned? get chatEventMessageUnpinned {
    if (this is ChatEventMessageUnpinned) {
      return this as ChatEventMessageUnpinned;
    }
    return null;
  }

  ChatEventDescriptionChanged? get chatEventDescriptionChanged {
    if (this is ChatEventDescriptionChanged) {
      return this as ChatEventDescriptionChanged;
    }
    return null;
  }
}

extension LanguagePackStringValueExt on LanguagePackStringValue {
  LanguagePackStringValueDeleted? get languagePackStringValueDeleted {
    if (this is LanguagePackStringValueDeleted) {
      return this as LanguagePackStringValueDeleted;
    }
    return null;
  }

  LanguagePackStringValuePluralized? get languagePackStringValuePluralized {
    if (this is LanguagePackStringValuePluralized) {
      return this as LanguagePackStringValuePluralized;
    }
    return null;
  }

  LanguagePackStringValueOrdinary? get languagePackStringValueOrdinary {
    if (this is LanguagePackStringValueOrdinary) {
      return this as LanguagePackStringValueOrdinary;
    }
    return null;
  }
}

extension PremiumLimitTypeExt on PremiumLimitType {
  PremiumLimitTypePinnedArchivedChatCount?
      get premiumLimitTypePinnedArchivedChatCount {
    if (this is PremiumLimitTypePinnedArchivedChatCount) {
      return this as PremiumLimitTypePinnedArchivedChatCount;
    }
    return null;
  }

  PremiumLimitTypeChatFolderCount? get premiumLimitTypeChatFolderCount {
    if (this is PremiumLimitTypeChatFolderCount) {
      return this as PremiumLimitTypeChatFolderCount;
    }
    return null;
  }

  PremiumLimitTypePinnedChatCount? get premiumLimitTypePinnedChatCount {
    if (this is PremiumLimitTypePinnedChatCount) {
      return this as PremiumLimitTypePinnedChatCount;
    }
    return null;
  }

  PremiumLimitTypeShareableChatFolderCount?
      get premiumLimitTypeShareableChatFolderCount {
    if (this is PremiumLimitTypeShareableChatFolderCount) {
      return this as PremiumLimitTypeShareableChatFolderCount;
    }
    return null;
  }

  PremiumLimitTypeChatFolderChosenChatCount?
      get premiumLimitTypeChatFolderChosenChatCount {
    if (this is PremiumLimitTypeChatFolderChosenChatCount) {
      return this as PremiumLimitTypeChatFolderChosenChatCount;
    }
    return null;
  }

  PremiumLimitTypeChatFolderInviteLinkCount?
      get premiumLimitTypeChatFolderInviteLinkCount {
    if (this is PremiumLimitTypeChatFolderInviteLinkCount) {
      return this as PremiumLimitTypeChatFolderInviteLinkCount;
    }
    return null;
  }

  PremiumLimitTypeCaptionLength? get premiumLimitTypeCaptionLength {
    if (this is PremiumLimitTypeCaptionLength) {
      return this as PremiumLimitTypeCaptionLength;
    }
    return null;
  }

  PremiumLimitTypeSavedAnimationCount? get premiumLimitTypeSavedAnimationCount {
    if (this is PremiumLimitTypeSavedAnimationCount) {
      return this as PremiumLimitTypeSavedAnimationCount;
    }
    return null;
  }

  PremiumLimitTypeCreatedPublicChatCount?
      get premiumLimitTypeCreatedPublicChatCount {
    if (this is PremiumLimitTypeCreatedPublicChatCount) {
      return this as PremiumLimitTypeCreatedPublicChatCount;
    }
    return null;
  }

  PremiumLimitTypeBioLength? get premiumLimitTypeBioLength {
    if (this is PremiumLimitTypeBioLength) {
      return this as PremiumLimitTypeBioLength;
    }
    return null;
  }

  PremiumLimitTypeFavoriteStickerCount?
      get premiumLimitTypeFavoriteStickerCount {
    if (this is PremiumLimitTypeFavoriteStickerCount) {
      return this as PremiumLimitTypeFavoriteStickerCount;
    }
    return null;
  }

  PremiumLimitTypeSupergroupCount? get premiumLimitTypeSupergroupCount {
    if (this is PremiumLimitTypeSupergroupCount) {
      return this as PremiumLimitTypeSupergroupCount;
    }
    return null;
  }

  PremiumLimitTypeActiveStoryCount? get premiumLimitTypeActiveStoryCount {
    if (this is PremiumLimitTypeActiveStoryCount) {
      return this as PremiumLimitTypeActiveStoryCount;
    }
    return null;
  }
}

extension PremiumFeatureExt on PremiumFeature {
  PremiumFeatureAdvancedChatManagement?
      get premiumFeatureAdvancedChatManagement {
    if (this is PremiumFeatureAdvancedChatManagement) {
      return this as PremiumFeatureAdvancedChatManagement;
    }
    return null;
  }

  PremiumFeatureUniqueReactions? get premiumFeatureUniqueReactions {
    if (this is PremiumFeatureUniqueReactions) {
      return this as PremiumFeatureUniqueReactions;
    }
    return null;
  }

  PremiumFeatureEmojiStatus? get premiumFeatureEmojiStatus {
    if (this is PremiumFeatureEmojiStatus) {
      return this as PremiumFeatureEmojiStatus;
    }
    return null;
  }

  PremiumFeatureForumTopicIcon? get premiumFeatureForumTopicIcon {
    if (this is PremiumFeatureForumTopicIcon) {
      return this as PremiumFeatureForumTopicIcon;
    }
    return null;
  }

  PremiumFeatureIncreasedLimits? get premiumFeatureIncreasedLimits {
    if (this is PremiumFeatureIncreasedLimits) {
      return this as PremiumFeatureIncreasedLimits;
    }
    return null;
  }

  PremiumFeatureProfileBadge? get premiumFeatureProfileBadge {
    if (this is PremiumFeatureProfileBadge) {
      return this as PremiumFeatureProfileBadge;
    }
    return null;
  }

  PremiumFeatureCustomEmoji? get premiumFeatureCustomEmoji {
    if (this is PremiumFeatureCustomEmoji) {
      return this as PremiumFeatureCustomEmoji;
    }
    return null;
  }

  PremiumFeatureVoiceRecognition? get premiumFeatureVoiceRecognition {
    if (this is PremiumFeatureVoiceRecognition) {
      return this as PremiumFeatureVoiceRecognition;
    }
    return null;
  }

  PremiumFeatureAnimatedProfilePhoto? get premiumFeatureAnimatedProfilePhoto {
    if (this is PremiumFeatureAnimatedProfilePhoto) {
      return this as PremiumFeatureAnimatedProfilePhoto;
    }
    return null;
  }

  PremiumFeatureDisabledAds? get premiumFeatureDisabledAds {
    if (this is PremiumFeatureDisabledAds) {
      return this as PremiumFeatureDisabledAds;
    }
    return null;
  }

  PremiumFeatureAppIcons? get premiumFeatureAppIcons {
    if (this is PremiumFeatureAppIcons) {
      return this as PremiumFeatureAppIcons;
    }
    return null;
  }

  PremiumFeatureImprovedDownloadSpeed? get premiumFeatureImprovedDownloadSpeed {
    if (this is PremiumFeatureImprovedDownloadSpeed) {
      return this as PremiumFeatureImprovedDownloadSpeed;
    }
    return null;
  }

  PremiumFeatureUniqueStickers? get premiumFeatureUniqueStickers {
    if (this is PremiumFeatureUniqueStickers) {
      return this as PremiumFeatureUniqueStickers;
    }
    return null;
  }

  PremiumFeatureIncreasedUploadFileSize?
      get premiumFeatureIncreasedUploadFileSize {
    if (this is PremiumFeatureIncreasedUploadFileSize) {
      return this as PremiumFeatureIncreasedUploadFileSize;
    }
    return null;
  }

  PremiumFeatureRealTimeChatTranslation?
      get premiumFeatureRealTimeChatTranslation {
    if (this is PremiumFeatureRealTimeChatTranslation) {
      return this as PremiumFeatureRealTimeChatTranslation;
    }
    return null;
  }
}

extension PremiumSourceExt on PremiumSource {
  PremiumSourceSettings? get premiumSourceSettings {
    if (this is PremiumSourceSettings) {
      return this as PremiumSourceSettings;
    }
    return null;
  }

  PremiumSourceLimitExceeded? get premiumSourceLimitExceeded {
    if (this is PremiumSourceLimitExceeded) {
      return this as PremiumSourceLimitExceeded;
    }
    return null;
  }

  PremiumSourceFeature? get premiumSourceFeature {
    if (this is PremiumSourceFeature) {
      return this as PremiumSourceFeature;
    }
    return null;
  }

  PremiumSourceLink? get premiumSourceLink {
    if (this is PremiumSourceLink) {
      return this as PremiumSourceLink;
    }
    return null;
  }
}

extension StorePaymentPurposeExt on StorePaymentPurpose {
  StorePaymentPurposeGiftedPremium? get storePaymentPurposeGiftedPremium {
    if (this is StorePaymentPurposeGiftedPremium) {
      return this as StorePaymentPurposeGiftedPremium;
    }
    return null;
  }

  StorePaymentPurposePremiumSubscription?
      get storePaymentPurposePremiumSubscription {
    if (this is StorePaymentPurposePremiumSubscription) {
      return this as StorePaymentPurposePremiumSubscription;
    }
    return null;
  }
}

extension DeviceTokenExt on DeviceToken {
  DeviceTokenWindowsPush? get deviceTokenWindowsPush {
    if (this is DeviceTokenWindowsPush) {
      return this as DeviceTokenWindowsPush;
    }
    return null;
  }

  DeviceTokenApplePushVoIP? get deviceTokenApplePushVoIP {
    if (this is DeviceTokenApplePushVoIP) {
      return this as DeviceTokenApplePushVoIP;
    }
    return null;
  }

  DeviceTokenUbuntuPush? get deviceTokenUbuntuPush {
    if (this is DeviceTokenUbuntuPush) {
      return this as DeviceTokenUbuntuPush;
    }
    return null;
  }

  DeviceTokenWebPush? get deviceTokenWebPush {
    if (this is DeviceTokenWebPush) {
      return this as DeviceTokenWebPush;
    }
    return null;
  }

  DeviceTokenSimplePush? get deviceTokenSimplePush {
    if (this is DeviceTokenSimplePush) {
      return this as DeviceTokenSimplePush;
    }
    return null;
  }

  DeviceTokenMicrosoftPush? get deviceTokenMicrosoftPush {
    if (this is DeviceTokenMicrosoftPush) {
      return this as DeviceTokenMicrosoftPush;
    }
    return null;
  }

  DeviceTokenApplePush? get deviceTokenApplePush {
    if (this is DeviceTokenApplePush) {
      return this as DeviceTokenApplePush;
    }
    return null;
  }

  DeviceTokenMicrosoftPushVoIP? get deviceTokenMicrosoftPushVoIP {
    if (this is DeviceTokenMicrosoftPushVoIP) {
      return this as DeviceTokenMicrosoftPushVoIP;
    }
    return null;
  }

  DeviceTokenHuaweiPush? get deviceTokenHuaweiPush {
    if (this is DeviceTokenHuaweiPush) {
      return this as DeviceTokenHuaweiPush;
    }
    return null;
  }

  DeviceTokenTizenPush? get deviceTokenTizenPush {
    if (this is DeviceTokenTizenPush) {
      return this as DeviceTokenTizenPush;
    }
    return null;
  }

  DeviceTokenBlackBerryPush? get deviceTokenBlackBerryPush {
    if (this is DeviceTokenBlackBerryPush) {
      return this as DeviceTokenBlackBerryPush;
    }
    return null;
  }

  DeviceTokenFirebaseCloudMessaging? get deviceTokenFirebaseCloudMessaging {
    if (this is DeviceTokenFirebaseCloudMessaging) {
      return this as DeviceTokenFirebaseCloudMessaging;
    }
    return null;
  }
}

extension BackgroundFillExt on BackgroundFill {
  BackgroundFillFreeformGradient? get backgroundFillFreeformGradient {
    if (this is BackgroundFillFreeformGradient) {
      return this as BackgroundFillFreeformGradient;
    }
    return null;
  }

  BackgroundFillGradient? get backgroundFillGradient {
    if (this is BackgroundFillGradient) {
      return this as BackgroundFillGradient;
    }
    return null;
  }

  BackgroundFillSolid? get backgroundFillSolid {
    if (this is BackgroundFillSolid) {
      return this as BackgroundFillSolid;
    }
    return null;
  }
}

extension BackgroundTypeExt on BackgroundType {
  BackgroundTypeWallpaper? get backgroundTypeWallpaper {
    if (this is BackgroundTypeWallpaper) {
      return this as BackgroundTypeWallpaper;
    }
    return null;
  }

  BackgroundTypeFill? get backgroundTypeFill {
    if (this is BackgroundTypeFill) {
      return this as BackgroundTypeFill;
    }
    return null;
  }

  BackgroundTypePattern? get backgroundTypePattern {
    if (this is BackgroundTypePattern) {
      return this as BackgroundTypePattern;
    }
    return null;
  }
}

extension InputBackgroundExt on InputBackground {
  InputBackgroundLocal? get inputBackgroundLocal {
    if (this is InputBackgroundLocal) {
      return this as InputBackgroundLocal;
    }
    return null;
  }

  InputBackgroundPrevious? get inputBackgroundPrevious {
    if (this is InputBackgroundPrevious) {
      return this as InputBackgroundPrevious;
    }
    return null;
  }

  InputBackgroundRemote? get inputBackgroundRemote {
    if (this is InputBackgroundRemote) {
      return this as InputBackgroundRemote;
    }
    return null;
  }
}

extension CanTransferOwnershipResultExt on CanTransferOwnershipResult {
  CanTransferOwnershipResultPasswordTooFresh?
      get canTransferOwnershipResultPasswordTooFresh {
    if (this is CanTransferOwnershipResultPasswordTooFresh) {
      return this as CanTransferOwnershipResultPasswordTooFresh;
    }
    return null;
  }

  CanTransferOwnershipResultOk? get canTransferOwnershipResultOk {
    if (this is CanTransferOwnershipResultOk) {
      return this as CanTransferOwnershipResultOk;
    }
    return null;
  }

  CanTransferOwnershipResultPasswordNeeded?
      get canTransferOwnershipResultPasswordNeeded {
    if (this is CanTransferOwnershipResultPasswordNeeded) {
      return this as CanTransferOwnershipResultPasswordNeeded;
    }
    return null;
  }

  CanTransferOwnershipResultSessionTooFresh?
      get canTransferOwnershipResultSessionTooFresh {
    if (this is CanTransferOwnershipResultSessionTooFresh) {
      return this as CanTransferOwnershipResultSessionTooFresh;
    }
    return null;
  }
}

extension CheckChatUsernameResultExt on CheckChatUsernameResult {
  CheckChatUsernameResultPublicGroupsUnavailable?
      get checkChatUsernameResultPublicGroupsUnavailable {
    if (this is CheckChatUsernameResultPublicGroupsUnavailable) {
      return this as CheckChatUsernameResultPublicGroupsUnavailable;
    }
    return null;
  }

  CheckChatUsernameResultUsernameInvalid?
      get checkChatUsernameResultUsernameInvalid {
    if (this is CheckChatUsernameResultUsernameInvalid) {
      return this as CheckChatUsernameResultUsernameInvalid;
    }
    return null;
  }

  CheckChatUsernameResultUsernamePurchasable?
      get checkChatUsernameResultUsernamePurchasable {
    if (this is CheckChatUsernameResultUsernamePurchasable) {
      return this as CheckChatUsernameResultUsernamePurchasable;
    }
    return null;
  }

  CheckChatUsernameResultOk? get checkChatUsernameResultOk {
    if (this is CheckChatUsernameResultOk) {
      return this as CheckChatUsernameResultOk;
    }
    return null;
  }

  CheckChatUsernameResultPublicChatsTooMany?
      get checkChatUsernameResultPublicChatsTooMany {
    if (this is CheckChatUsernameResultPublicChatsTooMany) {
      return this as CheckChatUsernameResultPublicChatsTooMany;
    }
    return null;
  }

  CheckChatUsernameResultUsernameOccupied?
      get checkChatUsernameResultUsernameOccupied {
    if (this is CheckChatUsernameResultUsernameOccupied) {
      return this as CheckChatUsernameResultUsernameOccupied;
    }
    return null;
  }
}

extension CheckStickerSetNameResultExt on CheckStickerSetNameResult {
  CheckStickerSetNameResultNameOccupied?
      get checkStickerSetNameResultNameOccupied {
    if (this is CheckStickerSetNameResultNameOccupied) {
      return this as CheckStickerSetNameResultNameOccupied;
    }
    return null;
  }

  CheckStickerSetNameResultOk? get checkStickerSetNameResultOk {
    if (this is CheckStickerSetNameResultOk) {
      return this as CheckStickerSetNameResultOk;
    }
    return null;
  }

  CheckStickerSetNameResultNameInvalid?
      get checkStickerSetNameResultNameInvalid {
    if (this is CheckStickerSetNameResultNameInvalid) {
      return this as CheckStickerSetNameResultNameInvalid;
    }
    return null;
  }
}

extension ResetPasswordResultExt on ResetPasswordResult {
  ResetPasswordResultDeclined? get resetPasswordResultDeclined {
    if (this is ResetPasswordResultDeclined) {
      return this as ResetPasswordResultDeclined;
    }
    return null;
  }

  ResetPasswordResultOk? get resetPasswordResultOk {
    if (this is ResetPasswordResultOk) {
      return this as ResetPasswordResultOk;
    }
    return null;
  }

  ResetPasswordResultPending? get resetPasswordResultPending {
    if (this is ResetPasswordResultPending) {
      return this as ResetPasswordResultPending;
    }
    return null;
  }
}

extension MessageFileTypeExt on MessageFileType {
  MessageFileTypeUnknown? get messageFileTypeUnknown {
    if (this is MessageFileTypeUnknown) {
      return this as MessageFileTypeUnknown;
    }
    return null;
  }

  MessageFileTypePrivate? get messageFileTypePrivate {
    if (this is MessageFileTypePrivate) {
      return this as MessageFileTypePrivate;
    }
    return null;
  }

  MessageFileTypeGroup? get messageFileTypeGroup {
    if (this is MessageFileTypeGroup) {
      return this as MessageFileTypeGroup;
    }
    return null;
  }
}

extension PushMessageContentExt on PushMessageContent {
  PushMessageContentChatSetBackground? get pushMessageContentChatSetBackground {
    if (this is PushMessageContentChatSetBackground) {
      return this as PushMessageContentChatSetBackground;
    }
    return null;
  }

  PushMessageContentScreenshotTaken? get pushMessageContentScreenshotTaken {
    if (this is PushMessageContentScreenshotTaken) {
      return this as PushMessageContentScreenshotTaken;
    }
    return null;
  }

  PushMessageContentContactRegistered? get pushMessageContentContactRegistered {
    if (this is PushMessageContentContactRegistered) {
      return this as PushMessageContentContactRegistered;
    }
    return null;
  }

  PushMessageContentAudio? get pushMessageContentAudio {
    if (this is PushMessageContentAudio) {
      return this as PushMessageContentAudio;
    }
    return null;
  }

  PushMessageContentVideoNote? get pushMessageContentVideoNote {
    if (this is PushMessageContentVideoNote) {
      return this as PushMessageContentVideoNote;
    }
    return null;
  }

  PushMessageContentBasicGroupChatCreate?
      get pushMessageContentBasicGroupChatCreate {
    if (this is PushMessageContentBasicGroupChatCreate) {
      return this as PushMessageContentBasicGroupChatCreate;
    }
    return null;
  }

  PushMessageContentChatAddMembers? get pushMessageContentChatAddMembers {
    if (this is PushMessageContentChatAddMembers) {
      return this as PushMessageContentChatAddMembers;
    }
    return null;
  }

  PushMessageContentGame? get pushMessageContentGame {
    if (this is PushMessageContentGame) {
      return this as PushMessageContentGame;
    }
    return null;
  }

  PushMessageContentGameScore? get pushMessageContentGameScore {
    if (this is PushMessageContentGameScore) {
      return this as PushMessageContentGameScore;
    }
    return null;
  }

  PushMessageContentMediaAlbum? get pushMessageContentMediaAlbum {
    if (this is PushMessageContentMediaAlbum) {
      return this as PushMessageContentMediaAlbum;
    }
    return null;
  }

  PushMessageContentVoiceNote? get pushMessageContentVoiceNote {
    if (this is PushMessageContentVoiceNote) {
      return this as PushMessageContentVoiceNote;
    }
    return null;
  }

  PushMessageContentLocation? get pushMessageContentLocation {
    if (this is PushMessageContentLocation) {
      return this as PushMessageContentLocation;
    }
    return null;
  }

  PushMessageContentChatJoinByRequest? get pushMessageContentChatJoinByRequest {
    if (this is PushMessageContentChatJoinByRequest) {
      return this as PushMessageContentChatJoinByRequest;
    }
    return null;
  }

  PushMessageContentPoll? get pushMessageContentPoll {
    if (this is PushMessageContentPoll) {
      return this as PushMessageContentPoll;
    }
    return null;
  }

  PushMessageContentChatChangeTitle? get pushMessageContentChatChangeTitle {
    if (this is PushMessageContentChatChangeTitle) {
      return this as PushMessageContentChatChangeTitle;
    }
    return null;
  }

  PushMessageContentSuggestProfilePhoto?
      get pushMessageContentSuggestProfilePhoto {
    if (this is PushMessageContentSuggestProfilePhoto) {
      return this as PushMessageContentSuggestProfilePhoto;
    }
    return null;
  }

  PushMessageContentContact? get pushMessageContentContact {
    if (this is PushMessageContentContact) {
      return this as PushMessageContentContact;
    }
    return null;
  }

  PushMessageContentRecurringPayment? get pushMessageContentRecurringPayment {
    if (this is PushMessageContentRecurringPayment) {
      return this as PushMessageContentRecurringPayment;
    }
    return null;
  }

  PushMessageContentAnimation? get pushMessageContentAnimation {
    if (this is PushMessageContentAnimation) {
      return this as PushMessageContentAnimation;
    }
    return null;
  }

  PushMessageContentHidden? get pushMessageContentHidden {
    if (this is PushMessageContentHidden) {
      return this as PushMessageContentHidden;
    }
    return null;
  }

  PushMessageContentInvoice? get pushMessageContentInvoice {
    if (this is PushMessageContentInvoice) {
      return this as PushMessageContentInvoice;
    }
    return null;
  }

  PushMessageContentStory? get pushMessageContentStory {
    if (this is PushMessageContentStory) {
      return this as PushMessageContentStory;
    }
    return null;
  }

  PushMessageContentMessageForwards? get pushMessageContentMessageForwards {
    if (this is PushMessageContentMessageForwards) {
      return this as PushMessageContentMessageForwards;
    }
    return null;
  }

  PushMessageContentVideo? get pushMessageContentVideo {
    if (this is PushMessageContentVideo) {
      return this as PushMessageContentVideo;
    }
    return null;
  }

  PushMessageContentText? get pushMessageContentText {
    if (this is PushMessageContentText) {
      return this as PushMessageContentText;
    }
    return null;
  }

  PushMessageContentPhoto? get pushMessageContentPhoto {
    if (this is PushMessageContentPhoto) {
      return this as PushMessageContentPhoto;
    }
    return null;
  }

  PushMessageContentChatChangePhoto? get pushMessageContentChatChangePhoto {
    if (this is PushMessageContentChatChangePhoto) {
      return this as PushMessageContentChatChangePhoto;
    }
    return null;
  }

  PushMessageContentChatSetTheme? get pushMessageContentChatSetTheme {
    if (this is PushMessageContentChatSetTheme) {
      return this as PushMessageContentChatSetTheme;
    }
    return null;
  }

  PushMessageContentSticker? get pushMessageContentSticker {
    if (this is PushMessageContentSticker) {
      return this as PushMessageContentSticker;
    }
    return null;
  }

  PushMessageContentChatDeleteMember? get pushMessageContentChatDeleteMember {
    if (this is PushMessageContentChatDeleteMember) {
      return this as PushMessageContentChatDeleteMember;
    }
    return null;
  }

  PushMessageContentDocument? get pushMessageContentDocument {
    if (this is PushMessageContentDocument) {
      return this as PushMessageContentDocument;
    }
    return null;
  }

  PushMessageContentChatJoinByLink? get pushMessageContentChatJoinByLink {
    if (this is PushMessageContentChatJoinByLink) {
      return this as PushMessageContentChatJoinByLink;
    }
    return null;
  }
}

extension NotificationTypeExt on NotificationType {
  NotificationTypeNewSecretChat? get notificationTypeNewSecretChat {
    if (this is NotificationTypeNewSecretChat) {
      return this as NotificationTypeNewSecretChat;
    }
    return null;
  }

  NotificationTypeNewCall? get notificationTypeNewCall {
    if (this is NotificationTypeNewCall) {
      return this as NotificationTypeNewCall;
    }
    return null;
  }

  NotificationTypeNewPushMessage? get notificationTypeNewPushMessage {
    if (this is NotificationTypeNewPushMessage) {
      return this as NotificationTypeNewPushMessage;
    }
    return null;
  }

  NotificationTypeNewMessage? get notificationTypeNewMessage {
    if (this is NotificationTypeNewMessage) {
      return this as NotificationTypeNewMessage;
    }
    return null;
  }
}

extension NotificationGroupTypeExt on NotificationGroupType {
  NotificationGroupTypeMessages? get notificationGroupTypeMessages {
    if (this is NotificationGroupTypeMessages) {
      return this as NotificationGroupTypeMessages;
    }
    return null;
  }

  NotificationGroupTypeMentions? get notificationGroupTypeMentions {
    if (this is NotificationGroupTypeMentions) {
      return this as NotificationGroupTypeMentions;
    }
    return null;
  }

  NotificationGroupTypeCalls? get notificationGroupTypeCalls {
    if (this is NotificationGroupTypeCalls) {
      return this as NotificationGroupTypeCalls;
    }
    return null;
  }

  NotificationGroupTypeSecretChat? get notificationGroupTypeSecretChat {
    if (this is NotificationGroupTypeSecretChat) {
      return this as NotificationGroupTypeSecretChat;
    }
    return null;
  }
}

extension OptionValueExt on OptionValue {
  OptionValueInteger? get optionValueInteger {
    if (this is OptionValueInteger) {
      return this as OptionValueInteger;
    }
    return null;
  }

  OptionValueEmpty? get optionValueEmpty {
    if (this is OptionValueEmpty) {
      return this as OptionValueEmpty;
    }
    return null;
  }

  OptionValueString? get optionValueString {
    if (this is OptionValueString) {
      return this as OptionValueString;
    }
    return null;
  }

  OptionValueBoolean? get optionValueBoolean {
    if (this is OptionValueBoolean) {
      return this as OptionValueBoolean;
    }
    return null;
  }
}

extension JsonValueExt on JsonValue {
  JsonValueNumber? get jsonValueNumber {
    if (this is JsonValueNumber) {
      return this as JsonValueNumber;
    }
    return null;
  }

  JsonValueArray? get jsonValueArray {
    if (this is JsonValueArray) {
      return this as JsonValueArray;
    }
    return null;
  }

  JsonValueNull? get jsonValueNull {
    if (this is JsonValueNull) {
      return this as JsonValueNull;
    }
    return null;
  }

  JsonValueObject? get jsonValueObject {
    if (this is JsonValueObject) {
      return this as JsonValueObject;
    }
    return null;
  }

  JsonValueString? get jsonValueString {
    if (this is JsonValueString) {
      return this as JsonValueString;
    }
    return null;
  }

  JsonValueBoolean? get jsonValueBoolean {
    if (this is JsonValueBoolean) {
      return this as JsonValueBoolean;
    }
    return null;
  }
}

extension StoryPrivacySettingsExt on StoryPrivacySettings {
  StoryPrivacySettingsCloseFriends? get storyPrivacySettingsCloseFriends {
    if (this is StoryPrivacySettingsCloseFriends) {
      return this as StoryPrivacySettingsCloseFriends;
    }
    return null;
  }

  StoryPrivacySettingsContacts? get storyPrivacySettingsContacts {
    if (this is StoryPrivacySettingsContacts) {
      return this as StoryPrivacySettingsContacts;
    }
    return null;
  }

  StoryPrivacySettingsEveryone? get storyPrivacySettingsEveryone {
    if (this is StoryPrivacySettingsEveryone) {
      return this as StoryPrivacySettingsEveryone;
    }
    return null;
  }

  StoryPrivacySettingsSelectedContacts?
      get storyPrivacySettingsSelectedContacts {
    if (this is StoryPrivacySettingsSelectedContacts) {
      return this as StoryPrivacySettingsSelectedContacts;
    }
    return null;
  }
}

extension UserPrivacySettingRuleExt on UserPrivacySettingRule {
  UserPrivacySettingRuleRestrictContacts?
      get userPrivacySettingRuleRestrictContacts {
    if (this is UserPrivacySettingRuleRestrictContacts) {
      return this as UserPrivacySettingRuleRestrictContacts;
    }
    return null;
  }

  UserPrivacySettingRuleRestrictAll? get userPrivacySettingRuleRestrictAll {
    if (this is UserPrivacySettingRuleRestrictAll) {
      return this as UserPrivacySettingRuleRestrictAll;
    }
    return null;
  }

  UserPrivacySettingRuleAllowUsers? get userPrivacySettingRuleAllowUsers {
    if (this is UserPrivacySettingRuleAllowUsers) {
      return this as UserPrivacySettingRuleAllowUsers;
    }
    return null;
  }

  UserPrivacySettingRuleRestrictChatMembers?
      get userPrivacySettingRuleRestrictChatMembers {
    if (this is UserPrivacySettingRuleRestrictChatMembers) {
      return this as UserPrivacySettingRuleRestrictChatMembers;
    }
    return null;
  }

  UserPrivacySettingRuleAllowChatMembers?
      get userPrivacySettingRuleAllowChatMembers {
    if (this is UserPrivacySettingRuleAllowChatMembers) {
      return this as UserPrivacySettingRuleAllowChatMembers;
    }
    return null;
  }

  UserPrivacySettingRuleRestrictUsers? get userPrivacySettingRuleRestrictUsers {
    if (this is UserPrivacySettingRuleRestrictUsers) {
      return this as UserPrivacySettingRuleRestrictUsers;
    }
    return null;
  }

  UserPrivacySettingRuleAllowContacts? get userPrivacySettingRuleAllowContacts {
    if (this is UserPrivacySettingRuleAllowContacts) {
      return this as UserPrivacySettingRuleAllowContacts;
    }
    return null;
  }

  UserPrivacySettingRuleAllowAll? get userPrivacySettingRuleAllowAll {
    if (this is UserPrivacySettingRuleAllowAll) {
      return this as UserPrivacySettingRuleAllowAll;
    }
    return null;
  }
}

extension UserPrivacySettingExt on UserPrivacySetting {
  UserPrivacySettingShowLinkInForwardedMessages?
      get userPrivacySettingShowLinkInForwardedMessages {
    if (this is UserPrivacySettingShowLinkInForwardedMessages) {
      return this as UserPrivacySettingShowLinkInForwardedMessages;
    }
    return null;
  }

  UserPrivacySettingShowPhoneNumber? get userPrivacySettingShowPhoneNumber {
    if (this is UserPrivacySettingShowPhoneNumber) {
      return this as UserPrivacySettingShowPhoneNumber;
    }
    return null;
  }

  UserPrivacySettingAllowFindingByPhoneNumber?
      get userPrivacySettingAllowFindingByPhoneNumber {
    if (this is UserPrivacySettingAllowFindingByPhoneNumber) {
      return this as UserPrivacySettingAllowFindingByPhoneNumber;
    }
    return null;
  }

  UserPrivacySettingAllowCalls? get userPrivacySettingAllowCalls {
    if (this is UserPrivacySettingAllowCalls) {
      return this as UserPrivacySettingAllowCalls;
    }
    return null;
  }

  UserPrivacySettingShowStatus? get userPrivacySettingShowStatus {
    if (this is UserPrivacySettingShowStatus) {
      return this as UserPrivacySettingShowStatus;
    }
    return null;
  }

  UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages?
      get userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages {
    if (this is UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages) {
      return this as UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages;
    }
    return null;
  }

  UserPrivacySettingShowBio? get userPrivacySettingShowBio {
    if (this is UserPrivacySettingShowBio) {
      return this as UserPrivacySettingShowBio;
    }
    return null;
  }

  UserPrivacySettingAllowChatInvites? get userPrivacySettingAllowChatInvites {
    if (this is UserPrivacySettingAllowChatInvites) {
      return this as UserPrivacySettingAllowChatInvites;
    }
    return null;
  }

  UserPrivacySettingAllowPeerToPeerCalls?
      get userPrivacySettingAllowPeerToPeerCalls {
    if (this is UserPrivacySettingAllowPeerToPeerCalls) {
      return this as UserPrivacySettingAllowPeerToPeerCalls;
    }
    return null;
  }

  UserPrivacySettingShowProfilePhoto? get userPrivacySettingShowProfilePhoto {
    if (this is UserPrivacySettingShowProfilePhoto) {
      return this as UserPrivacySettingShowProfilePhoto;
    }
    return null;
  }
}

extension SessionTypeExt on SessionType {
  SessionTypeChrome? get sessionTypeChrome {
    if (this is SessionTypeChrome) {
      return this as SessionTypeChrome;
    }
    return null;
  }

  SessionTypeIphone? get sessionTypeIphone {
    if (this is SessionTypeIphone) {
      return this as SessionTypeIphone;
    }
    return null;
  }

  SessionTypeUbuntu? get sessionTypeUbuntu {
    if (this is SessionTypeUbuntu) {
      return this as SessionTypeUbuntu;
    }
    return null;
  }

  SessionTypeVivaldi? get sessionTypeVivaldi {
    if (this is SessionTypeVivaldi) {
      return this as SessionTypeVivaldi;
    }
    return null;
  }

  SessionTypeSafari? get sessionTypeSafari {
    if (this is SessionTypeSafari) {
      return this as SessionTypeSafari;
    }
    return null;
  }

  SessionTypeFirefox? get sessionTypeFirefox {
    if (this is SessionTypeFirefox) {
      return this as SessionTypeFirefox;
    }
    return null;
  }

  SessionTypeBrave? get sessionTypeBrave {
    if (this is SessionTypeBrave) {
      return this as SessionTypeBrave;
    }
    return null;
  }

  SessionTypeEdge? get sessionTypeEdge {
    if (this is SessionTypeEdge) {
      return this as SessionTypeEdge;
    }
    return null;
  }

  SessionTypeMac? get sessionTypeMac {
    if (this is SessionTypeMac) {
      return this as SessionTypeMac;
    }
    return null;
  }

  SessionTypeAndroid? get sessionTypeAndroid {
    if (this is SessionTypeAndroid) {
      return this as SessionTypeAndroid;
    }
    return null;
  }

  SessionTypeUnknown? get sessionTypeUnknown {
    if (this is SessionTypeUnknown) {
      return this as SessionTypeUnknown;
    }
    return null;
  }

  SessionTypeXbox? get sessionTypeXbox {
    if (this is SessionTypeXbox) {
      return this as SessionTypeXbox;
    }
    return null;
  }

  SessionTypeLinux? get sessionTypeLinux {
    if (this is SessionTypeLinux) {
      return this as SessionTypeLinux;
    }
    return null;
  }

  SessionTypeIpad? get sessionTypeIpad {
    if (this is SessionTypeIpad) {
      return this as SessionTypeIpad;
    }
    return null;
  }

  SessionTypeWindows? get sessionTypeWindows {
    if (this is SessionTypeWindows) {
      return this as SessionTypeWindows;
    }
    return null;
  }

  SessionTypeApple? get sessionTypeApple {
    if (this is SessionTypeApple) {
      return this as SessionTypeApple;
    }
    return null;
  }

  SessionTypeOpera? get sessionTypeOpera {
    if (this is SessionTypeOpera) {
      return this as SessionTypeOpera;
    }
    return null;
  }
}

extension ReportReasonExt on ReportReason {
  ReportReasonPornography? get reportReasonPornography {
    if (this is ReportReasonPornography) {
      return this as ReportReasonPornography;
    }
    return null;
  }

  ReportReasonCustom? get reportReasonCustom {
    if (this is ReportReasonCustom) {
      return this as ReportReasonCustom;
    }
    return null;
  }

  ReportReasonChildAbuse? get reportReasonChildAbuse {
    if (this is ReportReasonChildAbuse) {
      return this as ReportReasonChildAbuse;
    }
    return null;
  }

  ReportReasonIllegalDrugs? get reportReasonIllegalDrugs {
    if (this is ReportReasonIllegalDrugs) {
      return this as ReportReasonIllegalDrugs;
    }
    return null;
  }

  ReportReasonUnrelatedLocation? get reportReasonUnrelatedLocation {
    if (this is ReportReasonUnrelatedLocation) {
      return this as ReportReasonUnrelatedLocation;
    }
    return null;
  }

  ReportReasonCopyright? get reportReasonCopyright {
    if (this is ReportReasonCopyright) {
      return this as ReportReasonCopyright;
    }
    return null;
  }

  ReportReasonSpam? get reportReasonSpam {
    if (this is ReportReasonSpam) {
      return this as ReportReasonSpam;
    }
    return null;
  }

  ReportReasonPersonalDetails? get reportReasonPersonalDetails {
    if (this is ReportReasonPersonalDetails) {
      return this as ReportReasonPersonalDetails;
    }
    return null;
  }

  ReportReasonFake? get reportReasonFake {
    if (this is ReportReasonFake) {
      return this as ReportReasonFake;
    }
    return null;
  }

  ReportReasonViolence? get reportReasonViolence {
    if (this is ReportReasonViolence) {
      return this as ReportReasonViolence;
    }
    return null;
  }
}

extension TargetChatExt on TargetChat {
  TargetChatCurrent? get targetChatCurrent {
    if (this is TargetChatCurrent) {
      return this as TargetChatCurrent;
    }
    return null;
  }

  TargetChatChosen? get targetChatChosen {
    if (this is TargetChatChosen) {
      return this as TargetChatChosen;
    }
    return null;
  }

  TargetChatInternalLink? get targetChatInternalLink {
    if (this is TargetChatInternalLink) {
      return this as TargetChatInternalLink;
    }
    return null;
  }
}

extension InternalLinkTypeExt on InternalLinkType {
  InternalLinkTypeChangePhoneNumber? get internalLinkTypeChangePhoneNumber {
    if (this is InternalLinkTypeChangePhoneNumber) {
      return this as InternalLinkTypeChangePhoneNumber;
    }
    return null;
  }

  InternalLinkTypeProxy? get internalLinkTypeProxy {
    if (this is InternalLinkTypeProxy) {
      return this as InternalLinkTypeProxy;
    }
    return null;
  }

  InternalLinkTypeRestorePurchases? get internalLinkTypeRestorePurchases {
    if (this is InternalLinkTypeRestorePurchases) {
      return this as InternalLinkTypeRestorePurchases;
    }
    return null;
  }

  InternalLinkTypeLanguagePack? get internalLinkTypeLanguagePack {
    if (this is InternalLinkTypeLanguagePack) {
      return this as InternalLinkTypeLanguagePack;
    }
    return null;
  }

  InternalLinkTypeUnsupportedProxy? get internalLinkTypeUnsupportedProxy {
    if (this is InternalLinkTypeUnsupportedProxy) {
      return this as InternalLinkTypeUnsupportedProxy;
    }
    return null;
  }

  InternalLinkTypeStickerSet? get internalLinkTypeStickerSet {
    if (this is InternalLinkTypeStickerSet) {
      return this as InternalLinkTypeStickerSet;
    }
    return null;
  }

  InternalLinkTypeActiveSessions? get internalLinkTypeActiveSessions {
    if (this is InternalLinkTypeActiveSessions) {
      return this as InternalLinkTypeActiveSessions;
    }
    return null;
  }

  InternalLinkTypeSettings? get internalLinkTypeSettings {
    if (this is InternalLinkTypeSettings) {
      return this as InternalLinkTypeSettings;
    }
    return null;
  }

  InternalLinkTypeMessage? get internalLinkTypeMessage {
    if (this is InternalLinkTypeMessage) {
      return this as InternalLinkTypeMessage;
    }
    return null;
  }

  InternalLinkTypePassportDataRequest? get internalLinkTypePassportDataRequest {
    if (this is InternalLinkTypePassportDataRequest) {
      return this as InternalLinkTypePassportDataRequest;
    }
    return null;
  }

  InternalLinkTypePublicChat? get internalLinkTypePublicChat {
    if (this is InternalLinkTypePublicChat) {
      return this as InternalLinkTypePublicChat;
    }
    return null;
  }

  InternalLinkTypeLanguageSettings? get internalLinkTypeLanguageSettings {
    if (this is InternalLinkTypeLanguageSettings) {
      return this as InternalLinkTypeLanguageSettings;
    }
    return null;
  }

  InternalLinkTypeBotAddToChannel? get internalLinkTypeBotAddToChannel {
    if (this is InternalLinkTypeBotAddToChannel) {
      return this as InternalLinkTypeBotAddToChannel;
    }
    return null;
  }

  InternalLinkTypePremiumFeatures? get internalLinkTypePremiumFeatures {
    if (this is InternalLinkTypePremiumFeatures) {
      return this as InternalLinkTypePremiumFeatures;
    }
    return null;
  }

  InternalLinkTypeBotStartInGroup? get internalLinkTypeBotStartInGroup {
    if (this is InternalLinkTypeBotStartInGroup) {
      return this as InternalLinkTypeBotStartInGroup;
    }
    return null;
  }

  InternalLinkTypeInvoice? get internalLinkTypeInvoice {
    if (this is InternalLinkTypeInvoice) {
      return this as InternalLinkTypeInvoice;
    }
    return null;
  }

  InternalLinkTypeInstantView? get internalLinkTypeInstantView {
    if (this is InternalLinkTypeInstantView) {
      return this as InternalLinkTypeInstantView;
    }
    return null;
  }

  InternalLinkTypeStory? get internalLinkTypeStory {
    if (this is InternalLinkTypeStory) {
      return this as InternalLinkTypeStory;
    }
    return null;
  }

  InternalLinkTypeVideoChat? get internalLinkTypeVideoChat {
    if (this is InternalLinkTypeVideoChat) {
      return this as InternalLinkTypeVideoChat;
    }
    return null;
  }

  InternalLinkTypeEditProfileSettings? get internalLinkTypeEditProfileSettings {
    if (this is InternalLinkTypeEditProfileSettings) {
      return this as InternalLinkTypeEditProfileSettings;
    }
    return null;
  }

  InternalLinkTypeDefaultMessageAutoDeleteTimerSettings?
      get internalLinkTypeDefaultMessageAutoDeleteTimerSettings {
    if (this is InternalLinkTypeDefaultMessageAutoDeleteTimerSettings) {
      return this as InternalLinkTypeDefaultMessageAutoDeleteTimerSettings;
    }
    return null;
  }

  InternalLinkTypePrivacyAndSecuritySettings?
      get internalLinkTypePrivacyAndSecuritySettings {
    if (this is InternalLinkTypePrivacyAndSecuritySettings) {
      return this as InternalLinkTypePrivacyAndSecuritySettings;
    }
    return null;
  }

  InternalLinkTypeWebApp? get internalLinkTypeWebApp {
    if (this is InternalLinkTypeWebApp) {
      return this as InternalLinkTypeWebApp;
    }
    return null;
  }

  InternalLinkTypeUnknownDeepLink? get internalLinkTypeUnknownDeepLink {
    if (this is InternalLinkTypeUnknownDeepLink) {
      return this as InternalLinkTypeUnknownDeepLink;
    }
    return null;
  }

  InternalLinkTypePhoneNumberConfirmation?
      get internalLinkTypePhoneNumberConfirmation {
    if (this is InternalLinkTypePhoneNumberConfirmation) {
      return this as InternalLinkTypePhoneNumberConfirmation;
    }
    return null;
  }

  InternalLinkTypeBotStart? get internalLinkTypeBotStart {
    if (this is InternalLinkTypeBotStart) {
      return this as InternalLinkTypeBotStart;
    }
    return null;
  }

  InternalLinkTypeGame? get internalLinkTypeGame {
    if (this is InternalLinkTypeGame) {
      return this as InternalLinkTypeGame;
    }
    return null;
  }

  InternalLinkTypeAttachmentMenuBot? get internalLinkTypeAttachmentMenuBot {
    if (this is InternalLinkTypeAttachmentMenuBot) {
      return this as InternalLinkTypeAttachmentMenuBot;
    }
    return null;
  }

  InternalLinkTypeTheme? get internalLinkTypeTheme {
    if (this is InternalLinkTypeTheme) {
      return this as InternalLinkTypeTheme;
    }
    return null;
  }

  InternalLinkTypeBackground? get internalLinkTypeBackground {
    if (this is InternalLinkTypeBackground) {
      return this as InternalLinkTypeBackground;
    }
    return null;
  }

  InternalLinkTypeThemeSettings? get internalLinkTypeThemeSettings {
    if (this is InternalLinkTypeThemeSettings) {
      return this as InternalLinkTypeThemeSettings;
    }
    return null;
  }

  InternalLinkTypeAuthenticationCode? get internalLinkTypeAuthenticationCode {
    if (this is InternalLinkTypeAuthenticationCode) {
      return this as InternalLinkTypeAuthenticationCode;
    }
    return null;
  }

  InternalLinkTypeChatFolderInvite? get internalLinkTypeChatFolderInvite {
    if (this is InternalLinkTypeChatFolderInvite) {
      return this as InternalLinkTypeChatFolderInvite;
    }
    return null;
  }

  InternalLinkTypeUserToken? get internalLinkTypeUserToken {
    if (this is InternalLinkTypeUserToken) {
      return this as InternalLinkTypeUserToken;
    }
    return null;
  }

  InternalLinkTypeChatFolderSettings? get internalLinkTypeChatFolderSettings {
    if (this is InternalLinkTypeChatFolderSettings) {
      return this as InternalLinkTypeChatFolderSettings;
    }
    return null;
  }

  InternalLinkTypeMessageDraft? get internalLinkTypeMessageDraft {
    if (this is InternalLinkTypeMessageDraft) {
      return this as InternalLinkTypeMessageDraft;
    }
    return null;
  }

  InternalLinkTypeChatInvite? get internalLinkTypeChatInvite {
    if (this is InternalLinkTypeChatInvite) {
      return this as InternalLinkTypeChatInvite;
    }
    return null;
  }

  InternalLinkTypeQrCodeAuthentication?
      get internalLinkTypeQrCodeAuthentication {
    if (this is InternalLinkTypeQrCodeAuthentication) {
      return this as InternalLinkTypeQrCodeAuthentication;
    }
    return null;
  }

  InternalLinkTypeUserPhoneNumber? get internalLinkTypeUserPhoneNumber {
    if (this is InternalLinkTypeUserPhoneNumber) {
      return this as InternalLinkTypeUserPhoneNumber;
    }
    return null;
  }
}

extension StoryContentExt on StoryContent {
  StoryContentUnsupported? get storyContentUnsupported {
    if (this is StoryContentUnsupported) {
      return this as StoryContentUnsupported;
    }
    return null;
  }

  StoryContentPhoto? get storyContentPhoto {
    if (this is StoryContentPhoto) {
      return this as StoryContentPhoto;
    }
    return null;
  }

  StoryContentVideo? get storyContentVideo {
    if (this is StoryContentVideo) {
      return this as StoryContentVideo;
    }
    return null;
  }
}

extension InputStoryContentExt on InputStoryContent {
  InputStoryContentPhoto? get inputStoryContentPhoto {
    if (this is InputStoryContentPhoto) {
      return this as InputStoryContentPhoto;
    }
    return null;
  }

  InputStoryContentVideo? get inputStoryContentVideo {
    if (this is InputStoryContentVideo) {
      return this as InputStoryContentVideo;
    }
    return null;
  }
}

extension StoryListExt on StoryList {
  StoryListArchive? get storyListArchive {
    if (this is StoryListArchive) {
      return this as StoryListArchive;
    }
    return null;
  }

  StoryListMain? get storyListMain {
    if (this is StoryListMain) {
      return this as StoryListMain;
    }
    return null;
  }
}

extension FileTypeExt on FileType {
  FileTypeVideo? get fileTypeVideo {
    if (this is FileTypeVideo) {
      return this as FileTypeVideo;
    }
    return null;
  }

  FileTypePhotoStory? get fileTypePhotoStory {
    if (this is FileTypePhotoStory) {
      return this as FileTypePhotoStory;
    }
    return null;
  }

  FileTypeSecure? get fileTypeSecure {
    if (this is FileTypeSecure) {
      return this as FileTypeSecure;
    }
    return null;
  }

  FileTypeNotificationSound? get fileTypeNotificationSound {
    if (this is FileTypeNotificationSound) {
      return this as FileTypeNotificationSound;
    }
    return null;
  }

  FileTypeWallpaper? get fileTypeWallpaper {
    if (this is FileTypeWallpaper) {
      return this as FileTypeWallpaper;
    }
    return null;
  }

  FileTypeProfilePhoto? get fileTypeProfilePhoto {
    if (this is FileTypeProfilePhoto) {
      return this as FileTypeProfilePhoto;
    }
    return null;
  }

  FileTypeSecretThumbnail? get fileTypeSecretThumbnail {
    if (this is FileTypeSecretThumbnail) {
      return this as FileTypeSecretThumbnail;
    }
    return null;
  }

  FileTypeVoiceNote? get fileTypeVoiceNote {
    if (this is FileTypeVoiceNote) {
      return this as FileTypeVoiceNote;
    }
    return null;
  }

  FileTypeVideoNote? get fileTypeVideoNote {
    if (this is FileTypeVideoNote) {
      return this as FileTypeVideoNote;
    }
    return null;
  }

  FileTypeSticker? get fileTypeSticker {
    if (this is FileTypeSticker) {
      return this as FileTypeSticker;
    }
    return null;
  }

  FileTypeNone? get fileTypeNone {
    if (this is FileTypeNone) {
      return this as FileTypeNone;
    }
    return null;
  }

  FileTypeSecret? get fileTypeSecret {
    if (this is FileTypeSecret) {
      return this as FileTypeSecret;
    }
    return null;
  }

  FileTypeDocument? get fileTypeDocument {
    if (this is FileTypeDocument) {
      return this as FileTypeDocument;
    }
    return null;
  }

  FileTypeThumbnail? get fileTypeThumbnail {
    if (this is FileTypeThumbnail) {
      return this as FileTypeThumbnail;
    }
    return null;
  }

  FileTypeUnknown? get fileTypeUnknown {
    if (this is FileTypeUnknown) {
      return this as FileTypeUnknown;
    }
    return null;
  }

  FileTypeAnimation? get fileTypeAnimation {
    if (this is FileTypeAnimation) {
      return this as FileTypeAnimation;
    }
    return null;
  }

  FileTypeAudio? get fileTypeAudio {
    if (this is FileTypeAudio) {
      return this as FileTypeAudio;
    }
    return null;
  }

  FileTypePhoto? get fileTypePhoto {
    if (this is FileTypePhoto) {
      return this as FileTypePhoto;
    }
    return null;
  }

  FileTypeVideoStory? get fileTypeVideoStory {
    if (this is FileTypeVideoStory) {
      return this as FileTypeVideoStory;
    }
    return null;
  }
}

extension NetworkTypeExt on NetworkType {
  NetworkTypeMobile? get networkTypeMobile {
    if (this is NetworkTypeMobile) {
      return this as NetworkTypeMobile;
    }
    return null;
  }

  NetworkTypeNone? get networkTypeNone {
    if (this is NetworkTypeNone) {
      return this as NetworkTypeNone;
    }
    return null;
  }

  NetworkTypeMobileRoaming? get networkTypeMobileRoaming {
    if (this is NetworkTypeMobileRoaming) {
      return this as NetworkTypeMobileRoaming;
    }
    return null;
  }

  NetworkTypeWiFi? get networkTypeWiFi {
    if (this is NetworkTypeWiFi) {
      return this as NetworkTypeWiFi;
    }
    return null;
  }

  NetworkTypeOther? get networkTypeOther {
    if (this is NetworkTypeOther) {
      return this as NetworkTypeOther;
    }
    return null;
  }
}

extension NetworkStatisticsEntryExt on NetworkStatisticsEntry {
  NetworkStatisticsEntryFile? get networkStatisticsEntryFile {
    if (this is NetworkStatisticsEntryFile) {
      return this as NetworkStatisticsEntryFile;
    }
    return null;
  }

  NetworkStatisticsEntryCall? get networkStatisticsEntryCall {
    if (this is NetworkStatisticsEntryCall) {
      return this as NetworkStatisticsEntryCall;
    }
    return null;
  }
}

extension AutosaveSettingsScopeExt on AutosaveSettingsScope {
  AutosaveSettingsScopeChannelChats? get autosaveSettingsScopeChannelChats {
    if (this is AutosaveSettingsScopeChannelChats) {
      return this as AutosaveSettingsScopeChannelChats;
    }
    return null;
  }

  AutosaveSettingsScopeGroupChats? get autosaveSettingsScopeGroupChats {
    if (this is AutosaveSettingsScopeGroupChats) {
      return this as AutosaveSettingsScopeGroupChats;
    }
    return null;
  }

  AutosaveSettingsScopePrivateChats? get autosaveSettingsScopePrivateChats {
    if (this is AutosaveSettingsScopePrivateChats) {
      return this as AutosaveSettingsScopePrivateChats;
    }
    return null;
  }

  AutosaveSettingsScopeChat? get autosaveSettingsScopeChat {
    if (this is AutosaveSettingsScopeChat) {
      return this as AutosaveSettingsScopeChat;
    }
    return null;
  }
}

extension ConnectionStateExt on ConnectionState {
  ConnectionStateReady? get connectionStateReady {
    if (this is ConnectionStateReady) {
      return this as ConnectionStateReady;
    }
    return null;
  }

  ConnectionStateUpdating? get connectionStateUpdating {
    if (this is ConnectionStateUpdating) {
      return this as ConnectionStateUpdating;
    }
    return null;
  }

  ConnectionStateWaitingForNetwork? get connectionStateWaitingForNetwork {
    if (this is ConnectionStateWaitingForNetwork) {
      return this as ConnectionStateWaitingForNetwork;
    }
    return null;
  }

  ConnectionStateConnecting? get connectionStateConnecting {
    if (this is ConnectionStateConnecting) {
      return this as ConnectionStateConnecting;
    }
    return null;
  }

  ConnectionStateConnectingToProxy? get connectionStateConnectingToProxy {
    if (this is ConnectionStateConnectingToProxy) {
      return this as ConnectionStateConnectingToProxy;
    }
    return null;
  }
}

extension TopChatCategoryExt on TopChatCategory {
  TopChatCategoryChannels? get topChatCategoryChannels {
    if (this is TopChatCategoryChannels) {
      return this as TopChatCategoryChannels;
    }
    return null;
  }

  TopChatCategoryUsers? get topChatCategoryUsers {
    if (this is TopChatCategoryUsers) {
      return this as TopChatCategoryUsers;
    }
    return null;
  }

  TopChatCategoryForwardChats? get topChatCategoryForwardChats {
    if (this is TopChatCategoryForwardChats) {
      return this as TopChatCategoryForwardChats;
    }
    return null;
  }

  TopChatCategoryGroups? get topChatCategoryGroups {
    if (this is TopChatCategoryGroups) {
      return this as TopChatCategoryGroups;
    }
    return null;
  }

  TopChatCategoryCalls? get topChatCategoryCalls {
    if (this is TopChatCategoryCalls) {
      return this as TopChatCategoryCalls;
    }
    return null;
  }

  TopChatCategoryBots? get topChatCategoryBots {
    if (this is TopChatCategoryBots) {
      return this as TopChatCategoryBots;
    }
    return null;
  }

  TopChatCategoryInlineBots? get topChatCategoryInlineBots {
    if (this is TopChatCategoryInlineBots) {
      return this as TopChatCategoryInlineBots;
    }
    return null;
  }
}

extension TMeUrlTypeExt on TMeUrlType {
  TMeUrlTypeSupergroup? get tMeUrlTypeSupergroup {
    if (this is TMeUrlTypeSupergroup) {
      return this as TMeUrlTypeSupergroup;
    }
    return null;
  }

  TMeUrlTypeChatInvite? get tMeUrlTypeChatInvite {
    if (this is TMeUrlTypeChatInvite) {
      return this as TMeUrlTypeChatInvite;
    }
    return null;
  }

  TMeUrlTypeUser? get tMeUrlTypeUser {
    if (this is TMeUrlTypeUser) {
      return this as TMeUrlTypeUser;
    }
    return null;
  }

  TMeUrlTypeStickerSet? get tMeUrlTypeStickerSet {
    if (this is TMeUrlTypeStickerSet) {
      return this as TMeUrlTypeStickerSet;
    }
    return null;
  }
}

extension SuggestedActionExt on SuggestedAction {
  SuggestedActionCheckPhoneNumber? get suggestedActionCheckPhoneNumber {
    if (this is SuggestedActionCheckPhoneNumber) {
      return this as SuggestedActionCheckPhoneNumber;
    }
    return null;
  }

  SuggestedActionUpgradePremium? get suggestedActionUpgradePremium {
    if (this is SuggestedActionUpgradePremium) {
      return this as SuggestedActionUpgradePremium;
    }
    return null;
  }

  SuggestedActionSubscribeToAnnualPremium?
      get suggestedActionSubscribeToAnnualPremium {
    if (this is SuggestedActionSubscribeToAnnualPremium) {
      return this as SuggestedActionSubscribeToAnnualPremium;
    }
    return null;
  }

  SuggestedActionCheckPassword? get suggestedActionCheckPassword {
    if (this is SuggestedActionCheckPassword) {
      return this as SuggestedActionCheckPassword;
    }
    return null;
  }

  SuggestedActionSetPassword? get suggestedActionSetPassword {
    if (this is SuggestedActionSetPassword) {
      return this as SuggestedActionSetPassword;
    }
    return null;
  }

  SuggestedActionConvertToBroadcastGroup?
      get suggestedActionConvertToBroadcastGroup {
    if (this is SuggestedActionConvertToBroadcastGroup) {
      return this as SuggestedActionConvertToBroadcastGroup;
    }
    return null;
  }

  SuggestedActionRestorePremium? get suggestedActionRestorePremium {
    if (this is SuggestedActionRestorePremium) {
      return this as SuggestedActionRestorePremium;
    }
    return null;
  }

  SuggestedActionEnableArchiveAndMuteNewChats?
      get suggestedActionEnableArchiveAndMuteNewChats {
    if (this is SuggestedActionEnableArchiveAndMuteNewChats) {
      return this as SuggestedActionEnableArchiveAndMuteNewChats;
    }
    return null;
  }

  SuggestedActionViewChecksHint? get suggestedActionViewChecksHint {
    if (this is SuggestedActionViewChecksHint) {
      return this as SuggestedActionViewChecksHint;
    }
    return null;
  }
}

extension TextParseModeExt on TextParseMode {
  TextParseModeHTML? get textParseModeHTML {
    if (this is TextParseModeHTML) {
      return this as TextParseModeHTML;
    }
    return null;
  }

  TextParseModeMarkdown? get textParseModeMarkdown {
    if (this is TextParseModeMarkdown) {
      return this as TextParseModeMarkdown;
    }
    return null;
  }
}

extension ProxyTypeExt on ProxyType {
  ProxyTypeMtproto? get proxyTypeMtproto {
    if (this is ProxyTypeMtproto) {
      return this as ProxyTypeMtproto;
    }
    return null;
  }

  ProxyTypeSocks5? get proxyTypeSocks5 {
    if (this is ProxyTypeSocks5) {
      return this as ProxyTypeSocks5;
    }
    return null;
  }

  ProxyTypeHttp? get proxyTypeHttp {
    if (this is ProxyTypeHttp) {
      return this as ProxyTypeHttp;
    }
    return null;
  }
}

extension StatisticalGraphExt on StatisticalGraph {
  StatisticalGraphData? get statisticalGraphData {
    if (this is StatisticalGraphData) {
      return this as StatisticalGraphData;
    }
    return null;
  }

  StatisticalGraphAsync? get statisticalGraphAsync {
    if (this is StatisticalGraphAsync) {
      return this as StatisticalGraphAsync;
    }
    return null;
  }

  StatisticalGraphError? get statisticalGraphError {
    if (this is StatisticalGraphError) {
      return this as StatisticalGraphError;
    }
    return null;
  }
}

extension ChatStatisticsExt on ChatStatistics {
  ChatStatisticsChannel? get chatStatisticsChannel {
    if (this is ChatStatisticsChannel) {
      return this as ChatStatisticsChannel;
    }
    return null;
  }

  ChatStatisticsSupergroup? get chatStatisticsSupergroup {
    if (this is ChatStatisticsSupergroup) {
      return this as ChatStatisticsSupergroup;
    }
    return null;
  }
}

extension VectorPathCommandExt on VectorPathCommand {
  VectorPathCommandCubicBezierCurve? get vectorPathCommandCubicBezierCurve {
    if (this is VectorPathCommandCubicBezierCurve) {
      return this as VectorPathCommandCubicBezierCurve;
    }
    return null;
  }

  VectorPathCommandLine? get vectorPathCommandLine {
    if (this is VectorPathCommandLine) {
      return this as VectorPathCommandLine;
    }
    return null;
  }
}

extension BotCommandScopeExt on BotCommandScope {
  BotCommandScopeChat? get botCommandScopeChat {
    if (this is BotCommandScopeChat) {
      return this as BotCommandScopeChat;
    }
    return null;
  }

  BotCommandScopeChatMember? get botCommandScopeChatMember {
    if (this is BotCommandScopeChatMember) {
      return this as BotCommandScopeChatMember;
    }
    return null;
  }

  BotCommandScopeChatAdministrators? get botCommandScopeChatAdministrators {
    if (this is BotCommandScopeChatAdministrators) {
      return this as BotCommandScopeChatAdministrators;
    }
    return null;
  }

  BotCommandScopeAllPrivateChats? get botCommandScopeAllPrivateChats {
    if (this is BotCommandScopeAllPrivateChats) {
      return this as BotCommandScopeAllPrivateChats;
    }
    return null;
  }

  BotCommandScopeAllGroupChats? get botCommandScopeAllGroupChats {
    if (this is BotCommandScopeAllGroupChats) {
      return this as BotCommandScopeAllGroupChats;
    }
    return null;
  }

  BotCommandScopeAllChatAdministrators?
      get botCommandScopeAllChatAdministrators {
    if (this is BotCommandScopeAllChatAdministrators) {
      return this as BotCommandScopeAllChatAdministrators;
    }
    return null;
  }

  BotCommandScopeDefault? get botCommandScopeDefault {
    if (this is BotCommandScopeDefault) {
      return this as BotCommandScopeDefault;
    }
    return null;
  }
}

extension UpdateExt on Update {
  UpdateChatReadOutbox? get updateChatReadOutbox {
    if (this is UpdateChatReadOutbox) {
      return this as UpdateChatReadOutbox;
    }
    return null;
  }

  UpdateChatReadInbox? get updateChatReadInbox {
    if (this is UpdateChatReadInbox) {
      return this as UpdateChatReadInbox;
    }
    return null;
  }

  UpdateConnectionState? get updateConnectionState {
    if (this is UpdateConnectionState) {
      return this as UpdateConnectionState;
    }
    return null;
  }

  UpdateUsersNearby? get updateUsersNearby {
    if (this is UpdateUsersNearby) {
      return this as UpdateUsersNearby;
    }
    return null;
  }

  UpdateMessageInteractionInfo? get updateMessageInteractionInfo {
    if (this is UpdateMessageInteractionInfo) {
      return this as UpdateMessageInteractionInfo;
    }
    return null;
  }

  UpdateChatFolders? get updateChatFolders {
    if (this is UpdateChatFolders) {
      return this as UpdateChatFolders;
    }
    return null;
  }

  UpdateStoryListChatCount? get updateStoryListChatCount {
    if (this is UpdateStoryListChatCount) {
      return this as UpdateStoryListChatCount;
    }
    return null;
  }

  UpdateFileAddedToDownloads? get updateFileAddedToDownloads {
    if (this is UpdateFileAddedToDownloads) {
      return this as UpdateFileAddedToDownloads;
    }
    return null;
  }

  UpdateServiceNotification? get updateServiceNotification {
    if (this is UpdateServiceNotification) {
      return this as UpdateServiceNotification;
    }
    return null;
  }

  UpdatePoll? get updatePoll {
    if (this is UpdatePoll) {
      return this as UpdatePoll;
    }
    return null;
  }

  UpdateMessageSendAcknowledged? get updateMessageSendAcknowledged {
    if (this is UpdateMessageSendAcknowledged) {
      return this as UpdateMessageSendAcknowledged;
    }
    return null;
  }

  UpdateChatIsTranslatable? get updateChatIsTranslatable {
    if (this is UpdateChatIsTranslatable) {
      return this as UpdateChatIsTranslatable;
    }
    return null;
  }

  UpdateChatVideoChat? get updateChatVideoChat {
    if (this is UpdateChatVideoChat) {
      return this as UpdateChatVideoChat;
    }
    return null;
  }

  UpdateAttachmentMenuBots? get updateAttachmentMenuBots {
    if (this is UpdateAttachmentMenuBots) {
      return this as UpdateAttachmentMenuBots;
    }
    return null;
  }

  UpdateChatTitle? get updateChatTitle {
    if (this is UpdateChatTitle) {
      return this as UpdateChatTitle;
    }
    return null;
  }

  UpdateFavoriteStickers? get updateFavoriteStickers {
    if (this is UpdateFavoriteStickers) {
      return this as UpdateFavoriteStickers;
    }
    return null;
  }

  UpdateOption? get updateOption {
    if (this is UpdateOption) {
      return this as UpdateOption;
    }
    return null;
  }

  UpdateUnreadChatCount? get updateUnreadChatCount {
    if (this is UpdateUnreadChatCount) {
      return this as UpdateUnreadChatCount;
    }
    return null;
  }

  UpdateNewCallSignalingData? get updateNewCallSignalingData {
    if (this is UpdateNewCallSignalingData) {
      return this as UpdateNewCallSignalingData;
    }
    return null;
  }

  UpdateUserStatus? get updateUserStatus {
    if (this is UpdateUserStatus) {
      return this as UpdateUserStatus;
    }
    return null;
  }

  UpdateChatActionBar? get updateChatActionBar {
    if (this is UpdateChatActionBar) {
      return this as UpdateChatActionBar;
    }
    return null;
  }

  UpdateForumTopicInfo? get updateForumTopicInfo {
    if (this is UpdateForumTopicInfo) {
      return this as UpdateForumTopicInfo;
    }
    return null;
  }

  UpdateGroupCallParticipant? get updateGroupCallParticipant {
    if (this is UpdateGroupCallParticipant) {
      return this as UpdateGroupCallParticipant;
    }
    return null;
  }

  UpdateFileGenerationStart? get updateFileGenerationStart {
    if (this is UpdateFileGenerationStart) {
      return this as UpdateFileGenerationStart;
    }
    return null;
  }

  UpdateWebAppMessageSent? get updateWebAppMessageSent {
    if (this is UpdateWebAppMessageSent) {
      return this as UpdateWebAppMessageSent;
    }
    return null;
  }

  UpdateNewChat? get updateNewChat {
    if (this is UpdateNewChat) {
      return this as UpdateNewChat;
    }
    return null;
  }

  UpdateStickerSet? get updateStickerSet {
    if (this is UpdateStickerSet) {
      return this as UpdateStickerSet;
    }
    return null;
  }

  UpdateChatIsMarkedAsUnread? get updateChatIsMarkedAsUnread {
    if (this is UpdateChatIsMarkedAsUnread) {
      return this as UpdateChatIsMarkedAsUnread;
    }
    return null;
  }

  UpdateCall? get updateCall {
    if (this is UpdateCall) {
      return this as UpdateCall;
    }
    return null;
  }

  UpdateChatAction? get updateChatAction {
    if (this is UpdateChatAction) {
      return this as UpdateChatAction;
    }
    return null;
  }

  UpdateLanguagePackStrings? get updateLanguagePackStrings {
    if (this is UpdateLanguagePackStrings) {
      return this as UpdateLanguagePackStrings;
    }
    return null;
  }

  UpdateChatLastMessage? get updateChatLastMessage {
    if (this is UpdateChatLastMessage) {
      return this as UpdateChatLastMessage;
    }
    return null;
  }

  UpdateAutosaveSettings? get updateAutosaveSettings {
    if (this is UpdateAutosaveSettings) {
      return this as UpdateAutosaveSettings;
    }
    return null;
  }

  UpdateNewCustomQuery? get updateNewCustomQuery {
    if (this is UpdateNewCustomQuery) {
      return this as UpdateNewCustomQuery;
    }
    return null;
  }

  UpdateFileGenerationStop? get updateFileGenerationStop {
    if (this is UpdateFileGenerationStop) {
      return this as UpdateFileGenerationStop;
    }
    return null;
  }

  UpdateNewInlineCallbackQuery? get updateNewInlineCallbackQuery {
    if (this is UpdateNewInlineCallbackQuery) {
      return this as UpdateNewInlineCallbackQuery;
    }
    return null;
  }

  UpdateChatPermissions? get updateChatPermissions {
    if (this is UpdateChatPermissions) {
      return this as UpdateChatPermissions;
    }
    return null;
  }

  UpdateNotificationGroup? get updateNotificationGroup {
    if (this is UpdateNotificationGroup) {
      return this as UpdateNotificationGroup;
    }
    return null;
  }

  UpdateChatReplyMarkup? get updateChatReplyMarkup {
    if (this is UpdateChatReplyMarkup) {
      return this as UpdateChatReplyMarkup;
    }
    return null;
  }

  UpdateMessageLiveLocationViewed? get updateMessageLiveLocationViewed {
    if (this is UpdateMessageLiveLocationViewed) {
      return this as UpdateMessageLiveLocationViewed;
    }
    return null;
  }

  UpdateNewPreCheckoutQuery? get updateNewPreCheckoutQuery {
    if (this is UpdateNewPreCheckoutQuery) {
      return this as UpdateNewPreCheckoutQuery;
    }
    return null;
  }

  UpdateChatActiveStories? get updateChatActiveStories {
    if (this is UpdateChatActiveStories) {
      return this as UpdateChatActiveStories;
    }
    return null;
  }

  UpdateSavedNotificationSounds? get updateSavedNotificationSounds {
    if (this is UpdateSavedNotificationSounds) {
      return this as UpdateSavedNotificationSounds;
    }
    return null;
  }

  UpdateChatPosition? get updateChatPosition {
    if (this is UpdateChatPosition) {
      return this as UpdateChatPosition;
    }
    return null;
  }

  UpdateChatHasProtectedContent? get updateChatHasProtectedContent {
    if (this is UpdateChatHasProtectedContent) {
      return this as UpdateChatHasProtectedContent;
    }
    return null;
  }

  UpdateFileDownloads? get updateFileDownloads {
    if (this is UpdateFileDownloads) {
      return this as UpdateFileDownloads;
    }
    return null;
  }

  UpdateAnimationSearchParameters? get updateAnimationSearchParameters {
    if (this is UpdateAnimationSearchParameters) {
      return this as UpdateAnimationSearchParameters;
    }
    return null;
  }

  UpdateChatUnreadReactionCount? get updateChatUnreadReactionCount {
    if (this is UpdateChatUnreadReactionCount) {
      return this as UpdateChatUnreadReactionCount;
    }
    return null;
  }

  UpdateChatDefaultDisableNotification?
      get updateChatDefaultDisableNotification {
    if (this is UpdateChatDefaultDisableNotification) {
      return this as UpdateChatDefaultDisableNotification;
    }
    return null;
  }

  UpdateActiveNotifications? get updateActiveNotifications {
    if (this is UpdateActiveNotifications) {
      return this as UpdateActiveNotifications;
    }
    return null;
  }

  UpdateBasicGroupFullInfo? get updateBasicGroupFullInfo {
    if (this is UpdateBasicGroupFullInfo) {
      return this as UpdateBasicGroupFullInfo;
    }
    return null;
  }

  UpdateRecentStickers? get updateRecentStickers {
    if (this is UpdateRecentStickers) {
      return this as UpdateRecentStickers;
    }
    return null;
  }

  UpdateChatMessageSender? get updateChatMessageSender {
    if (this is UpdateChatMessageSender) {
      return this as UpdateChatMessageSender;
    }
    return null;
  }

  UpdateUserPrivacySettingRules? get updateUserPrivacySettingRules {
    if (this is UpdateUserPrivacySettingRules) {
      return this as UpdateUserPrivacySettingRules;
    }
    return null;
  }

  UpdateFileRemovedFromDownloads? get updateFileRemovedFromDownloads {
    if (this is UpdateFileRemovedFromDownloads) {
      return this as UpdateFileRemovedFromDownloads;
    }
    return null;
  }

  UpdateMessageEdited? get updateMessageEdited {
    if (this is UpdateMessageEdited) {
      return this as UpdateMessageEdited;
    }
    return null;
  }

  UpdateUnreadMessageCount? get updateUnreadMessageCount {
    if (this is UpdateUnreadMessageCount) {
      return this as UpdateUnreadMessageCount;
    }
    return null;
  }

  UpdateSupergroup? get updateSupergroup {
    if (this is UpdateSupergroup) {
      return this as UpdateSupergroup;
    }
    return null;
  }

  UpdateGroupCall? get updateGroupCall {
    if (this is UpdateGroupCall) {
      return this as UpdateGroupCall;
    }
    return null;
  }

  UpdateScopeNotificationSettings? get updateScopeNotificationSettings {
    if (this is UpdateScopeNotificationSettings) {
      return this as UpdateScopeNotificationSettings;
    }
    return null;
  }

  UpdateNewChatJoinRequest? get updateNewChatJoinRequest {
    if (this is UpdateNewChatJoinRequest) {
      return this as UpdateNewChatJoinRequest;
    }
    return null;
  }

  UpdateMessageSendFailed? get updateMessageSendFailed {
    if (this is UpdateMessageSendFailed) {
      return this as UpdateMessageSendFailed;
    }
    return null;
  }

  UpdateSavedAnimations? get updateSavedAnimations {
    if (this is UpdateSavedAnimations) {
      return this as UpdateSavedAnimations;
    }
    return null;
  }

  UpdateChatUnreadMentionCount? get updateChatUnreadMentionCount {
    if (this is UpdateChatUnreadMentionCount) {
      return this as UpdateChatUnreadMentionCount;
    }
    return null;
  }

  UpdateChatHasScheduledMessages? get updateChatHasScheduledMessages {
    if (this is UpdateChatHasScheduledMessages) {
      return this as UpdateChatHasScheduledMessages;
    }
    return null;
  }

  UpdateSupergroupFullInfo? get updateSupergroupFullInfo {
    if (this is UpdateSupergroupFullInfo) {
      return this as UpdateSupergroupFullInfo;
    }
    return null;
  }

  UpdateMessageSendSucceeded? get updateMessageSendSucceeded {
    if (this is UpdateMessageSendSucceeded) {
      return this as UpdateMessageSendSucceeded;
    }
    return null;
  }

  UpdateBasicGroup? get updateBasicGroup {
    if (this is UpdateBasicGroup) {
      return this as UpdateBasicGroup;
    }
    return null;
  }

  UpdateNewCallbackQuery? get updateNewCallbackQuery {
    if (this is UpdateNewCallbackQuery) {
      return this as UpdateNewCallbackQuery;
    }
    return null;
  }

  UpdateDeleteMessages? get updateDeleteMessages {
    if (this is UpdateDeleteMessages) {
      return this as UpdateDeleteMessages;
    }
    return null;
  }

  UpdateTermsOfService? get updateTermsOfService {
    if (this is UpdateTermsOfService) {
      return this as UpdateTermsOfService;
    }
    return null;
  }

  UpdateStory? get updateStory {
    if (this is UpdateStory) {
      return this as UpdateStory;
    }
    return null;
  }

  UpdateUserFullInfo? get updateUserFullInfo {
    if (this is UpdateUserFullInfo) {
      return this as UpdateUserFullInfo;
    }
    return null;
  }

  UpdateDiceEmojis? get updateDiceEmojis {
    if (this is UpdateDiceEmojis) {
      return this as UpdateDiceEmojis;
    }
    return null;
  }

  UpdateChatMember? get updateChatMember {
    if (this is UpdateChatMember) {
      return this as UpdateChatMember;
    }
    return null;
  }

  UpdateChatBackground? get updateChatBackground {
    if (this is UpdateChatBackground) {
      return this as UpdateChatBackground;
    }
    return null;
  }

  UpdatePollAnswer? get updatePollAnswer {
    if (this is UpdatePollAnswer) {
      return this as UpdatePollAnswer;
    }
    return null;
  }

  UpdateMessageMentionRead? get updateMessageMentionRead {
    if (this is UpdateMessageMentionRead) {
      return this as UpdateMessageMentionRead;
    }
    return null;
  }

  UpdateChatDraftMessage? get updateChatDraftMessage {
    if (this is UpdateChatDraftMessage) {
      return this as UpdateChatDraftMessage;
    }
    return null;
  }

  UpdateChatMessageAutoDeleteTime? get updateChatMessageAutoDeleteTime {
    if (this is UpdateChatMessageAutoDeleteTime) {
      return this as UpdateChatMessageAutoDeleteTime;
    }
    return null;
  }

  UpdateDefaultReactionType? get updateDefaultReactionType {
    if (this is UpdateDefaultReactionType) {
      return this as UpdateDefaultReactionType;
    }
    return null;
  }

  UpdateChatTheme? get updateChatTheme {
    if (this is UpdateChatTheme) {
      return this as UpdateChatTheme;
    }
    return null;
  }

  UpdateChatThemes? get updateChatThemes {
    if (this is UpdateChatThemes) {
      return this as UpdateChatThemes;
    }
    return null;
  }

  UpdateMessageContent? get updateMessageContent {
    if (this is UpdateMessageContent) {
      return this as UpdateMessageContent;
    }
    return null;
  }

  UpdateChatAvailableReactions? get updateChatAvailableReactions {
    if (this is UpdateChatAvailableReactions) {
      return this as UpdateChatAvailableReactions;
    }
    return null;
  }

  UpdateChatPendingJoinRequests? get updateChatPendingJoinRequests {
    if (this is UpdateChatPendingJoinRequests) {
      return this as UpdateChatPendingJoinRequests;
    }
    return null;
  }

  UpdateSecretChat? get updateSecretChat {
    if (this is UpdateSecretChat) {
      return this as UpdateSecretChat;
    }
    return null;
  }

  UpdateNewInlineQuery? get updateNewInlineQuery {
    if (this is UpdateNewInlineQuery) {
      return this as UpdateNewInlineQuery;
    }
    return null;
  }

  UpdateChatPhoto? get updateChatPhoto {
    if (this is UpdateChatPhoto) {
      return this as UpdateChatPhoto;
    }
    return null;
  }

  UpdateSuggestedActions? get updateSuggestedActions {
    if (this is UpdateSuggestedActions) {
      return this as UpdateSuggestedActions;
    }
    return null;
  }

  UpdateTrendingStickerSets? get updateTrendingStickerSets {
    if (this is UpdateTrendingStickerSets) {
      return this as UpdateTrendingStickerSets;
    }
    return null;
  }

  UpdateChatOnlineMemberCount? get updateChatOnlineMemberCount {
    if (this is UpdateChatOnlineMemberCount) {
      return this as UpdateChatOnlineMemberCount;
    }
    return null;
  }

  UpdateAuthorizationState? get updateAuthorizationState {
    if (this is UpdateAuthorizationState) {
      return this as UpdateAuthorizationState;
    }
    return null;
  }

  UpdateMessageUnreadReactions? get updateMessageUnreadReactions {
    if (this is UpdateMessageUnreadReactions) {
      return this as UpdateMessageUnreadReactions;
    }
    return null;
  }

  UpdateChatIsBlocked? get updateChatIsBlocked {
    if (this is UpdateChatIsBlocked) {
      return this as UpdateChatIsBlocked;
    }
    return null;
  }

  UpdateChatNotificationSettings? get updateChatNotificationSettings {
    if (this is UpdateChatNotificationSettings) {
      return this as UpdateChatNotificationSettings;
    }
    return null;
  }

  UpdateSelectedBackground? get updateSelectedBackground {
    if (this is UpdateSelectedBackground) {
      return this as UpdateSelectedBackground;
    }
    return null;
  }

  UpdateNewMessage? get updateNewMessage {
    if (this is UpdateNewMessage) {
      return this as UpdateNewMessage;
    }
    return null;
  }

  UpdateUser? get updateUser {
    if (this is UpdateUser) {
      return this as UpdateUser;
    }
    return null;
  }

  UpdateAddChatMembersPrivacyForbidden?
      get updateAddChatMembersPrivacyForbidden {
    if (this is UpdateAddChatMembersPrivacyForbidden) {
      return this as UpdateAddChatMembersPrivacyForbidden;
    }
    return null;
  }

  UpdateInstalledStickerSets? get updateInstalledStickerSets {
    if (this is UpdateInstalledStickerSets) {
      return this as UpdateInstalledStickerSets;
    }
    return null;
  }

  UpdateFileDownload? get updateFileDownload {
    if (this is UpdateFileDownload) {
      return this as UpdateFileDownload;
    }
    return null;
  }

  UpdateHavePendingNotifications? get updateHavePendingNotifications {
    if (this is UpdateHavePendingNotifications) {
      return this as UpdateHavePendingNotifications;
    }
    return null;
  }

  UpdateNotification? get updateNotification {
    if (this is UpdateNotification) {
      return this as UpdateNotification;
    }
    return null;
  }

  UpdateNewCustomEvent? get updateNewCustomEvent {
    if (this is UpdateNewCustomEvent) {
      return this as UpdateNewCustomEvent;
    }
    return null;
  }

  UpdateNewShippingQuery? get updateNewShippingQuery {
    if (this is UpdateNewShippingQuery) {
      return this as UpdateNewShippingQuery;
    }
    return null;
  }

  UpdateMessageIsPinned? get updateMessageIsPinned {
    if (this is UpdateMessageIsPinned) {
      return this as UpdateMessageIsPinned;
    }
    return null;
  }

  UpdateActiveEmojiReactions? get updateActiveEmojiReactions {
    if (this is UpdateActiveEmojiReactions) {
      return this as UpdateActiveEmojiReactions;
    }
    return null;
  }

  UpdateNewChosenInlineResult? get updateNewChosenInlineResult {
    if (this is UpdateNewChosenInlineResult) {
      return this as UpdateNewChosenInlineResult;
    }
    return null;
  }

  UpdateMessageContentOpened? get updateMessageContentOpened {
    if (this is UpdateMessageContentOpened) {
      return this as UpdateMessageContentOpened;
    }
    return null;
  }

  UpdateStoryDeleted? get updateStoryDeleted {
    if (this is UpdateStoryDeleted) {
      return this as UpdateStoryDeleted;
    }
    return null;
  }

  UpdateAnimatedEmojiMessageClicked? get updateAnimatedEmojiMessageClicked {
    if (this is UpdateAnimatedEmojiMessageClicked) {
      return this as UpdateAnimatedEmojiMessageClicked;
    }
    return null;
  }

  UpdateFile? get updateFile {
    if (this is UpdateFile) {
      return this as UpdateFile;
    }
    return null;
  }
}

extension LogStreamExt on LogStream {
  LogStreamDefault? get logStreamDefault {
    if (this is LogStreamDefault) {
      return this as LogStreamDefault;
    }
    return null;
  }

  LogStreamFile? get logStreamFile {
    if (this is LogStreamFile) {
      return this as LogStreamFile;
    }
    return null;
  }

  LogStreamEmpty? get logStreamEmpty {
    if (this is LogStreamEmpty) {
      return this as LogStreamEmpty;
    }
    return null;
  }
}
