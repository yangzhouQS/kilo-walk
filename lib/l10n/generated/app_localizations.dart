import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('pt'),
    Locale('ru'),
    Locale('ur'),
    Locale('zh'),
  ];

  /// CodeWalk UI string — workspaceSessionViewGrouped
  ///
  /// In en, this message translates to:
  /// **'Group by project'**
  String get workspaceSessionViewGrouped;

  /// CodeWalk UI string — workspaceSessionViewTimeline
  ///
  /// In en, this message translates to:
  /// **'Recent sessions across projects'**
  String get workspaceSessionViewTimeline;

  /// Permanent release history entry and page title
  ///
  /// In en, this message translates to:
  /// **'Release history'**
  String get releaseHistoryTitle;

  /// About release history entry subtitle
  ///
  /// In en, this message translates to:
  /// **'Recent announcements and changelogs'**
  String get releaseHistoryDescription;

  /// No cached changelog available after a failed fetch
  ///
  /// In en, this message translates to:
  /// **'Unable to load release history. Check your connection and try again.'**
  String get releaseHistoryLoadError;

  /// Cached release notes remain readable after a failed refresh
  ///
  /// In en, this message translates to:
  /// **'Showing a saved copy. Refresh failed; newer notes may be missing.'**
  String get releaseHistoryStale;

  /// Empty release history state
  ///
  /// In en, this message translates to:
  /// **'No release notes available.'**
  String get releaseHistoryEmpty;

  /// The changelog does not yet cover the installed update interval
  ///
  /// In en, this message translates to:
  /// **'Notes for your update are not available yet. They will be checked again when you reopen the app.'**
  String get releaseHistoryIncomplete;

  /// Release announcement acknowledgment persistence failed
  ///
  /// In en, this message translates to:
  /// **'Your choice could not be saved. These announcements may appear again next time.'**
  String get releaseHistorySaveError;

  /// Post-upgrade announcement dialog title
  ///
  /// In en, this message translates to:
  /// **'What’s new'**
  String get releaseAnnouncementsTitle;

  /// Default-checked post-upgrade dialog suppression checkbox
  ///
  /// In en, this message translates to:
  /// **'Do not show again until the next update'**
  String get releaseAnnouncementsDoNotShowAgain;

  /// No description provided for @speechKeepModelInMemory.
  ///
  /// In en, this message translates to:
  /// **'Keep in memory'**
  String get speechKeepModelInMemory;

  /// No description provided for @speechKeepModelInMemoryHint.
  ///
  /// In en, this message translates to:
  /// **'Keep one on-device voice model loaded after use for faster repeat recordings. Uses more RAM; the system may release it when memory is low.'**
  String get speechKeepModelInMemoryHint;

  /// Kilo-Walk UI string — aboutGitHub
  ///
  /// In en, this message translates to:
  /// **'GitHub'**
  String get aboutGitHub;

  /// Kilo-Walk UI string — appProviderCannotActivateUnhealthy
  ///
  /// In en, this message translates to:
  /// **'Cannot activate an unhealthy server'**
  String get appProviderCannotActivateUnhealthy;

  /// Kilo-Walk UI string — appProviderDesktopOnly
  ///
  /// In en, this message translates to:
  /// **'Managed local server is available only on desktop.'**
  String get appProviderDesktopOnly;

  /// Kilo-Walk UI string — appProviderDetectingCommand
  ///
  /// In en, this message translates to:
  /// **'Detecting OpenCode command...'**
  String get appProviderDetectingCommand;

  /// Kilo-Walk UI string — appProviderErrorCannotActivateUnhealthy
  ///
  /// In en, this message translates to:
  /// **'Cannot activate an unhealthy server'**
  String get appProviderErrorCannotActivateUnhealthy;

  /// Kilo-Walk UI string — appProviderErrorCloudflareOAuthNotSupported
  ///
  /// In en, this message translates to:
  /// **'Cloudflare Access OAuth is not supported on this platform'**
  String get appProviderErrorCloudflareOAuthNotSupported;

  /// Kilo-Walk UI string — appProviderErrorInstallationFailed
  ///
  /// In en, this message translates to:
  /// **'OpenCode installation failed.'**
  String get appProviderErrorInstallationFailed;

  /// Kilo-Walk UI string — appProviderErrorInvalidServerUrl
  ///
  /// In en, this message translates to:
  /// **'Invalid server URL'**
  String get appProviderErrorInvalidServerUrl;

  /// Kilo-Walk UI string — appProviderErrorLocalServerHealthCheckFailed
  ///
  /// In en, this message translates to:
  /// **'Local server started but health check did not pass.'**
  String get appProviderErrorLocalServerHealthCheckFailed;

  /// Kilo-Walk UI string — appProviderErrorManagedDesktopOnly
  ///
  /// In en, this message translates to:
  /// **'Managed local server is available only on desktop.'**
  String get appProviderErrorManagedDesktopOnly;

  /// Kilo-Walk UI string — appProviderErrorServerAlreadyExists
  ///
  /// In en, this message translates to:
  /// **'A server with this URL already exists'**
  String get appProviderErrorServerAlreadyExists;

  /// Kilo-Walk UI string — appProviderErrorServerProfileNotFound
  ///
  /// In en, this message translates to:
  /// **'Server profile not found'**
  String get appProviderErrorServerProfileNotFound;

  /// Kilo-Walk UI string — appProviderErrorServerUrlRequired
  ///
  /// In en, this message translates to:
  /// **'Server URL is required'**
  String get appProviderErrorServerUrlRequired;

  /// Kilo-Walk UI string — appProviderErrorTailscaleNotSupported
  ///
  /// In en, this message translates to:
  /// **'Tailscale is not supported on this platform'**
  String get appProviderErrorTailscaleNotSupported;

  /// Kilo-Walk UI string — appProviderExitedWithCode
  ///
  /// In en, this message translates to:
  /// **'Local server exited with code {code}.'**
  String appProviderExitedWithCode(int code);

  /// Kilo-Walk UI string — appProviderFailedToStart
  ///
  /// In en, this message translates to:
  /// **'Failed to start local OpenCode server.'**
  String get appProviderFailedToStart;

  /// Kilo-Walk UI string — appProviderInstallBinary
  ///
  /// In en, this message translates to:
  /// **'Install Binary'**
  String get appProviderInstallBinary;

  /// Kilo-Walk UI string — appProviderInstallBunOpenCode
  ///
  /// In en, this message translates to:
  /// **'Install Bun + OpenCode'**
  String get appProviderInstallBunOpenCode;

  /// Kilo-Walk UI string — appProviderInstallSucceeded
  ///
  /// In en, this message translates to:
  /// **'Installation succeeded.'**
  String get appProviderInstallSucceeded;

  /// Kilo-Walk UI string — appProviderInstallSucceededWithPath
  ///
  /// In en, this message translates to:
  /// **'Installation succeeded. OpenCode command available at {path}.'**
  String appProviderInstallSucceededWithPath(String path);

  /// Kilo-Walk UI string — appProviderInstallViaBun
  ///
  /// In en, this message translates to:
  /// **'Install via Bun'**
  String get appProviderInstallViaBun;

  /// Kilo-Walk UI string — appProviderInstallViaNpm
  ///
  /// In en, this message translates to:
  /// **'Install via npm'**
  String get appProviderInstallViaNpm;

  /// Kilo-Walk UI string — appProviderInstallationFailed
  ///
  /// In en, this message translates to:
  /// **'OpenCode installation failed.'**
  String get appProviderInstallationFailed;

  /// Kilo-Walk UI string — appProviderInstalledSuccessfully
  ///
  /// In en, this message translates to:
  /// **'OpenCode requirements installed successfully.'**
  String get appProviderInstalledSuccessfully;

  /// Kilo-Walk UI string — appProviderInstallingRequirements
  ///
  /// In en, this message translates to:
  /// **'Installing OpenCode requirements...'**
  String get appProviderInstallingRequirements;

  /// Kilo-Walk UI string — appProviderInvalidServerUrl
  ///
  /// In en, this message translates to:
  /// **'Invalid server URL'**
  String get appProviderInvalidServerUrl;

  /// Kilo-Walk UI string — appProviderLabelLocalOpenCodeManaged
  ///
  /// In en, this message translates to:
  /// **'Local OpenCode (Managed)'**
  String get appProviderLabelLocalOpenCodeManaged;

  /// Kilo-Walk UI string — appProviderLabelPrimaryServer
  ///
  /// In en, this message translates to:
  /// **'Primary server'**
  String get appProviderLabelPrimaryServer;

  /// Kilo-Walk UI string — appProviderLocalManaged
  ///
  /// In en, this message translates to:
  /// **'Local OpenCode (Managed)'**
  String get appProviderLocalManaged;

  /// Kilo-Walk UI string — appProviderLocalServerStopped
  ///
  /// In en, this message translates to:
  /// **'Local server is stopped.'**
  String get appProviderLocalServerStopped;

  /// Kilo-Walk UI string — appProviderNotDetectedInstall
  ///
  /// In en, this message translates to:
  /// **'OpenCode command was not detected. Run installation from the wizard.'**
  String get appProviderNotDetectedInstall;

  /// Kilo-Walk UI string — appProviderNotDetectedRefresh
  ///
  /// In en, this message translates to:
  /// **'OpenCode command was not detected. If you installed it moments ago, refresh checks or reopen {appName} to reload PATH.'**
  String appProviderNotDetectedRefresh(String appName);

  /// Kilo-Walk UI string — appProviderOAuthNotSupported
  ///
  /// In en, this message translates to:
  /// **'Cloudflare Access OAuth is not supported on this platform'**
  String get appProviderOAuthNotSupported;

  /// Kilo-Walk UI string — appProviderOpenCodeDetected
  ///
  /// In en, this message translates to:
  /// **'OpenCode detected'**
  String get appProviderOpenCodeDetected;

  /// Kilo-Walk UI string — appProviderOpenCodeNotDetected
  ///
  /// In en, this message translates to:
  /// **'OpenCode not detected'**
  String get appProviderOpenCodeNotDetected;

  /// Kilo-Walk UI string — appProviderPrimaryServer
  ///
  /// In en, this message translates to:
  /// **'Primary server'**
  String get appProviderPrimaryServer;

  /// Kilo-Walk UI string — appProviderProfileNotFound
  ///
  /// In en, this message translates to:
  /// **'Server profile not found'**
  String get appProviderProfileNotFound;

  /// Kilo-Walk UI string — appProviderRunDiagnostics
  ///
  /// In en, this message translates to:
  /// **'Run diagnostics to verify local OpenCode requirements.'**
  String get appProviderRunDiagnostics;

  /// Kilo-Walk UI string — appProviderRunningAt
  ///
  /// In en, this message translates to:
  /// **'Running at {url}'**
  String appProviderRunningAt(String url);

  /// Kilo-Walk UI string — appProviderSetupDetectingOpenCode
  ///
  /// In en, this message translates to:
  /// **'Detecting OpenCode command...'**
  String get appProviderSetupDetectingOpenCode;

  /// Kilo-Walk UI string — appProviderSetupInstallationSucceeded
  ///
  /// In en, this message translates to:
  /// **'Installation succeeded.'**
  String get appProviderSetupInstallationSucceeded;

  /// Kilo-Walk UI string — appProviderSetupInstallationSucceededWithPath
  ///
  /// In en, this message translates to:
  /// **'Installation succeeded. OpenCode command available at {path}.'**
  String appProviderSetupInstallationSucceededWithPath(String path);

  /// Kilo-Walk UI string — appProviderSetupInstallingRequirements
  ///
  /// In en, this message translates to:
  /// **'Installing OpenCode requirements...'**
  String get appProviderSetupInstallingRequirements;

  /// Kilo-Walk UI string — appProviderSetupOpenCodeDetected
  ///
  /// In en, this message translates to:
  /// **'OpenCode detected'**
  String get appProviderSetupOpenCodeDetected;

  /// Kilo-Walk UI string — appProviderSetupOpenCodeNotDetected
  ///
  /// In en, this message translates to:
  /// **'OpenCode not detected'**
  String get appProviderSetupOpenCodeNotDetected;

  /// Kilo-Walk UI string — appProviderSetupOpenCodeNotDetectedInstall
  ///
  /// In en, this message translates to:
  /// **'OpenCode command was not detected. Run installation from the wizard.'**
  String get appProviderSetupOpenCodeNotDetectedInstall;

  /// Kilo-Walk UI string — appProviderSetupOpenCodeNotDetectedRefresh
  ///
  /// In en, this message translates to:
  /// **'OpenCode command was not detected. If you installed it moments ago, refresh checks or reopen Kilo-Walk to reload PATH.'**
  String get appProviderSetupOpenCodeNotDetectedRefresh;

  /// Kilo-Walk UI string — appProviderSetupRequirementsInstalled
  ///
  /// In en, this message translates to:
  /// **'OpenCode requirements installed successfully.'**
  String get appProviderSetupRequirementsInstalled;

  /// Kilo-Walk UI string — appProviderSetupUsingOpenCodeAt
  ///
  /// In en, this message translates to:
  /// **'Using OpenCode command at {path}'**
  String appProviderSetupUsingOpenCodeAt(String path);

  /// Kilo-Walk UI string — appProviderStartingLocalServer
  ///
  /// In en, this message translates to:
  /// **'Starting local server...'**
  String get appProviderStartingLocalServer;

  /// Kilo-Walk UI string — appProviderStatusLocalServerExitedWithCode
  ///
  /// In en, this message translates to:
  /// **'Local server exited with code {code}.'**
  String appProviderStatusLocalServerExitedWithCode(int code);

  /// Kilo-Walk UI string — appProviderStatusLocalServerStopped
  ///
  /// In en, this message translates to:
  /// **'Local server is stopped.'**
  String get appProviderStatusLocalServerStopped;

  /// Kilo-Walk UI string — appProviderStatusRunningAt
  ///
  /// In en, this message translates to:
  /// **'Running at {url}'**
  String appProviderStatusRunningAt(String url);

  /// Kilo-Walk UI string — appProviderStatusStartingLocalServer
  ///
  /// In en, this message translates to:
  /// **'Starting local server...'**
  String get appProviderStatusStartingLocalServer;

  /// Kilo-Walk UI string — appProviderStatusStoppingLocalServer
  ///
  /// In en, this message translates to:
  /// **'Stopping local server...'**
  String get appProviderStatusStoppingLocalServer;

  /// Kilo-Walk UI string — appProviderStoppingLocalServer
  ///
  /// In en, this message translates to:
  /// **'Stopping local server...'**
  String get appProviderStoppingLocalServer;

  /// Kilo-Walk UI string — appProviderTailscaleNotSupported
  ///
  /// In en, this message translates to:
  /// **'Tailscale is not supported on this platform'**
  String get appProviderTailscaleNotSupported;

  /// Kilo-Walk UI string — appProviderUsingCommandAt
  ///
  /// In en, this message translates to:
  /// **'Using OpenCode command at {path}'**
  String appProviderUsingCommandAt(String path);

  /// Kilo-Walk UI string — appShellDownloadingUpdate
  ///
  /// In en, this message translates to:
  /// **'Downloading update…'**
  String get appShellDownloadingUpdate;

  /// Kilo-Walk UI string — appShellInstall
  ///
  /// In en, this message translates to:
  /// **'Install'**
  String get appShellInstall;

  /// Kilo-Walk UI string — appShellInstallFailed
  ///
  /// In en, this message translates to:
  /// **'Install failed'**
  String get appShellInstallFailed;

  /// Kilo-Walk UI string — appShellInstallingUpdate
  ///
  /// In en, this message translates to:
  /// **'Installing update...'**
  String get appShellInstallingUpdate;

  /// Kilo-Walk UI string — appShellRestart
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get appShellRestart;

  /// Kilo-Walk UI string — appShellUpdateAvailableResult
  ///
  /// In en, this message translates to:
  /// **'Update available: v{latestVersion}'**
  String appShellUpdateAvailableResult(String latestVersion);

  /// Kilo-Walk UI string — appShellUpdateInstalledRestartApp
  ///
  /// In en, this message translates to:
  /// **'Update installed. Restart the app to apply.'**
  String get appShellUpdateInstalledRestartApp;

  /// Kilo-Walk UI string — appShellUpdateInstalledRestartRequired
  ///
  /// In en, this message translates to:
  /// **'Update installed. Restart is required to apply the new version.'**
  String get appShellUpdateInstalledRestartRequired;

  /// Kilo-Walk UI string — attachmentCouldNotDecode
  ///
  /// In en, this message translates to:
  /// **'Attachment data could not be decoded.'**
  String get attachmentCouldNotDecode;

  /// Kilo-Walk UI string — attachmentCouldNotDownload
  ///
  /// In en, this message translates to:
  /// **'Attachment could not be downloaded.'**
  String get attachmentCouldNotDownload;

  /// Kilo-Walk UI string — attachmentCouldNotSave
  ///
  /// In en, this message translates to:
  /// **'Attachment could not be saved on this device.'**
  String get attachmentCouldNotSave;

  /// Kilo-Walk UI string — attachmentDownloadStarted
  ///
  /// In en, this message translates to:
  /// **'Attachment download started.'**
  String get attachmentDownloadStarted;

  /// Kilo-Walk UI string — attachmentLocalNotFound
  ///
  /// In en, this message translates to:
  /// **'Local attachment was not found on this device.'**
  String get attachmentLocalNotFound;

  /// Kilo-Walk UI string — attachmentNoValidLocation
  ///
  /// In en, this message translates to:
  /// **'Attachment does not provide a valid location.'**
  String get attachmentNoValidLocation;

  /// Kilo-Walk UI string — attachmentNotAvailableOnPlatform
  ///
  /// In en, this message translates to:
  /// **'Attachment actions are not available on this platform.'**
  String get attachmentNotAvailableOnPlatform;

  /// Kilo-Walk UI string — attachmentPathEmpty
  ///
  /// In en, this message translates to:
  /// **'Attachment path is empty.'**
  String get attachmentPathEmpty;

  /// Kilo-Walk UI string — attachmentPayloadEmpty
  ///
  /// In en, this message translates to:
  /// **'Attachment payload is empty.'**
  String get attachmentPayloadEmpty;

  /// Kilo-Walk UI string — attachmentSaveCanceled
  ///
  /// In en, this message translates to:
  /// **'Save canceled.'**
  String get attachmentSaveCanceled;

  /// Kilo-Walk UI string — attachmentSavedAndOpened
  ///
  /// In en, this message translates to:
  /// **'Attachment saved to {path} and opened.'**
  String attachmentSavedAndOpened(String path);

  /// Kilo-Walk UI string — attachmentSavedPath
  ///
  /// In en, this message translates to:
  /// **'Attachment saved to {path}.'**
  String attachmentSavedPath(String path);

  /// Kilo-Walk UI string — attachmentSavedTo
  ///
  /// In en, this message translates to:
  /// **'Attachment saved to {path}.'**
  String attachmentSavedTo(String path);

  /// Kilo-Walk UI string — attachmentUnableToOpenLink
  ///
  /// In en, this message translates to:
  /// **'Unable to open the attachment link.'**
  String get attachmentUnableToOpenLink;

  /// Kilo-Walk UI string — attachmentUnableToOpenLocal
  ///
  /// In en, this message translates to:
  /// **'Unable to open the local attachment.'**
  String get attachmentUnableToOpenLocal;

  /// Kilo-Walk UI string — behaviorAdvancedPermissionRule
  ///
  /// In en, this message translates to:
  /// **'Advanced permission rule editing stays out of Settings for now and is deferred to later parity work.'**
  String get behaviorAdvancedPermissionRule;

  /// Kilo-Walk UI string — behaviorAutomatic
  ///
  /// In en, this message translates to:
  /// **'Automatic'**
  String get behaviorAutomatic;

  /// Kilo-Walk UI string — behaviorAutomaticFallback
  ///
  /// In en, this message translates to:
  /// **'Automatic fallback'**
  String get behaviorAutomaticFallback;

  /// Kilo-Walk UI string — behaviorCellularDataSaver
  ///
  /// In en, this message translates to:
  /// **'Cellular data saver'**
  String get behaviorCellularDataSaver;

  /// Kilo-Walk UI string — behaviorCellularDataSaverActive
  ///
  /// In en, this message translates to:
  /// **'Cellular data saver is active.'**
  String get behaviorCellularDataSaverActive;

  /// Kilo-Walk UI string — behaviorChatLevelShare
  ///
  /// In en, this message translates to:
  /// **'Use the chat-level share action to publish one session now. This setting only changes OpenCode’s default sharing policy.'**
  String get behaviorChatLevelShare;

  /// Kilo-Walk UI string — behaviorKilo-WalkReleaseChecks
  ///
  /// In en, this message translates to:
  /// **'Use About for Kilo-Walk release checks. This setting only mirrors the official OpenCode `autoupdate` config.'**
  String get behaviorCodeWalkReleaseChecks;

  /// Kilo-Walk UI string — behaviorControlsOfficialGlobal
  ///
  /// In en, this message translates to:
  /// **'Controls the official global `share` config, not the share button for an individual chat.'**
  String get behaviorControlsOfficialGlobal;

  /// Kilo-Walk UI string — behaviorControlsUpstreamOpenCode
  ///
  /// In en, this message translates to:
  /// **'Controls upstream OpenCode runtime updates, not Kilo-Walk app update checks.'**
  String get behaviorControlsUpstreamOpenCode;

  /// Kilo-Walk UI string — behaviorCustomDisplayName
  ///
  /// In en, this message translates to:
  /// **'Custom display name shown in conversations instead of the system username.'**
  String get behaviorCustomDisplayName;

  /// Kilo-Walk UI string — behaviorCutsAutomaticMobile
  ///
  /// In en, this message translates to:
  /// **'Cuts automatic mobile-data usage by stopping background downloads and throttling automatic foreground refreshes to one burst every {inSeconds} seconds.'**
  String behaviorCutsAutomaticMobile(int inSeconds);

  /// Kilo-Walk UI string — behaviorDataSaverActive
  ///
  /// In en, this message translates to:
  /// **'Active now on mobile data.'**
  String get behaviorDataSaverActive;

  /// Kilo-Walk UI string — behaviorDataSaverAggressive
  ///
  /// In en, this message translates to:
  /// **'Aggressive'**
  String get behaviorDataSaverAggressive;

  /// Kilo-Walk UI string — behaviorDataSaverAggressiveDescription
  ///
  /// In en, this message translates to:
  /// **'Low-bandwidth mode: only the visible workspace stream stays live, global updates are paused, and automatic refreshes are stretched.'**
  String get behaviorDataSaverAggressiveDescription;

  /// Kilo-Walk UI string — behaviorDataSaverCellularOnly
  ///
  /// In en, this message translates to:
  /// **'Only applies when the connection is cellular/mobile.'**
  String get behaviorDataSaverCellularOnly;

  /// Kilo-Walk UI string — behaviorDataSaverOff
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get behaviorDataSaverOff;

  /// Kilo-Walk UI string — behaviorDataSaverOffHint
  ///
  /// In en, this message translates to:
  /// **'Full realtime and automatic refreshes are enabled.'**
  String get behaviorDataSaverOffHint;

  /// Kilo-Walk UI string — behaviorDataSaverStandard
  ///
  /// In en, this message translates to:
  /// **'Standard'**
  String get behaviorDataSaverStandard;

  /// Kilo-Walk UI string — behaviorDataSaverWaiting
  ///
  /// In en, this message translates to:
  /// **'Waiting for the next mobile-data sync window.'**
  String get behaviorDataSaverWaiting;

  /// Kilo-Walk UI string — behaviorDisabled
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get behaviorDisabled;

  /// Kilo-Walk UI string — behaviorLightweightTasksLike
  ///
  /// In en, this message translates to:
  /// **'Used for lightweight tasks like title generation.'**
  String get behaviorLightweightTasksLike;

  /// Kilo-Walk UI string — behaviorManual
  ///
  /// In en, this message translates to:
  /// **'Manual'**
  String get behaviorManual;

  /// Kilo-Walk UI string — behaviorNotify
  ///
  /// In en, this message translates to:
  /// **'Notify only'**
  String get behaviorNotify;

  /// Kilo-Walk UI string — behaviorOfficialOpenCodePermission
  ///
  /// In en, this message translates to:
  /// **'Official OpenCode permission policy is configured in `opencode.json` with allow/ask/deny rules per tool. Kilo-Walk keeps the official permission-request cards and adds one approved ADR-023 exception: the composer auto-approve toggle replies with `Always` and `remember: true` unconditionally to create durable session-scoped grants, and keeps the same thread-scoped continuity path active in the Android background worker.'**
  String get behaviorOfficialOpenCodePermission;

  /// Kilo-Walk UI string — behaviorOpenCodeBackedDefaults
  ///
  /// In en, this message translates to:
  /// **'OpenCode-backed defaults'**
  String get behaviorOpenCodeBackedDefaults;

  /// Kilo-Walk UI string — behaviorPermissionHandlingProvenance
  ///
  /// In en, this message translates to:
  /// **'Permission handling provenance'**
  String get behaviorPermissionHandlingProvenance;

  /// Kilo-Walk UI string — behaviorPermissionsVariantReasoning
  ///
  /// In en, this message translates to:
  /// **'Permissions and variant/reasoning parity stay separate until their UI can preserve advanced config safely.'**
  String get behaviorPermissionsVariantReasoning;

  /// Kilo-Walk UI string — behaviorPrimaryAgentAgent
  ///
  /// In en, this message translates to:
  /// **'Primary agent used when no agent is explicitly chosen.'**
  String get behaviorPrimaryAgentAgent;

  /// Kilo-Walk UI string — behaviorRefreshDefaults
  ///
  /// In en, this message translates to:
  /// **'Refresh defaults'**
  String get behaviorRefreshDefaults;

  /// Kilo-Walk UI string — behaviorSharedAcrossOpenCode
  ///
  /// In en, this message translates to:
  /// **'Shared across OpenCode clients through config.'**
  String get behaviorSharedAcrossOpenCode;

  /// Kilo-Walk UI string — behaviorTheseValuesWrite
  ///
  /// In en, this message translates to:
  /// **'These values write to `/config` on the active server and match official OpenCode shared config.'**
  String get behaviorTheseValuesWrite;

  /// Kilo-Walk UI string — cannedAddTitle
  ///
  /// In en, this message translates to:
  /// **'Add canned answer'**
  String get cannedAddTitle;

  /// Kilo-Walk UI string — cannedAppendAtCursor
  ///
  /// In en, this message translates to:
  /// **'Append at cursor'**
  String get cannedAppendAtCursor;

  /// Kilo-Walk UI string — cannedAppendAtCursorSubtitle
  ///
  /// In en, this message translates to:
  /// **'Off means replace current composer text'**
  String get cannedAppendAtCursorSubtitle;

  /// Kilo-Walk UI string — cannedEditTitle
  ///
  /// In en, this message translates to:
  /// **'Edit canned answer'**
  String get cannedEditTitle;

  /// Kilo-Walk UI string — cannedNewQuickReply
  ///
  /// In en, this message translates to:
  /// **'New quick reply'**
  String get cannedNewQuickReply;

  /// Kilo-Walk UI string — cannedNoSuggestions
  ///
  /// In en, this message translates to:
  /// **'No suggestions'**
  String get cannedNoSuggestions;

  /// Kilo-Walk UI string — cannedOffMeansReplace
  ///
  /// In en, this message translates to:
  /// **'Off means replace current composer text'**
  String get cannedOffMeansReplace;

  /// Kilo-Walk UI string — cannedQuickReply
  ///
  /// In en, this message translates to:
  /// **'New quick reply'**
  String get cannedQuickReply;

  /// Kilo-Walk UI string — cannedReplace
  ///
  /// In en, this message translates to:
  /// **'Replace'**
  String get cannedReplace;

  /// Kilo-Walk UI string — cannedScopeGlobalSubtitle
  ///
  /// In en, this message translates to:
  /// **'Disable for project-only item'**
  String get cannedScopeGlobalSubtitle;

  /// Kilo-Walk UI string — cannedScopeGlobalUnavailableSubtitle
  ///
  /// In en, this message translates to:
  /// **'Project-only unavailable in current context'**
  String get cannedScopeGlobalUnavailableSubtitle;

  /// Kilo-Walk UI string — cannedSendAutomaticallySubtitle
  ///
  /// In en, this message translates to:
  /// **'Send immediately after inserting this quick reply'**
  String get cannedSendAutomaticallySubtitle;

  /// Kilo-Walk UI string — cannedSendImmediatelyInserting
  ///
  /// In en, this message translates to:
  /// **'Send immediately after inserting this quick reply'**
  String get cannedSendImmediatelyInserting;

  /// Kilo-Walk UI string — cannedTextLabel
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get cannedTextLabel;

  /// Kilo-Walk UI string — chatActionNext
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get chatActionNext;

  /// Kilo-Walk UI string — chatActiveServerUnhealthy
  ///
  /// In en, this message translates to:
  /// **'Active server is unhealthy. Sends will try once and fail fast until recovery.'**
  String get chatActiveServerUnhealthy;

  /// Kilo-Walk UI string — chatActiveServerUnhealthyLabel
  ///
  /// In en, this message translates to:
  /// **'Active server is unhealthy'**
  String get chatActiveServerUnhealthyLabel;

  /// Kilo-Walk UI string — chatAddServerToStart
  ///
  /// In en, this message translates to:
  /// **'Add a server to start chatting.'**
  String get chatAddServerToStart;

  /// Kilo-Walk UI string — chatAppBarMoreActions
  ///
  /// In en, this message translates to:
  /// **'More actions'**
  String get chatAppBarMoreActions;

  /// Kilo-Walk UI string — chatAppBarPinAction
  ///
  /// In en, this message translates to:
  /// **'Pin to app bar'**
  String get chatAppBarPinAction;

  /// Kilo-Walk UI string — chatAppBarPinDescription
  ///
  /// In en, this message translates to:
  /// **'This action will stay visible outside the menu.'**
  String get chatAppBarPinDescription;

  /// Kilo-Walk UI string — chatAppBarUnpinAction
  ///
  /// In en, this message translates to:
  /// **'Unpin from app bar'**
  String get chatAppBarUnpinAction;

  /// Kilo-Walk UI string — chatAppBarUnpinDescription
  ///
  /// In en, this message translates to:
  /// **'This action will move back into the menu.'**
  String get chatAppBarUnpinDescription;

  /// Kilo-Walk UI string — chatBadgeConversationError
  ///
  /// In en, this message translates to:
  /// **'\"{title}\" has an error.'**
  String chatBadgeConversationError(String title);

  /// Kilo-Walk UI string — chatBadgeConversationNeedsInput
  ///
  /// In en, this message translates to:
  /// **'\"{title}\" needs your input.'**
  String chatBadgeConversationNeedsInput(String title);

  /// Kilo-Walk UI string — chatBadgeConversationNewReply
  ///
  /// In en, this message translates to:
  /// **'\"{title}\" has a new reply.'**
  String chatBadgeConversationNewReply(String title);

  /// Kilo-Walk UI string — chatBadgeDataSaverActive
  ///
  /// In en, this message translates to:
  /// **'Cellular data saver is active.'**
  String get chatBadgeDataSaverActive;

  /// Kilo-Walk UI string — chatBadgeServerNeedsAttention
  ///
  /// In en, this message translates to:
  /// **'Server connection needs attention.'**
  String get chatBadgeServerNeedsAttention;

  /// Kilo-Walk UI string — chatBadgeSyncing
  ///
  /// In en, this message translates to:
  /// **'Syncing conversations...'**
  String get chatBadgeSyncing;

  /// Kilo-Walk UI string — chatBlockResponsePendingDescription
  ///
  /// In en, this message translates to:
  /// **'The answer will appear as a single block when this turn finishes.'**
  String get chatBlockResponsePendingDescription;

  /// Kilo-Walk UI string — chatBlockResponsePendingTitle
  ///
  /// In en, this message translates to:
  /// **'Generating response'**
  String get chatBlockResponsePendingTitle;

  /// Kilo-Walk UI string — chatCachedConversationsYet
  ///
  /// In en, this message translates to:
  /// **'No cached conversations yet'**
  String get chatCachedConversationsYet;

  /// Kilo-Walk UI string — chatChangedFilesAvailable
  ///
  /// In en, this message translates to:
  /// **'No changed files are available for this session.'**
  String get chatChangedFilesAvailable;

  /// Kilo-Walk UI string — chatChildrenChatProviderCurrentSessionChildren
  ///
  /// In en, this message translates to:
  /// **'Children: {length}'**
  String chatChildrenChatProviderCurrentSessionChildren(int length);

  /// Kilo-Walk UI string — chatChooseAgent
  ///
  /// In en, this message translates to:
  /// **'Select agent'**
  String get chatChooseAgent;

  /// Kilo-Walk UI string — chatChooseDirectory
  ///
  /// In en, this message translates to:
  /// **'Choose Directory'**
  String get chatChooseDirectory;

  /// Kilo-Walk UI string — chatChooseEffort
  ///
  /// In en, this message translates to:
  /// **'Choose effort'**
  String get chatChooseEffort;

  /// Kilo-Walk UI string — chatChooseFolderOpen
  ///
  /// In en, this message translates to:
  /// **'Choose a folder to open as project context.'**
  String get chatChooseFolderOpen;

  /// Kilo-Walk UI string — chatChooseModel
  ///
  /// In en, this message translates to:
  /// **'Choose model'**
  String get chatChooseModel;

  /// Kilo-Walk UI string — chatClose
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get chatClose;

  /// Kilo-Walk UI string — chatCloseProject
  ///
  /// In en, this message translates to:
  /// **'Close {project}'**
  String chatCloseProject(String project);

  /// Kilo-Walk UI string — chatCollapseGroup
  ///
  /// In en, this message translates to:
  /// **'Collapse group'**
  String get chatCollapseGroup;

  /// Kilo-Walk UI string — chatCommandDescriptionProject
  ///
  /// In en, this message translates to:
  /// **'Project command'**
  String get chatCommandDescriptionProject;

  /// Kilo-Walk UI string — chatCommandSourceGeneric
  ///
  /// In en, this message translates to:
  /// **'command'**
  String get chatCommandSourceGeneric;

  /// Kilo-Walk UI string — chatCommandSourceProject
  ///
  /// In en, this message translates to:
  /// **'project'**
  String get chatCommandSourceProject;

  /// Kilo-Walk UI string — chatCompactContext
  ///
  /// In en, this message translates to:
  /// **'Compact Context'**
  String get chatCompactContext;

  /// Kilo-Walk UI string — chatComposerHintShell
  ///
  /// In en, this message translates to:
  /// **'Shell command (Esc to exit)'**
  String get chatComposerHintShell;

  /// Kilo-Walk UI string — chatComposerPlaceholder
  ///
  /// In en, this message translates to:
  /// **'Type your needs...'**
  String get chatComposerPlaceholder;

  /// Kilo-Walk UI string — chatConversation
  ///
  /// In en, this message translates to:
  /// **'Conversation'**
  String get chatConversation;

  /// Kilo-Walk UI string — chatConversations
  ///
  /// In en, this message translates to:
  /// **'Conversations'**
  String get chatConversations;

  /// Kilo-Walk UI string — chatConversationsPane
  ///
  /// In en, this message translates to:
  /// **'Conversations'**
  String get chatConversationsPane;

  /// Kilo-Walk UI string — chatCostLabel
  ///
  /// In en, this message translates to:
  /// **'Cost: \${cost}'**
  String chatCostLabel(double cost);

  /// Kilo-Walk UI string — chatCouldNotRefreshSession
  ///
  /// In en, this message translates to:
  /// **'Could not refresh this conversation'**
  String get chatCouldNotRefreshSession;

  /// Kilo-Walk UI string — chatCurrent
  ///
  /// In en, this message translates to:
  /// **'Use current'**
  String get chatCurrent;

  /// Kilo-Walk UI string — chatDescriptionChildren
  ///
  /// In en, this message translates to:
  /// **'Children: {count}'**
  String chatDescriptionChildren(int count);

  /// Kilo-Walk UI string — chatDescriptionCloseApp
  ///
  /// In en, this message translates to:
  /// **'Close app using platform close behavior'**
  String get chatDescriptionCloseApp;

  /// Kilo-Walk UI string — chatDescriptionCycleModels
  ///
  /// In en, this message translates to:
  /// **'Cycle recent models'**
  String get chatDescriptionCycleModels;

  /// Kilo-Walk UI string — chatDescriptionCycleVariant
  ///
  /// In en, this message translates to:
  /// **'Cycle model variant'**
  String get chatDescriptionCycleVariant;

  /// Kilo-Walk UI string — chatDescriptionDiffFilesZero
  ///
  /// In en, this message translates to:
  /// **'Diff files: 0'**
  String get chatDescriptionDiffFilesZero;

  /// Kilo-Walk UI string — chatDescriptionFocusInput
  ///
  /// In en, this message translates to:
  /// **'Focus message input'**
  String get chatDescriptionFocusInput;

  /// Kilo-Walk UI string — chatDescriptionFocusOrCloseDrawer
  ///
  /// In en, this message translates to:
  /// **'Focus input (or close drawer when open)'**
  String get chatDescriptionFocusOrCloseDrawer;

  /// Kilo-Walk UI string — chatDescriptionForceExit
  ///
  /// In en, this message translates to:
  /// **'Force-exit the app'**
  String get chatDescriptionForceExit;

  /// Kilo-Walk UI string — chatDescriptionNewConversation
  ///
  /// In en, this message translates to:
  /// **'New conversation'**
  String get chatDescriptionNewConversation;

  /// Kilo-Walk UI string — chatDescriptionNextAgent
  ///
  /// In en, this message translates to:
  /// **'Next agent'**
  String get chatDescriptionNextAgent;

  /// Kilo-Walk UI string — chatDescriptionOpenProjects
  ///
  /// In en, this message translates to:
  /// **'Use this button to open your projects and conversations.'**
  String get chatDescriptionOpenProjects;

  /// Kilo-Walk UI string — chatDescriptionOpenSettings
  ///
  /// In en, this message translates to:
  /// **'Open settings'**
  String get chatDescriptionOpenSettings;

  /// Kilo-Walk UI string — chatDescriptionPreviousAgent
  ///
  /// In en, this message translates to:
  /// **'Previous agent'**
  String get chatDescriptionPreviousAgent;

  /// Kilo-Walk UI string — chatDescriptionProjectCommand
  ///
  /// In en, this message translates to:
  /// **'Project command'**
  String get chatDescriptionProjectCommand;

  /// Kilo-Walk UI string — chatDescriptionQuickOpen
  ///
  /// In en, this message translates to:
  /// **'Quick open files'**
  String get chatDescriptionQuickOpen;

  /// Kilo-Walk UI string — chatDescriptionRefreshData
  ///
  /// In en, this message translates to:
  /// **'Refresh chat data'**
  String get chatDescriptionRefreshData;

  /// Kilo-Walk UI string — chatDescriptionStopResponse
  ///
  /// In en, this message translates to:
  /// **'Stop active response (while responding)'**
  String get chatDescriptionStopResponse;

  /// Kilo-Walk UI string — chatDescriptionSwitchProject
  ///
  /// In en, this message translates to:
  /// **'Use this button to switch project folders and context.'**
  String get chatDescriptionSwitchProject;

  /// Kilo-Walk UI string — chatDescriptionVoiceInput
  ///
  /// In en, this message translates to:
  /// **'Start or stop voice input'**
  String get chatDescriptionVoiceInput;

  /// Kilo-Walk UI string — chatDiffFiles
  ///
  /// In en, this message translates to:
  /// **'Diff files: 0'**
  String get chatDiffFiles;

  /// Kilo-Walk UI string — chatDisplay
  ///
  /// In en, this message translates to:
  /// **'Display'**
  String get chatDisplay;

  /// Kilo-Walk UI string — chatDisplayToggles
  ///
  /// In en, this message translates to:
  /// **'Display toggles'**
  String get chatDisplayToggles;

  /// Kilo-Walk UI string — chatDoubleESCStop
  ///
  /// In en, this message translates to:
  /// **'Double ESC to stop'**
  String get chatDoubleESCStop;

  /// Kilo-Walk UI string — chatEffortLockedSubConversation
  ///
  /// In en, this message translates to:
  /// **'Effort locked in sub-conversation'**
  String get chatEffortLockedSubConversation;

  /// Kilo-Walk UI string — chatExpandGroup
  ///
  /// In en, this message translates to:
  /// **'Expand group'**
  String get chatExpandGroup;

  /// Kilo-Walk UI string — chatExportCanceled
  ///
  /// In en, this message translates to:
  /// **'Session export canceled'**
  String get chatExportCanceled;

  /// Kilo-Walk UI string — chatFailedToLoadDirectories
  ///
  /// In en, this message translates to:
  /// **'Failed to load directories'**
  String get chatFailedToLoadDirectories;

  /// Kilo-Walk UI string — chatFailedToLoadFile
  ///
  /// In en, this message translates to:
  /// **'Failed to load file'**
  String get chatFailedToLoadFile;

  /// Kilo-Walk UI string — chatFailedToRefreshProviders
  ///
  /// In en, this message translates to:
  /// **'Failed to refresh providers and models'**
  String get chatFailedToRefreshProviders;

  /// Kilo-Walk UI string — chatFailedToRefreshSubConversations
  ///
  /// In en, this message translates to:
  /// **'Failed to refresh sub-conversations. Please try again.'**
  String get chatFailedToRefreshSubConversations;

  /// Kilo-Walk UI string — chatFailedToStopResponse
  ///
  /// In en, this message translates to:
  /// **'Failed to stop current response'**
  String get chatFailedToStopResponse;

  /// Kilo-Walk UI string — chatFileExplorerContents
  ///
  /// In en, this message translates to:
  /// **'Contents'**
  String get chatFileExplorerContents;

  /// Kilo-Walk UI string — chatFileExplorerNames
  ///
  /// In en, this message translates to:
  /// **'Names'**
  String get chatFileExplorerNames;

  /// Kilo-Walk UI string — chatFilterActive
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get chatFilterActive;

  /// Kilo-Walk UI string — chatFilterAll
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get chatFilterAll;

  /// Kilo-Walk UI string — chatFilterArchived
  ///
  /// In en, this message translates to:
  /// **'Archived'**
  String get chatFilterArchived;

  /// Kilo-Walk UI string — chatFilterDirectories
  ///
  /// In en, this message translates to:
  /// **'Filter directories'**
  String get chatFilterDirectories;

  /// Kilo-Walk UI string — chatFilterSessions
  ///
  /// In en, this message translates to:
  /// **'Filter sessions'**
  String get chatFilterSessions;

  /// Kilo-Walk UI string — chatForkFailed
  ///
  /// In en, this message translates to:
  /// **'Failed to fork conversation'**
  String get chatForkFailed;

  /// Kilo-Walk UI string — chatForked
  ///
  /// In en, this message translates to:
  /// **'Conversation forked'**
  String get chatForked;

  /// Kilo-Walk UI string — chatGoToFirst
  ///
  /// In en, this message translates to:
  /// **'Go to first message'**
  String get chatGoToFirst;

  /// Kilo-Walk UI string — chatGoToLatest
  ///
  /// In en, this message translates to:
  /// **'Go to latest message'**
  String get chatGoToLatest;

  /// Kilo-Walk UI string — chatGroupMessageCountMessages
  ///
  /// In en, this message translates to:
  /// **'{messageCount} messages hidden before {compactionLabel} compaction'**
  String chatGroupMessageCountMessages(
    String compactionLabel,
    String messageCount,
  );

  /// Kilo-Walk UI string — chatHelloAssistant
  ///
  /// In en, this message translates to:
  /// **'Hello! I am your AI assistant'**
  String get chatHelloAssistant;

  /// Kilo-Walk UI string — chatHelp
  ///
  /// In en, this message translates to:
  /// **'How can I help you?'**
  String get chatHelp;

  /// Kilo-Walk UI string — chatHelpMessage
  ///
  /// In en, this message translates to:
  /// **'Use @ for mentions, ! for shell, / for commands'**
  String get chatHelpMessage;

  /// Kilo-Walk UI string — chatHideConversationsSidebar
  ///
  /// In en, this message translates to:
  /// **'Hide Conversations sidebar'**
  String get chatHideConversationsSidebar;

  /// Kilo-Walk UI string — chatHideUtilitySidebar
  ///
  /// In en, this message translates to:
  /// **'Hide Utility sidebar'**
  String get chatHideUtilitySidebar;

  /// Kilo-Walk UI string — chatHistoryCollapsed
  ///
  /// In en, this message translates to:
  /// **'Previous history is collapsed'**
  String get chatHistoryCollapsed;

  /// Kilo-Walk UI string — chatHistoryHideEarlier
  ///
  /// In en, this message translates to:
  /// **'Hide earlier messages'**
  String get chatHistoryHideEarlier;

  /// Kilo-Walk UI string — chatHistoryMessagesHidden
  ///
  /// In en, this message translates to:
  /// **'{count} messages hidden before {label} compaction'**
  String chatHistoryMessagesHidden(int count, String label);

  /// Kilo-Walk UI string — chatHistoryShowEarlier
  ///
  /// In en, this message translates to:
  /// **'Show earlier messages'**
  String get chatHistoryShowEarlier;

  /// Kilo-Walk UI string — chatKeepWorking
  ///
  /// In en, this message translates to:
  /// **'Keep working'**
  String get chatKeepWorking;

  /// Kilo-Walk UI string — chatLargeContentSkipped
  ///
  /// In en, this message translates to:
  /// **'Large or malformed content was skipped for stability.'**
  String get chatLargeContentSkipped;

  /// Kilo-Walk UI string — chatLatestToolActivity
  ///
  /// In en, this message translates to:
  /// **'Latest tool activity stays inside this bounded panel to keep the chat viewport stable.'**
  String get chatLatestToolActivity;

  /// Kilo-Walk UI string — chatLoadMore
  ///
  /// In en, this message translates to:
  /// **'Load more'**
  String get chatLoadMore;

  /// Kilo-Walk UI string — chatLoadingProjectContext
  ///
  /// In en, this message translates to:
  /// **'Loading project context...'**
  String get chatLoadingProjectContext;

  /// Kilo-Walk UI string — chatMainConversationUnavailable
  ///
  /// In en, this message translates to:
  /// **'Main conversation is not available yet.'**
  String get chatMainConversationUnavailable;

  /// Kilo-Walk UI string — chatParentConversationUnavailable
  ///
  /// In en, this message translates to:
  /// **'Parent conversation is not available yet.'**
  String get chatParentConversationUnavailable;

  /// Kilo-Walk UI string — chatMentionAgentSubtitle
  ///
  /// In en, this message translates to:
  /// **'agent'**
  String get chatMentionAgentSubtitle;

  /// Kilo-Walk UI string — chatMentionFileSubtitle
  ///
  /// In en, this message translates to:
  /// **'file'**
  String get chatMentionFileSubtitle;

  /// Kilo-Walk UI string — chatMentionSymbolSubtitle
  ///
  /// In en, this message translates to:
  /// **'symbol'**
  String get chatMentionSymbolSubtitle;

  /// Kilo-Walk UI string — chatMessageAttachedFile
  ///
  /// In en, this message translates to:
  /// **'Attached file'**
  String get chatMessageAttachedFile;

  /// Kilo-Walk UI string — chatMessageDetails
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get chatMessageDetails;

  /// Kilo-Walk UI string — chatMessageHide
  ///
  /// In en, this message translates to:
  /// **'Hide'**
  String get chatMessageHide;

  /// Kilo-Walk UI string — chatMessageLess
  ///
  /// In en, this message translates to:
  /// **'Less'**
  String get chatMessageLess;

  /// Kilo-Walk UI string — chatMessageMessagePartUnavailable
  ///
  /// In en, this message translates to:
  /// **'Message part unavailable'**
  String get chatMessageMessagePartUnavailable;

  /// Kilo-Walk UI string — chatMessageMetadataAvailable
  ///
  /// In en, this message translates to:
  /// **'No metadata available'**
  String get chatMessageMetadataAvailable;

  /// Kilo-Walk UI string — chatMessageModelMessageModelId
  ///
  /// In en, this message translates to:
  /// **'Model: {modelId}'**
  String chatMessageModelMessageModelId(String modelId);

  /// Kilo-Walk UI string — chatMessageMore
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get chatMessageMore;

  /// Kilo-Walk UI string — chatMessageOpenFile
  ///
  /// In en, this message translates to:
  /// **'Open file'**
  String get chatMessageOpenFile;

  /// Kilo-Walk UI string — chatMessageProviderMessageProviderId
  ///
  /// In en, this message translates to:
  /// **'Provider: {providerId}'**
  String chatMessageProviderMessageProviderId(String providerId);

  /// Kilo-Walk UI string — chatMessageRewindEdit
  ///
  /// In en, this message translates to:
  /// **'Rewind and edit from here'**
  String get chatMessageRewindEdit;

  /// Kilo-Walk UI string — chatMessageRunningTask
  ///
  /// In en, this message translates to:
  /// **'Running task'**
  String get chatMessageRunningTask;

  /// Kilo-Walk UI string — chatMessageSaveFile
  ///
  /// In en, this message translates to:
  /// **'Save file'**
  String get chatMessageSaveFile;

  /// Kilo-Walk UI string — chatMessageShow
  ///
  /// In en, this message translates to:
  /// **'Show'**
  String get chatMessageShow;

  /// Kilo-Walk UI string — chatMessageShowQuestion
  ///
  /// In en, this message translates to:
  /// **'View question'**
  String get chatMessageShowQuestion;

  /// Kilo-Walk UI string — chatMessageShowLess
  ///
  /// In en, this message translates to:
  /// **'Show less'**
  String get chatMessageShowLess;

  /// Kilo-Walk UI string — chatMessageShowLessCompact
  ///
  /// In en, this message translates to:
  /// **'Less'**
  String get chatMessageShowLessCompact;

  /// Kilo-Walk UI string — chatMessageShowMore
  ///
  /// In en, this message translates to:
  /// **'Show more'**
  String get chatMessageShowMore;

  /// Kilo-Walk UI string — chatMessageShowMoreCompact
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get chatMessageShowMoreCompact;

  /// Kilo-Walk UI string — chatMessageThinking
  ///
  /// In en, this message translates to:
  /// **'Thinking'**
  String get chatMessageThinking;

  /// Kilo-Walk UI string — chatMessageThinkingProcess
  ///
  /// In en, this message translates to:
  /// **'Thinking Process'**
  String get chatMessageThinkingProcess;

  /// Kilo-Walk UI string — chatMessageToolCall
  ///
  /// In en, this message translates to:
  /// **'1 tool call'**
  String get chatMessageToolCall;

  /// Kilo-Walk UI string — chatMessageToolCalls
  ///
  /// In en, this message translates to:
  /// **'{count} tool calls'**
  String chatMessageToolCalls(int count);

  /// Kilo-Walk UI string — chatMessageToolCommand
  ///
  /// In en, this message translates to:
  /// **'Command'**
  String get chatMessageToolCommand;

  /// Kilo-Walk UI string — chatMessageToolCommandTruncated
  ///
  /// In en, this message translates to:
  /// **'Command preview truncated for stability.'**
  String get chatMessageToolCommandTruncated;

  /// Kilo-Walk UI string — chatMessageToolDiffOmitted
  ///
  /// In en, this message translates to:
  /// **'Diff preview omitted: edit payload is too large to render safely on mobile.'**
  String get chatMessageToolDiffOmitted;

  /// Kilo-Walk UI string — chatMessageToolInput
  ///
  /// In en, this message translates to:
  /// **'Input'**
  String get chatMessageToolInput;

  /// Kilo-Walk UI string — chatMessageToolInputTruncated
  ///
  /// In en, this message translates to:
  /// **'Input preview truncated for stability.'**
  String get chatMessageToolInputTruncated;

  /// Kilo-Walk UI string — chatMessageToolOutputTruncated
  ///
  /// In en, this message translates to:
  /// **'Large tool output preview truncated for app stability.'**
  String get chatMessageToolOutputTruncated;

  /// Kilo-Walk UI string — chatMessageToolQueuedCount
  ///
  /// In en, this message translates to:
  /// **'{count} queued'**
  String chatMessageToolQueuedCount(int count);

  /// Kilo-Walk UI string — chatMessageToolRunningCount
  ///
  /// In en, this message translates to:
  /// **'{count} running'**
  String chatMessageToolRunningCount(int count);

  /// Kilo-Walk UI string — chatMessageToolStatusInProgress
  ///
  /// In en, this message translates to:
  /// **'In progress'**
  String get chatMessageToolStatusInProgress;

  /// Kilo-Walk UI string — chatMessageToolStatusNeedsAttention
  ///
  /// In en, this message translates to:
  /// **'Needs attention'**
  String get chatMessageToolStatusNeedsAttention;

  /// Kilo-Walk UI string — chatMessageToolStatusQueued
  ///
  /// In en, this message translates to:
  /// **'Queued'**
  String get chatMessageToolStatusQueued;

  /// Kilo-Walk UI string — chatMessageYou
  ///
  /// In en, this message translates to:
  /// **'You'**
  String get chatMessageYou;

  /// Kilo-Walk UI string — chatModelLockedSubConversation
  ///
  /// In en, this message translates to:
  /// **'Model locked in sub-conversation'**
  String get chatModelLockedSubConversation;

  /// Kilo-Walk UI string — chatNewChat
  ///
  /// In en, this message translates to:
  /// **'New Chat'**
  String get chatNewChat;

  /// Kilo-Walk UI string — chatNewChatTourDescription
  ///
  /// In en, this message translates to:
  /// **'Start a new conversation here.'**
  String get chatNewChatTourDescription;

  /// Kilo-Walk UI string — chatNewChatTourTitle
  ///
  /// In en, this message translates to:
  /// **'New chat'**
  String get chatNewChatTourTitle;

  /// Kilo-Walk UI string — chatNoConversationsInProject
  ///
  /// In en, this message translates to:
  /// **'No conversations in this project.'**
  String get chatNoConversationsInProject;

  /// Kilo-Walk UI string — chatNoServerYet
  ///
  /// In en, this message translates to:
  /// **'No server configured yet'**
  String get chatNoServerYet;

  /// Kilo-Walk UI string — chatNoSessionSelected
  ///
  /// In en, this message translates to:
  /// **'Select or create a conversation to start chatting'**
  String get chatNoSessionSelected;

  /// Kilo-Walk UI string — chatNoSubConversationFound
  ///
  /// In en, this message translates to:
  /// **'No sub-conversation found for this task.'**
  String get chatNoSubConversationFound;

  /// Kilo-Walk UI string — chatOpenFiles
  ///
  /// In en, this message translates to:
  /// **'Open Files'**
  String get chatOpenFiles;

  /// Kilo-Walk UI string — chatOpenProject
  ///
  /// In en, this message translates to:
  /// **'Open project'**
  String get chatOpenProject;

  /// Kilo-Walk UI string — chatOpenProjectFolder
  ///
  /// In en, this message translates to:
  /// **'Open project folder...'**
  String get chatOpenProjectFolder;

  /// Kilo-Walk UI string — chatOpenProjectToLoad
  ///
  /// In en, this message translates to:
  /// **'Open project to load conversations.'**
  String get chatOpenProjectToLoad;

  /// Kilo-Walk UI string — chatOpenSidebar
  ///
  /// In en, this message translates to:
  /// **'Open sidebar'**
  String get chatOpenSidebar;

  /// Kilo-Walk UI string — chatPageStatusAutomaticCompactionExplanation
  ///
  /// In en, this message translates to:
  /// **'Automatic compaction happens as context usage grows.'**
  String get chatPageStatusAutomaticCompactionExplanation;

  /// Kilo-Walk UI string — chatPageStatusCompactNow
  ///
  /// In en, this message translates to:
  /// **'Compact now'**
  String get chatPageStatusCompactNow;

  /// Kilo-Walk UI string — chatPageStatusCompacting
  ///
  /// In en, this message translates to:
  /// **'Compacting...'**
  String get chatPageStatusCompacting;

  /// Kilo-Walk UI string — chatPageStatusCompactingContextNow
  ///
  /// In en, this message translates to:
  /// **'Compacting context now...'**
  String get chatPageStatusCompactingContextNow;

  /// Kilo-Walk UI string — chatPageStatusContextCompacted
  ///
  /// In en, this message translates to:
  /// **'Context compacted'**
  String get chatPageStatusContextCompacted;

  /// Kilo-Walk UI string — chatPageStatusContextUsage
  ///
  /// In en, this message translates to:
  /// **'Context usage'**
  String get chatPageStatusContextUsage;

  /// Kilo-Walk UI string — chatPageStatusCost
  ///
  /// In en, this message translates to:
  /// **'Cost'**
  String get chatPageStatusCost;

  /// Kilo-Walk UI string — chatPageStatusFailedToCompactContext
  ///
  /// In en, this message translates to:
  /// **'Failed to compact context'**
  String get chatPageStatusFailedToCompactContext;

  /// Kilo-Walk UI string — chatPageStatusLimit
  ///
  /// In en, this message translates to:
  /// **'Limit'**
  String get chatPageStatusLimit;

  /// Kilo-Walk UI string — chatPageStatusManageServers
  ///
  /// In en, this message translates to:
  /// **'Manage Servers'**
  String get chatPageStatusManageServers;

  /// Kilo-Walk UI string — chatPageStatusSaver
  ///
  /// In en, this message translates to:
  /// **'Saver'**
  String get chatPageStatusSaver;

  /// Kilo-Walk UI string — chatPageStatusServer
  ///
  /// In en, this message translates to:
  /// **'Server'**
  String get chatPageStatusServer;

  /// Kilo-Walk UI string — chatPageStatusSwitchServer
  ///
  /// In en, this message translates to:
  /// **'Switch Server'**
  String get chatPageStatusSwitchServer;

  /// Kilo-Walk UI string — chatPageStatusTokens
  ///
  /// In en, this message translates to:
  /// **'Tokens'**
  String get chatPageStatusTokens;

  /// Kilo-Walk UI string — chatPageStatusUsage
  ///
  /// In en, this message translates to:
  /// **'Usage'**
  String get chatPageStatusUsage;

  /// Kilo-Walk UI string — chatPageStatusUsagePercent
  ///
  /// In en, this message translates to:
  /// **'{usagePercent}'**
  String chatPageStatusUsagePercent(int usagePercent);

  /// Kilo-Walk UI string — chatPermissionAutoApproveOff
  ///
  /// In en, this message translates to:
  /// **'Permission auto-approve is off'**
  String get chatPermissionAutoApproveOff;

  /// Kilo-Walk UI string — chatPermissionAutoApproveOn
  ///
  /// In en, this message translates to:
  /// **'Permission auto-approve is on'**
  String get chatPermissionAutoApproveOn;

  /// Kilo-Walk UI string — chatProjectContext
  ///
  /// In en, this message translates to:
  /// **'Project Context'**
  String get chatProjectContext;

  /// Kilo-Walk UI string — chatProjectContext2
  ///
  /// In en, this message translates to:
  /// **'Project context'**
  String get chatProjectContext2;

  /// Kilo-Walk UI string — chatRealtimeGlobalEvent
  ///
  /// In en, this message translates to:
  /// **'global event'**
  String get chatRealtimeGlobalEvent;

  /// Kilo-Walk UI string — chatRealtimeGlobalEventReason
  ///
  /// In en, this message translates to:
  /// **'global event ({reason})'**
  String chatRealtimeGlobalEventReason(String reason);

  /// Kilo-Walk UI string — chatRealtimeGlobalEventStale
  ///
  /// In en, this message translates to:
  /// **'global event (stale generation)'**
  String get chatRealtimeGlobalEventStale;

  /// Kilo-Walk UI string — chatRealtimeMessageStreamReason
  ///
  /// In en, this message translates to:
  /// **'message stream ({reason})'**
  String chatRealtimeMessageStreamReason(String reason);

  /// Kilo-Walk UI string — chatRealtimeRealtimeEvent
  ///
  /// In en, this message translates to:
  /// **'realtime event'**
  String get chatRealtimeRealtimeEvent;

  /// Kilo-Walk UI string — chatRealtimeRealtimeEventReason
  ///
  /// In en, this message translates to:
  /// **'realtime event ({reason})'**
  String chatRealtimeRealtimeEventReason(String reason);

  /// Kilo-Walk UI string — chatRealtimeRealtimeEventStale
  ///
  /// In en, this message translates to:
  /// **'realtime event (stale generation)'**
  String get chatRealtimeRealtimeEventStale;

  /// Kilo-Walk UI string — chatRealtimeReconnectingServerTry
  ///
  /// In en, this message translates to:
  /// **'Reconnecting to the server. Try again in a moment.'**
  String get chatRealtimeReconnectingServerTry;

  /// Kilo-Walk UI string — chatReasoning
  ///
  /// In en, this message translates to:
  /// **'Reasoning...'**
  String get chatReasoning;

  /// Kilo-Walk UI string — chatRecentSessions
  ///
  /// In en, this message translates to:
  /// **'Recent sessions'**
  String get chatRecentSessions;

  /// Kilo-Walk UI string — chatRecentSessionsToggle
  ///
  /// In en, this message translates to:
  /// **'Recent sessions'**
  String get chatRecentSessionsToggle;

  /// Kilo-Walk UI string — chatRedoLastTurn
  ///
  /// In en, this message translates to:
  /// **'Redo last undone turn'**
  String get chatRedoLastTurn;

  /// Kilo-Walk UI string — chatRedoNothing
  ///
  /// In en, this message translates to:
  /// **'Nothing to redo in this session'**
  String get chatRedoNothing;

  /// Kilo-Walk UI string — chatRefresh
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get chatRefresh;

  /// Kilo-Walk UI string — chatRefreshConversation
  ///
  /// In en, this message translates to:
  /// **'Could not refresh this conversation'**
  String get chatRefreshConversation;

  /// Kilo-Walk UI string — chatRefreshProjects
  ///
  /// In en, this message translates to:
  /// **'Refresh projects'**
  String get chatRefreshProjects;

  /// Kilo-Walk UI string — chatRefreshSessionDetails
  ///
  /// In en, this message translates to:
  /// **'Refresh session details'**
  String get chatRefreshSessionDetails;

  /// Kilo-Walk UI string — chatRemoveDisplayNameHistory
  ///
  /// In en, this message translates to:
  /// **'Remove {displayName} from history'**
  String chatRemoveDisplayNameHistory(String displayName);

  /// Kilo-Walk UI string — chatRetry
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get chatRetry;

  /// Kilo-Walk UI string — chatRetry2
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get chatRetry2;

  /// Kilo-Walk UI string — chatRetryRefresh
  ///
  /// In en, this message translates to:
  /// **'Retry refresh'**
  String get chatRetryRefresh;

  /// Kilo-Walk UI string — chatRetryingModelRequest
  ///
  /// In en, this message translates to:
  /// **'Retrying model request...'**
  String get chatRetryingModelRequest;

  /// Kilo-Walk UI string — chatReturnToMainConversation
  ///
  /// In en, this message translates to:
  /// **'Return to main conversation'**
  String get chatReturnToMainConversation;

  /// Kilo-Walk UI string — chatReturnToParentConversation
  ///
  /// In en, this message translates to:
  /// **'Return to parent conversation'**
  String get chatReturnToParentConversation;

  /// Kilo-Walk UI string — chatReviewChanges
  ///
  /// In en, this message translates to:
  /// **'Review changes'**
  String get chatReviewChanges;

  /// Kilo-Walk UI string — chatSearchConversations
  ///
  /// In en, this message translates to:
  /// **'Search conversations'**
  String get chatSearchConversations;

  /// Kilo-Walk UI string — chatSearchNextResult
  ///
  /// In en, this message translates to:
  /// **'Next result'**
  String get chatSearchNextResult;

  /// Kilo-Walk UI string — chatSearchNoResults
  ///
  /// In en, this message translates to:
  /// **'No results'**
  String get chatSearchNoResults;

  /// Kilo-Walk UI string — chatSearchPreviousResult
  ///
  /// In en, this message translates to:
  /// **'Previous result'**
  String get chatSearchPreviousResult;

  /// Kilo-Walk UI string — chatSearchResultCount
  ///
  /// In en, this message translates to:
  /// **'Message {current} of {total}'**
  String chatSearchResultCount(int current, int total);

  /// Kilo-Walk UI string — chatSearchTimeline
  ///
  /// In en, this message translates to:
  /// **'Search timeline'**
  String get chatSearchTimeline;

  /// Kilo-Walk UI string — chatSelectDirectory
  ///
  /// In en, this message translates to:
  /// **'Select directory'**
  String get chatSelectDirectory;

  /// Kilo-Walk UI string — chatSelectOrCreate
  ///
  /// In en, this message translates to:
  /// **'Select or create a conversation to start chatting'**
  String get chatSelectOrCreate;

  /// Kilo-Walk UI string — chatSelectProjectBelow
  ///
  /// In en, this message translates to:
  /// **'Select a project below.'**
  String get chatSelectProjectBelow;

  /// Kilo-Walk UI string — chatServerSelectedModel
  ///
  /// In en, this message translates to:
  /// **'Server-selected model'**
  String get chatServerSelectedModel;

  /// Kilo-Walk UI string — chatSessionActions
  ///
  /// In en, this message translates to:
  /// **'Session actions'**
  String get chatSessionActions;

  /// Kilo-Walk UI string — chatSessionChatSessionSession
  ///
  /// In en, this message translates to:
  /// **'Chat session: {title}'**
  String chatSessionChatSessionSession(String title);

  /// Kilo-Walk UI string — chatSessionConversationNextAction
  ///
  /// In en, this message translates to:
  /// **'Conversation {nextAction}'**
  String chatSessionConversationNextAction(String nextAction);

  /// Kilo-Walk UI string — chatSessionConversations
  ///
  /// In en, this message translates to:
  /// **'No conversations'**
  String get chatSessionConversations;

  /// Kilo-Walk UI string — chatSessionCreateConversationStart
  ///
  /// In en, this message translates to:
  /// **'Create a new conversation to start chatting'**
  String get chatSessionCreateConversationStart;

  /// Kilo-Walk UI string — chatSessionTabsToggle
  ///
  /// In en, this message translates to:
  /// **'Session tabs'**
  String get chatSessionTabsToggle;

  /// Kilo-Walk UI string — chatSessionsLength
  ///
  /// In en, this message translates to:
  /// **'{length}'**
  String chatSessionsLength(int length);

  /// Kilo-Walk UI string — chatSetUpServer
  ///
  /// In en, this message translates to:
  /// **'Set up server'**
  String get chatSetUpServer;

  /// Kilo-Walk UI string — chatSettings
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get chatSettings;

  /// Kilo-Walk UI string — chatShortcutsCloseApp
  ///
  /// In en, this message translates to:
  /// **'Close app using platform close behavior'**
  String get chatShortcutsCloseApp;

  /// Kilo-Walk UI string — chatShortcutsCycleModels
  ///
  /// In en, this message translates to:
  /// **'Cycle recent models'**
  String get chatShortcutsCycleModels;

  /// Kilo-Walk UI string — chatShortcutsCycleVariant
  ///
  /// In en, this message translates to:
  /// **'Cycle model variant'**
  String get chatShortcutsCycleVariant;

  /// Kilo-Walk UI string — chatShortcutsFocusInput
  ///
  /// In en, this message translates to:
  /// **'Focus message input'**
  String get chatShortcutsFocusInput;

  /// Kilo-Walk UI string — chatShortcutsFocusInputCloseDrawer
  ///
  /// In en, this message translates to:
  /// **'Focus input (or close drawer when open)'**
  String get chatShortcutsFocusInputCloseDrawer;

  /// Kilo-Walk UI string — chatShortcutsForceExit
  ///
  /// In en, this message translates to:
  /// **'Force-exit the app'**
  String get chatShortcutsForceExit;

  /// Kilo-Walk UI string — chatShortcutsNewConversation
  ///
  /// In en, this message translates to:
  /// **'New conversation'**
  String get chatShortcutsNewConversation;

  /// Kilo-Walk UI string — chatShortcutsNextAgent
  ///
  /// In en, this message translates to:
  /// **'Next agent'**
  String get chatShortcutsNextAgent;

  /// Kilo-Walk UI string — chatShortcutsOpenSettings
  ///
  /// In en, this message translates to:
  /// **'Open settings'**
  String get chatShortcutsOpenSettings;

  /// Kilo-Walk UI string — chatShortcutsPreviousAgent
  ///
  /// In en, this message translates to:
  /// **'Previous agent'**
  String get chatShortcutsPreviousAgent;

  /// Kilo-Walk UI string — chatShortcutsQuickOpen
  ///
  /// In en, this message translates to:
  /// **'Quick open files'**
  String get chatShortcutsQuickOpen;

  /// Kilo-Walk UI string — chatShortcutsRefreshChat
  ///
  /// In en, this message translates to:
  /// **'Refresh chat data'**
  String get chatShortcutsRefreshChat;

  /// Kilo-Walk UI string — chatShortcutsStartStopVoice
  ///
  /// In en, this message translates to:
  /// **'Start or stop voice input'**
  String get chatShortcutsStartStopVoice;

  /// Kilo-Walk UI string — chatShortcutsStopResponse
  ///
  /// In en, this message translates to:
  /// **'Stop active response (while responding)'**
  String get chatShortcutsStopResponse;

  /// Kilo-Walk UI string — chatSidebarAccess
  ///
  /// In en, this message translates to:
  /// **'Sidebar access'**
  String get chatSidebarAccess;

  /// Kilo-Walk UI string — chatSortMostRecent
  ///
  /// In en, this message translates to:
  /// **'Most Recent'**
  String get chatSortMostRecent;

  /// Kilo-Walk UI string — chatSortOldest
  ///
  /// In en, this message translates to:
  /// **'Oldest'**
  String get chatSortOldest;

  /// Kilo-Walk UI string — chatSortRecent
  ///
  /// In en, this message translates to:
  /// **'Recent'**
  String get chatSortRecent;

  /// Kilo-Walk UI string — chatSortSessions
  ///
  /// In en, this message translates to:
  /// **'Sort sessions'**
  String get chatSortSessions;

  /// Kilo-Walk UI string — chatSortTitle
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get chatSortTitle;

  /// Kilo-Walk UI string — chatStartVoiceInput
  ///
  /// In en, this message translates to:
  /// **'Start voice input'**
  String get chatStartVoiceInput;

  /// Kilo-Walk UI string — chatStartingVoiceInput
  ///
  /// In en, this message translates to:
  /// **'Starting voice input'**
  String get chatStartingVoiceInput;

  /// Kilo-Walk UI string — chatStatusBusy
  ///
  /// In en, this message translates to:
  /// **'Status: Busy'**
  String get chatStatusBusy;

  /// Kilo-Walk UI string — chatStatusPatching
  ///
  /// In en, this message translates to:
  /// **'Patching'**
  String get chatStatusPatching;

  /// Kilo-Walk UI string — chatStatusPatchingMultipleFiles
  ///
  /// In en, this message translates to:
  /// **'Patching {count} files'**
  String chatStatusPatchingMultipleFiles(int count);

  /// Kilo-Walk UI string — chatStatusPatchingOneFile
  ///
  /// In en, this message translates to:
  /// **'Patching 1 file'**
  String get chatStatusPatchingOneFile;

  /// Kilo-Walk UI string — chatStatusRetry
  ///
  /// In en, this message translates to:
  /// **'Status: Retry'**
  String get chatStatusRetry;

  /// Kilo-Walk UI string — chatStatusRetryCount
  ///
  /// In en, this message translates to:
  /// **'Status: Retry #{count}'**
  String chatStatusRetryCount(int count);

  /// Kilo-Walk UI string — chatStatusSubsession
  ///
  /// In en, this message translates to:
  /// **'Subsession'**
  String get chatStatusSubsession;

  /// Kilo-Walk UI string — chatStatusThinking
  ///
  /// In en, this message translates to:
  /// **'Thinking...'**
  String get chatStatusThinking;

  /// Kilo-Walk UI string — chatStopVoiceInput
  ///
  /// In en, this message translates to:
  /// **'Stop voice input'**
  String get chatStopVoiceInput;

  /// Kilo-Walk UI string — chatSyncLabel
  ///
  /// In en, this message translates to:
  /// **'Sync: {label}'**
  String chatSyncLabel(String label);

  /// Kilo-Walk UI string — chatTasks
  ///
  /// In en, this message translates to:
  /// **'Tasks'**
  String get chatTasks;

  /// Kilo-Walk UI string — chatTasksAvailableSession
  ///
  /// In en, this message translates to:
  /// **'No tasks are available for this session.'**
  String get chatTasksAvailableSession;

  /// Kilo-Walk UI string — chatTipAcceptanceCriteria
  ///
  /// In en, this message translates to:
  /// **'Tip: Add acceptance criteria for larger changes'**
  String get chatTipAcceptanceCriteria;

  /// Kilo-Walk UI string — chatTipAskForPlan
  ///
  /// In en, this message translates to:
  /// **'Tip: Ask for a plan first on large tasks'**
  String get chatTipAskForPlan;

  /// Kilo-Walk UI string — chatTipBeSpecific
  ///
  /// In en, this message translates to:
  /// **'Tip: Be specific — shorter prompts get faster answers'**
  String get chatTipBeSpecific;

  /// Kilo-Walk UI string — chatTipBreakTasks
  ///
  /// In en, this message translates to:
  /// **'Tip: Break large tasks into smaller prompts'**
  String get chatTipBreakTasks;

  /// Kilo-Walk UI string — chatTipCompareOptions
  ///
  /// In en, this message translates to:
  /// **'Tip: Ask for alternatives when tradeoffs are unclear'**
  String get chatTipCompareOptions;

  /// Kilo-Walk UI string — chatTipContextKnob
  ///
  /// In en, this message translates to:
  /// **'Tip: Tap the context knob to see usage details'**
  String get chatTipContextKnob;

  /// Kilo-Walk UI string — chatTipDefineVerification
  ///
  /// In en, this message translates to:
  /// **'Tip: Say which tests or checks should pass'**
  String get chatTipDefineVerification;

  /// Kilo-Walk UI string — chatTipLongPressSend
  ///
  /// In en, this message translates to:
  /// **'Tip: Long-press Send to insert a newline'**
  String get chatTipLongPressSend;

  /// Kilo-Walk UI string — chatTipMentionFiles
  ///
  /// In en, this message translates to:
  /// **'Tip: Use @ to mention files in your prompt'**
  String get chatTipMentionFiles;

  /// Kilo-Walk UI string — chatTipNameRelevantFiles
  ///
  /// In en, this message translates to:
  /// **'Tip: Name relevant files, screens, or commands'**
  String get chatTipNameRelevantFiles;

  /// Kilo-Walk UI string — chatTipProvideContext
  ///
  /// In en, this message translates to:
  /// **'Tip: Provide context — paste error messages and logs'**
  String get chatTipProvideContext;

  /// Kilo-Walk UI string — chatTipRenameConversation
  ///
  /// In en, this message translates to:
  /// **'Tip: Tap the title to rename a conversation'**
  String get chatTipRenameConversation;

  /// Kilo-Walk UI string — chatTipRequestDocs
  ///
  /// In en, this message translates to:
  /// **'Tip: Ask for docs updates when behavior changes'**
  String get chatTipRequestDocs;

  /// Kilo-Walk UI string — chatTipShareAttempts
  ///
  /// In en, this message translates to:
  /// **'Tip: Share what you tried and the exact error'**
  String get chatTipShareAttempts;

  /// Kilo-Walk UI string — chatTipShellCommands
  ///
  /// In en, this message translates to:
  /// **'Tip: Use ! at the start to run shell commands'**
  String get chatTipShellCommands;

  /// Kilo-Walk UI string — chatTipSlashCommands
  ///
  /// In en, this message translates to:
  /// **'Tip: Use / to access slash commands'**
  String get chatTipSlashCommands;

  /// Kilo-Walk UI string — chatTipStartWithGoal
  ///
  /// In en, this message translates to:
  /// **'Tip: Start with the end goal'**
  String get chatTipStartWithGoal;

  /// Kilo-Walk UI string — chatTipStateConstraints
  ///
  /// In en, this message translates to:
  /// **'Tip: State constraints the agent must preserve'**
  String get chatTipStateConstraints;

  /// Kilo-Walk UI string — chatTipStepByStep
  ///
  /// In en, this message translates to:
  /// **'Tip: Ask for step-by-step when debugging complex issues'**
  String get chatTipStepByStep;

  /// Kilo-Walk UI string — chatTipUseFocusedAgents
  ///
  /// In en, this message translates to:
  /// **'Tip: Pick a focused agent for plan, review, or build'**
  String get chatTipUseFocusedAgents;

  /// Kilo-Walk UI string — chatToggleSidebars
  ///
  /// In en, this message translates to:
  /// **'Toggle sidebars'**
  String get chatToggleSidebars;

  /// Kilo-Walk UI string — chatTokensLabel
  ///
  /// In en, this message translates to:
  /// **'Tokens: {total}'**
  String chatTokensLabel(int total);

  /// Kilo-Walk UI string — chatTourProjectsConversations
  ///
  /// In en, this message translates to:
  /// **'Use this button to open your projects and conversations.'**
  String get chatTourProjectsConversations;

  /// Kilo-Walk UI string — chatTourSidebarProjectTools
  ///
  /// In en, this message translates to:
  /// **'Use this menu to show the conversations sidebar and project tools.'**
  String get chatTourSidebarProjectTools;

  /// Kilo-Walk UI string — chatTourSwitchFolders
  ///
  /// In en, this message translates to:
  /// **'Use this button to switch project folders and context.'**
  String get chatTourSwitchFolders;

  /// Kilo-Walk UI string — chatUndoLastTurn
  ///
  /// In en, this message translates to:
  /// **'Undo last turn'**
  String get chatUndoLastTurn;

  /// Kilo-Walk UI string — chatUndoNothing
  ///
  /// In en, this message translates to:
  /// **'Nothing to undo in this session'**
  String get chatUndoNothing;

  /// Kilo-Walk UI string — chatUseCurrent
  ///
  /// In en, this message translates to:
  /// **'Use current'**
  String get chatUseCurrent;

  /// Kilo-Walk UI string — chatWaitingForNetworkConnection
  ///
  /// In en, this message translates to:
  /// **'Waiting for network connection...'**
  String get chatWaitingForNetworkConnection;

  /// Kilo-Walk UI string — chatWelcomeMessage
  ///
  /// In en, this message translates to:
  /// **'Hello! I am your AI assistant.'**
  String get chatWelcomeMessage;

  /// Kilo-Walk UI string — chatWelcomeSubmessage
  ///
  /// In en, this message translates to:
  /// **'How can I help you today?'**
  String get chatWelcomeSubmessage;

  /// Kilo-Walk UI string — chatWorkBoundedPanelExplanation
  ///
  /// In en, this message translates to:
  /// **'Latest tool activity stays inside this bounded panel to keep the chat viewport stable.'**
  String get chatWorkBoundedPanelExplanation;

  /// Kilo-Walk UI string — chatWorkExpand
  ///
  /// In en, this message translates to:
  /// **'Expand'**
  String get chatWorkExpand;

  /// Kilo-Walk UI string — chatWorkHide
  ///
  /// In en, this message translates to:
  /// **'Hide'**
  String get chatWorkHide;

  /// Kilo-Walk UI string — chatWorkMessageOne
  ///
  /// In en, this message translates to:
  /// **'1 work message'**
  String get chatWorkMessageOne;

  /// Kilo-Walk UI string — chatWorkMessagesMultiple
  ///
  /// In en, this message translates to:
  /// **'{count} work messages'**
  String chatWorkMessagesMultiple(int count);

  /// Kilo-Walk UI string — chatWorkShow
  ///
  /// In en, this message translates to:
  /// **'Show'**
  String get chatWorkShow;

  /// Kilo-Walk UI string — commonCancel
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get commonCancel;

  /// Kilo-Walk UI string — commonCopiedToClipboard
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get commonCopiedToClipboard;

  /// Kilo-Walk UI string — commonDelete
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get commonDelete;

  /// Kilo-Walk UI string — commonFile
  ///
  /// In en, this message translates to:
  /// **'File'**
  String get commonFile;

  /// Kilo-Walk UI string — commonReset
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get commonReset;

  /// Kilo-Walk UI string — commonSave
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get commonSave;

  /// Kilo-Walk UI string — compactionAutomatic
  ///
  /// In en, this message translates to:
  /// **'automatic'**
  String get compactionAutomatic;

  /// Kilo-Walk UI string — compactionManual
  ///
  /// In en, this message translates to:
  /// **'manual'**
  String get compactionManual;

  /// Kilo-Walk UI string — composerAddAttachment
  ///
  /// In en, this message translates to:
  /// **'Add attachment'**
  String get composerAddAttachment;

  /// Kilo-Walk UI string — composerAttachFiles
  ///
  /// In en, this message translates to:
  /// **'Attach'**
  String get composerAttachFiles;

  /// Kilo-Walk UI string — composerCannedAppendAtCursor
  ///
  /// In en, this message translates to:
  /// **'Append at cursor'**
  String get composerCannedAppendAtCursor;

  /// Kilo-Walk UI string — composerCannedLabel
  ///
  /// In en, this message translates to:
  /// **'Label (optional)'**
  String get composerCannedLabel;

  /// Kilo-Walk UI string — composerCannedNoReplies
  ///
  /// In en, this message translates to:
  /// **'No quick replies yet.'**
  String get composerCannedNoReplies;

  /// Kilo-Walk UI string — composerCannedReplace
  ///
  /// In en, this message translates to:
  /// **'Replace'**
  String get composerCannedReplace;

  /// Kilo-Walk UI string — composerCannedSave
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get composerCannedSave;

  /// Kilo-Walk UI string — composerCannedScopeGlobal
  ///
  /// In en, this message translates to:
  /// **'Global'**
  String get composerCannedScopeGlobal;

  /// Kilo-Walk UI string — composerCannedScopeProject
  ///
  /// In en, this message translates to:
  /// **'Project-only'**
  String get composerCannedScopeProject;

  /// Kilo-Walk UI string — composerCannedSendAutomatically
  ///
  /// In en, this message translates to:
  /// **'Send automatically'**
  String get composerCannedSendAutomatically;

  /// Kilo-Walk UI string — composerCannedText
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get composerCannedText;

  /// Kilo-Walk UI string — composerChatInput
  ///
  /// In en, this message translates to:
  /// **'Chat input'**
  String get composerChatInput;

  /// Kilo-Walk UI string — composerDeleteAction
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get composerDeleteAction;

  /// Kilo-Walk UI string — composerDropHint
  ///
  /// In en, this message translates to:
  /// **'Drop images or PDFs to attach'**
  String get composerDropHint;

  /// Kilo-Walk UI string — composerPastedImageName
  ///
  /// In en, this message translates to:
  /// **'Pasted image'**
  String get composerPastedImageName;

  /// Kilo-Walk UI string — composerEdit
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get composerEdit;

  /// Kilo-Walk UI string — composerExtras
  ///
  /// In en, this message translates to:
  /// **'Extras'**
  String get composerExtras;

  /// Kilo-Walk UI string — composerExtrasHide
  ///
  /// In en, this message translates to:
  /// **'Hide extras'**
  String get composerExtrasHide;

  /// Kilo-Walk UI string — composerNewQuickReply
  ///
  /// In en, this message translates to:
  /// **'New quick reply'**
  String get composerNewQuickReply;

  /// Kilo-Walk UI string — composerSelectImages
  ///
  /// In en, this message translates to:
  /// **'Select Images'**
  String get composerSelectImages;

  /// Kilo-Walk UI string — composerSelectPdf
  ///
  /// In en, this message translates to:
  /// **'Select PDF'**
  String get composerSelectPdf;

  /// Kilo-Walk UI string — composerSend
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get composerSend;

  /// Kilo-Walk UI string — composerShellMode
  ///
  /// In en, this message translates to:
  /// **'Shell mode'**
  String get composerShellMode;

  /// Kilo-Walk UI string — desktopWindowClose
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get desktopWindowClose;

  /// Kilo-Walk UI string — desktopWindowMaximize
  ///
  /// In en, this message translates to:
  /// **'Maximize'**
  String get desktopWindowMaximize;

  /// Kilo-Walk UI string — desktopWindowMinimize
  ///
  /// In en, this message translates to:
  /// **'Minimize'**
  String get desktopWindowMinimize;

  /// Kilo-Walk UI string — desktopWindowRestore
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get desktopWindowRestore;

  /// Kilo-Walk UI string — dialogDownload
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get dialogDownload;

  /// Kilo-Walk UI string — dialogLanguage
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get dialogLanguage;

  /// Kilo-Walk UI string — dialogMoonshineModelSize
  ///
  /// In en, this message translates to:
  /// **'Model size'**
  String get dialogMoonshineModelSize;

  /// Kilo-Walk UI string — dialogMoonshineVoiceSetup
  ///
  /// In en, this message translates to:
  /// **'Moonshine Voice Setup'**
  String get dialogMoonshineVoiceSetup;

  /// Kilo-Walk UI string — dialogParakeetModel
  ///
  /// In en, this message translates to:
  /// **'Parakeet model'**
  String get dialogParakeetModel;

  /// Kilo-Walk UI string — dialogParakeetVoiceSetup
  ///
  /// In en, this message translates to:
  /// **'Parakeet Voice Setup'**
  String get dialogParakeetVoiceSetup;

  /// Kilo-Walk UI string — dialogSenseVoiceModel
  ///
  /// In en, this message translates to:
  /// **'SenseVoice model'**
  String get dialogSenseVoiceModel;

  /// Kilo-Walk UI string — dialogSenseVoiceSetup
  ///
  /// In en, this message translates to:
  /// **'SenseVoice Setup'**
  String get dialogSenseVoiceSetup;

  /// Kilo-Walk UI string — dialogVoiceInputSetup
  ///
  /// In en, this message translates to:
  /// **'Voice Input Setup'**
  String get dialogVoiceInputSetup;

  /// Kilo-Walk UI string — errorAnErrorOccurred
  ///
  /// In en, this message translates to:
  /// **'An error occurred'**
  String get errorAnErrorOccurred;

  /// Kilo-Walk UI string — errorAuthRequired
  ///
  /// In en, this message translates to:
  /// **'Authentication required'**
  String get errorAuthRequired;

  /// Kilo-Walk UI string — errorAuthRequiredDesc
  ///
  /// In en, this message translates to:
  /// **'Authentication failed. Reconnect the provider and try again.'**
  String get errorAuthRequiredDesc;

  /// Kilo-Walk UI string — errorConnectionFailed
  ///
  /// In en, this message translates to:
  /// **'Connection failed'**
  String get errorConnectionFailed;

  /// Kilo-Walk UI string — errorConnectionFailedDesc
  ///
  /// In en, this message translates to:
  /// **'Unable to reach the server. Check connection and server status.'**
  String get errorConnectionFailedDesc;

  /// Kilo-Walk UI string — errorFormatAuthenticationFailedReconnect
  ///
  /// In en, this message translates to:
  /// **'Authentication failed. Reconnect the provider and try again.'**
  String get errorFormatAuthenticationFailedReconnect;

  /// Kilo-Walk UI string — errorFormatProviderTemporarilyUnavailable
  ///
  /// In en, this message translates to:
  /// **'Provider temporarily unavailable. Try again shortly.'**
  String get errorFormatProviderTemporarilyUnavailable;

  /// Kilo-Walk UI string — errorFormatQuotaExceededCheck
  ///
  /// In en, this message translates to:
  /// **'Quota exceeded. Check your provider plan or billing.'**
  String get errorFormatQuotaExceededCheck;

  /// Kilo-Walk UI string — errorFormatRateLimitExceeded
  ///
  /// In en, this message translates to:
  /// **'Rate limit exceeded. Wait a moment and try again.'**
  String get errorFormatRateLimitExceeded;

  /// Kilo-Walk UI string — errorFormatServerErrorPlease
  ///
  /// In en, this message translates to:
  /// **'Server error. Please try again.'**
  String get errorFormatServerErrorPlease;

  /// Kilo-Walk UI string — errorFormatServiceTemporarilyUnavailable
  ///
  /// In en, this message translates to:
  /// **'Service temporarily unavailable. The server may be starting up — please try again shortly.'**
  String get errorFormatServiceTemporarilyUnavailable;

  /// Kilo-Walk UI string — errorFormatUnableReachServer
  ///
  /// In en, this message translates to:
  /// **'Unable to reach the server. Check connection and server status.'**
  String get errorFormatUnableReachServer;

  /// Kilo-Walk UI string — errorProviderUnavailable
  ///
  /// In en, this message translates to:
  /// **'Provider unavailable'**
  String get errorProviderUnavailable;

  /// Kilo-Walk UI string — errorProviderUnavailableDesc
  ///
  /// In en, this message translates to:
  /// **'Provider temporarily unavailable. Try again shortly.'**
  String get errorProviderUnavailableDesc;

  /// Kilo-Walk UI string — errorQuotaExceeded
  ///
  /// In en, this message translates to:
  /// **'Quota exceeded'**
  String get errorQuotaExceeded;

  /// Kilo-Walk UI string — errorQuotaExceededDesc
  ///
  /// In en, this message translates to:
  /// **'Quota exceeded. Check your provider plan or billing.'**
  String get errorQuotaExceededDesc;

  /// Kilo-Walk UI string — errorRateLimitExceeded
  ///
  /// In en, this message translates to:
  /// **'Rate limit exceeded'**
  String get errorRateLimitExceeded;

  /// Kilo-Walk UI string — errorRateLimitExceededDesc
  ///
  /// In en, this message translates to:
  /// **'Rate limit exceeded. Wait a moment and try again.'**
  String get errorRateLimitExceededDesc;

  /// Kilo-Walk UI string — errorServerError
  ///
  /// In en, this message translates to:
  /// **'Server error'**
  String get errorServerError;

  /// Kilo-Walk UI string — errorServerErrorDesc
  ///
  /// In en, this message translates to:
  /// **'Server error. Please try again.'**
  String get errorServerErrorDesc;

  /// Kilo-Walk UI string — errorServiceUnavailable
  ///
  /// In en, this message translates to:
  /// **'Service unavailable'**
  String get errorServiceUnavailable;

  /// Kilo-Walk UI string — errorServiceUnavailableDesc
  ///
  /// In en, this message translates to:
  /// **'Service temporarily unavailable. The server may be starting up — please try again shortly.'**
  String get errorServiceUnavailableDesc;

  /// Kilo-Walk UI string — fileActionAttachmentDataDecoded
  ///
  /// In en, this message translates to:
  /// **'Attachment data could not be decoded.'**
  String get fileActionAttachmentDataDecoded;

  /// Kilo-Walk UI string — fileActionAttachmentPathEmpty
  ///
  /// In en, this message translates to:
  /// **'Attachment path is empty.'**
  String get fileActionAttachmentPathEmpty;

  /// Kilo-Walk UI string — fileActionAttachmentPayloadEmpty
  ///
  /// In en, this message translates to:
  /// **'Attachment payload is empty.'**
  String get fileActionAttachmentPayloadEmpty;

  /// Kilo-Walk UI string — fileActionAttachmentProvideValid
  ///
  /// In en, this message translates to:
  /// **'Attachment does not provide a valid location.'**
  String get fileActionAttachmentProvideValid;

  /// Kilo-Walk UI string — fileActionAttachmentSavedDevice
  ///
  /// In en, this message translates to:
  /// **'Attachment could not be saved on this device.'**
  String get fileActionAttachmentSavedDevice;

  /// Kilo-Walk UI string — fileActionAttachmentSavedOutputFile
  ///
  /// In en, this message translates to:
  /// **'Attachment saved to {path} and opened.'**
  String fileActionAttachmentSavedOutputFile(String path);

  /// Kilo-Walk UI string — fileActionAttachmentSavedOutputFile2
  ///
  /// In en, this message translates to:
  /// **'Attachment saved to {path}.'**
  String fileActionAttachmentSavedOutputFile2(String path);

  /// Kilo-Walk UI string — fileActionAttachmentSavedSavedPath
  ///
  /// In en, this message translates to:
  /// **'Attachment saved to {savedPath}.'**
  String fileActionAttachmentSavedSavedPath(String savedPath);

  /// Kilo-Walk UI string — fileActionLocalAttachmentFound
  ///
  /// In en, this message translates to:
  /// **'Local attachment was not found on this device.'**
  String get fileActionLocalAttachmentFound;

  /// Kilo-Walk UI string — fileActionSaveCanceled
  ///
  /// In en, this message translates to:
  /// **'Save canceled.'**
  String get fileActionSaveCanceled;

  /// Kilo-Walk UI string — fileActionUnableOpenLocal
  ///
  /// In en, this message translates to:
  /// **'Unable to open the local attachment.'**
  String get fileActionUnableOpenLocal;

  /// Kilo-Walk UI string — filesAddChat
  ///
  /// In en, this message translates to:
  /// **'Add to chat'**
  String get filesAddChat;

  /// Kilo-Walk UI string — filesAutosave
  ///
  /// In en, this message translates to:
  /// **'Autosave'**
  String get filesAutosave;

  /// Kilo-Walk UI string — filesAutosaveOn
  ///
  /// In en, this message translates to:
  /// **'Autosave on'**
  String get filesAutosaveOn;

  /// Kilo-Walk UI string — filesAutosaveOff
  ///
  /// In en, this message translates to:
  /// **'Autosave off'**
  String get filesAutosaveOff;

  /// Kilo-Walk UI string — filesRedo
  ///
  /// In en, this message translates to:
  /// **'Redo'**
  String get filesRedo;

  /// Kilo-Walk UI string — filesUndo
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get filesUndo;

  /// Kilo-Walk UI string — filesBinaryFilePreview
  ///
  /// In en, this message translates to:
  /// **'Binary file preview is not available.'**
  String get filesBinaryFilePreview;

  /// Kilo-Walk UI string — filesClear
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get filesClear;

  /// Kilo-Walk UI string — filesContents
  ///
  /// In en, this message translates to:
  /// **'Contents'**
  String get filesContents;

  /// Kilo-Walk UI string — filesDuplicate
  ///
  /// In en, this message translates to:
  /// **'Duplicate'**
  String get filesDuplicate;

  /// Kilo-Walk UI string — filesDuplicated
  ///
  /// In en, this message translates to:
  /// **'File duplicated'**
  String get filesDuplicated;

  /// Kilo-Walk UI string — filesFileEmpty
  ///
  /// In en, this message translates to:
  /// **'File is empty.'**
  String get filesFileEmpty;

  /// Kilo-Walk UI string — filesAlreadyExists
  ///
  /// In en, this message translates to:
  /// **'A file or folder with that name already exists.'**
  String get filesAlreadyExists;

  /// Kilo-Walk UI string — filesCopyPath
  ///
  /// In en, this message translates to:
  /// **'Copy path'**
  String get filesCopyPath;

  /// Kilo-Walk UI string — filesCreateFileTitle
  ///
  /// In en, this message translates to:
  /// **'Create file'**
  String get filesCreateFileTitle;

  /// Kilo-Walk UI string — filesCreateFolderTitle
  ///
  /// In en, this message translates to:
  /// **'Create folder'**
  String get filesCreateFolderTitle;

  /// Kilo-Walk UI string — filesDelete
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get filesDelete;

  /// Kilo-Walk UI string — filesDeleteConfirm
  ///
  /// In en, this message translates to:
  /// **'Delete {name}? This cannot be undone. Folders and their contents will be deleted.'**
  String filesDeleteConfirm(String name);

  /// Kilo-Walk UI string — filesDeleteTitle
  ///
  /// In en, this message translates to:
  /// **'Delete {name}'**
  String filesDeleteTitle(String name);

  /// Kilo-Walk UI string — filesFilesFound
  ///
  /// In en, this message translates to:
  /// **'No files found'**
  String get filesFilesFound;

  /// Kilo-Walk UI string — filesFileCreated
  ///
  /// In en, this message translates to:
  /// **'File created.'**
  String get filesFileCreated;

  /// Kilo-Walk UI string — filesFolderCreated
  ///
  /// In en, this message translates to:
  /// **'Folder created.'**
  String get filesFolderCreated;

  /// Kilo-Walk UI string — filesHideSidebar
  ///
  /// In en, this message translates to:
  /// **'Hide Files sidebar'**
  String get filesHideSidebar;

  /// Kilo-Walk UI string — filesInvalidName
  ///
  /// In en, this message translates to:
  /// **'Enter a valid name without path separators.'**
  String get filesInvalidName;

  /// Kilo-Walk UI string — filesNameHint
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get filesNameHint;

  /// Kilo-Walk UI string — filesNew
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get filesNew;

  /// Kilo-Walk UI string — filesNewFile
  ///
  /// In en, this message translates to:
  /// **'New file'**
  String get filesNewFile;

  /// Kilo-Walk UI string — filesNewFolder
  ///
  /// In en, this message translates to:
  /// **'New folder'**
  String get filesNewFolder;

  /// Kilo-Walk UI string — filesNames
  ///
  /// In en, this message translates to:
  /// **'Names'**
  String get filesNames;

  /// Kilo-Walk UI string — filesQuickOpen
  ///
  /// In en, this message translates to:
  /// **'Quick Open'**
  String get filesQuickOpen;

  /// Kilo-Walk UI string — filesQuickOpenFile
  ///
  /// In en, this message translates to:
  /// **'Quick Open File'**
  String get filesQuickOpenFile;

  /// Kilo-Walk UI string — filesOperationFailed
  ///
  /// In en, this message translates to:
  /// **'File operation failed.'**
  String get filesOperationFailed;

  /// Kilo-Walk UI string — filesOperationUnavailable
  ///
  /// In en, this message translates to:
  /// **'File operations are not available for this server.'**
  String get filesOperationUnavailable;

  /// Kilo-Walk UI string — filesOutsideRoot
  ///
  /// In en, this message translates to:
  /// **'The path is outside the project root.'**
  String get filesOutsideRoot;

  /// Kilo-Walk UI string — filesPathCopied
  ///
  /// In en, this message translates to:
  /// **'Path copied.'**
  String get filesPathCopied;

  /// Kilo-Walk UI string — filesPathMissing
  ///
  /// In en, this message translates to:
  /// **'Path does not exist.'**
  String get filesPathMissing;

  /// Kilo-Walk UI string — filesPermissionDenied
  ///
  /// In en, this message translates to:
  /// **'Permission denied.'**
  String get filesPermissionDenied;

  /// Kilo-Walk UI string — filesRefresh
  ///
  /// In en, this message translates to:
  /// **'Refresh files'**
  String get filesRefresh;

  /// Kilo-Walk UI string — filesRename
  ///
  /// In en, this message translates to:
  /// **'Rename'**
  String get filesRename;

  /// Kilo-Walk UI string — filesRenameTitle
  ///
  /// In en, this message translates to:
  /// **'Rename {name}'**
  String filesRenameTitle(String name);

  /// Kilo-Walk UI string — filesRenamed
  ///
  /// In en, this message translates to:
  /// **'Renamed.'**
  String get filesRenamed;

  /// Kilo-Walk UI string — filesRootDeleteBlocked
  ///
  /// In en, this message translates to:
  /// **'The project root cannot be deleted.'**
  String get filesRootDeleteBlocked;

  /// Kilo-Walk UI string — filesSearchHint
  ///
  /// In en, this message translates to:
  /// **'Search files by name or path'**
  String get filesSearchHint;

  /// Kilo-Walk UI string — filesDeleted
  ///
  /// In en, this message translates to:
  /// **'Deleted.'**
  String get filesDeleted;

  /// Kilo-Walk UI string — filesTitle
  ///
  /// In en, this message translates to:
  /// **'Files'**
  String get filesTitle;

  /// Kilo-Walk UI string — forwardAction
  ///
  /// In en, this message translates to:
  /// **'Forward'**
  String get forwardAction;

  /// Kilo-Walk UI string — forwardAllFailed
  ///
  /// In en, this message translates to:
  /// **'Could not forward to any session'**
  String get forwardAllFailed;

  /// Kilo-Walk UI string — forwardCancel
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get forwardCancel;

  /// Kilo-Walk UI string — forwardDialogSubtitle
  ///
  /// In en, this message translates to:
  /// **'Select one or more conversations'**
  String get forwardDialogSubtitle;

  /// Kilo-Walk UI string — forwardDialogTitle
  ///
  /// In en, this message translates to:
  /// **'Forward to…'**
  String get forwardDialogTitle;

  /// Kilo-Walk UI string — forwardLoading
  ///
  /// In en, this message translates to:
  /// **'Loading sessions…'**
  String get forwardLoading;

  /// Kilo-Walk UI string — forwardNoOpenProjects
  ///
  /// In en, this message translates to:
  /// **'No open projects with sessions'**
  String get forwardNoOpenProjects;

  /// Kilo-Walk UI string — forwardNoProviderModel
  ///
  /// In en, this message translates to:
  /// **'Select a provider and model before forwarding'**
  String get forwardNoProviderModel;

  /// Kilo-Walk UI string — forwardNoSessions
  ///
  /// In en, this message translates to:
  /// **'No recent sessions'**
  String get forwardNoSessions;

  /// Kilo-Walk UI string — forwardPartial
  ///
  /// In en, this message translates to:
  /// **'Forwarded to {success} of {total}'**
  String forwardPartial(int success, int total);

  /// Kilo-Walk UI string — forwardProvenanceLabel
  ///
  /// In en, this message translates to:
  /// **'Forwarded from: {origin}'**
  String forwardProvenanceLabel(String origin);

  /// Kilo-Walk UI string — forwardRetry
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get forwardRetry;

  /// Kilo-Walk UI string — forwardSearchHint
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get forwardSearchHint;

  /// Kilo-Walk UI string — forwardSelectedCount
  ///
  /// In en, this message translates to:
  /// **'{count} selected'**
  String forwardSelectedCount(int count);

  /// Kilo-Walk UI string — forwardSend
  ///
  /// In en, this message translates to:
  /// **'Forward'**
  String get forwardSend;

  /// Kilo-Walk UI string — forwardServerOffline
  ///
  /// In en, this message translates to:
  /// **'Server offline'**
  String get forwardServerOffline;

  /// Kilo-Walk UI string — forwardShortcutHint
  ///
  /// In en, this message translates to:
  /// **'Ctrl+Shift+F'**
  String get forwardShortcutHint;

  /// Kilo-Walk UI string — forwardSuccess
  ///
  /// In en, this message translates to:
  /// **'Forwarded to {count} sessions'**
  String forwardSuccess(int count);

  /// Kilo-Walk UI string — forwardUndo
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get forwardUndo;

  /// Kilo-Walk UI string — forwardUndoFailed
  ///
  /// In en, this message translates to:
  /// **'Could not undo the forward'**
  String get forwardUndoFailed;

  /// Kilo-Walk UI string — logsAppLogs
  ///
  /// In en, this message translates to:
  /// **'App Logs'**
  String get logsAppLogs;

  /// Kilo-Walk UI string — logsClear
  ///
  /// In en, this message translates to:
  /// **'Clear logs'**
  String get logsClear;

  /// Kilo-Walk UI string — logsCloseSearch
  ///
  /// In en, this message translates to:
  /// **'Close search'**
  String get logsCloseSearch;

  /// Kilo-Walk UI string — logsCopyFiltered
  ///
  /// In en, this message translates to:
  /// **'Copy filtered logs'**
  String get logsCopyFiltered;

  /// Kilo-Walk UI string — logsEnableLogging
  ///
  /// In en, this message translates to:
  /// **'Enable app logging'**
  String get logsEnableLogging;

  /// Kilo-Walk UI string — logsEnableLoggingAction
  ///
  /// In en, this message translates to:
  /// **'Enable logging'**
  String get logsEnableLoggingAction;

  /// Kilo-Walk UI string — logsEnableLoggingDescription
  ///
  /// In en, this message translates to:
  /// **'Collect in-memory diagnostic logs. Keep this off unless you are troubleshooting.'**
  String get logsEnableLoggingDescription;

  /// Kilo-Walk UI string — logsEntryContext
  ///
  /// In en, this message translates to:
  /// **'Context'**
  String get logsEntryContext;

  /// Kilo-Walk UI string — logsEntryTags
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get logsEntryTags;

  /// Kilo-Walk UI string — logsFilterAll
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get logsFilterAll;

  /// Kilo-Walk UI string — logsFilterByTag
  ///
  /// In en, this message translates to:
  /// **'Tag'**
  String get logsFilterByTag;

  /// Kilo-Walk UI string — logsLevel
  ///
  /// In en, this message translates to:
  /// **'Level'**
  String get logsLevel;

  /// Kilo-Walk UI string — logsLoggingDisabledDescription
  ///
  /// In en, this message translates to:
  /// **'Kilo-Walk is not collecting detailed app logs. Enable logging only when you need diagnostics.'**
  String get logsLoggingDisabledDescription;

  /// Kilo-Walk UI string — logsLoggingDisabledTitle
  ///
  /// In en, this message translates to:
  /// **'Logging is disabled'**
  String get logsLoggingDisabledTitle;

  /// Kilo-Walk UI string — logsMeasurePerformance
  ///
  /// In en, this message translates to:
  /// **'Measure performance'**
  String get logsMeasurePerformance;

  /// Kilo-Walk UI string — logsMeasurePerformanceDescription
  ///
  /// In en, this message translates to:
  /// **'Capture timing logs for expensive app operations. Leave off unless you are diagnosing lag.'**
  String get logsMeasurePerformanceDescription;

  /// Kilo-Walk UI string — logsNoLogsYet
  ///
  /// In en, this message translates to:
  /// **'No logs captured yet.'**
  String get logsNoLogsYet;

  /// Kilo-Walk UI string — logsNoMatchingLogs
  ///
  /// In en, this message translates to:
  /// **'No logs match the current filters.'**
  String get logsNoMatchingLogs;

  /// Kilo-Walk UI string — logsNoPerformanceData
  ///
  /// In en, this message translates to:
  /// **'No performance logs match the current filters.'**
  String get logsNoPerformanceData;

  /// Kilo-Walk UI string — logsNoTaskData
  ///
  /// In en, this message translates to:
  /// **'No tasks match the current filters.'**
  String get logsNoTaskData;

  /// Kilo-Walk UI string — logsPerformanceDuration
  ///
  /// In en, this message translates to:
  /// **'{elapsedMs} ms'**
  String logsPerformanceDuration(int elapsedMs);

  /// Kilo-Walk UI string — logsPerformanceFilter
  ///
  /// In en, this message translates to:
  /// **'Performance'**
  String get logsPerformanceFilter;

  /// Kilo-Walk UI string — logsPerformanceTileTitle
  ///
  /// In en, this message translates to:
  /// **'PERFORMANCE {operation} | {elapsedMs} ms | {status}'**
  String logsPerformanceTileTitle(
    int elapsedMs,
    String operation,
    String status,
  );

  /// Kilo-Walk UI string — logsSearch
  ///
  /// In en, this message translates to:
  /// **'Search logs'**
  String get logsSearch;

  /// Kilo-Walk UI string — logsShowingOrderedLength
  ///
  /// In en, this message translates to:
  /// **'Showing {length} of {length2} entries'**
  String logsShowingOrderedLength(int length, int length2);

  /// Kilo-Walk UI string — logsSlowestPerformance
  ///
  /// In en, this message translates to:
  /// **'Slowest performance logs'**
  String get logsSlowestPerformance;

  /// Kilo-Walk UI string — logsSlowestTasks
  ///
  /// In en, this message translates to:
  /// **'Slowest tasks'**
  String get logsSlowestTasks;

  /// Kilo-Walk UI string — logsTagCustomHint
  ///
  /// In en, this message translates to:
  /// **'Tag name (for example: task:select_session)'**
  String get logsTagCustomHint;

  /// Kilo-Walk UI string — logsTagCustomAction
  ///
  /// In en, this message translates to:
  /// **'Custom...'**
  String get logsTagCustomAction;

  /// Kilo-Walk UI string — logsTaskDuration
  ///
  /// In en, this message translates to:
  /// **'{operation} — {elapsedMs} ms'**
  String logsTaskDuration(int elapsedMs, String operation);

  /// Kilo-Walk UI string — logsTaskStatusCanceled
  ///
  /// In en, this message translates to:
  /// **'canceled'**
  String get logsTaskStatusCanceled;

  /// Kilo-Walk UI string — logsTaskStatusError
  ///
  /// In en, this message translates to:
  /// **'error'**
  String get logsTaskStatusError;

  /// Kilo-Walk UI string — logsTaskStatusOk
  ///
  /// In en, this message translates to:
  /// **'ok'**
  String get logsTaskStatusOk;

  /// Kilo-Walk UI string — logsTimeRange
  ///
  /// In en, this message translates to:
  /// **'Time range'**
  String get logsTimeRange;

  /// Kilo-Walk UI string — mathExpressionLabel
  ///
  /// In en, this message translates to:
  /// **'Math'**
  String get mathExpressionLabel;

  /// Kilo-Walk UI string — mermaidCopySourceTooltip
  ///
  /// In en, this message translates to:
  /// **'Copy source'**
  String get mermaidCopySourceTooltip;

  /// Kilo-Walk UI string — mermaidDiagramLabel
  ///
  /// In en, this message translates to:
  /// **'Mermaid Diagram'**
  String get mermaidDiagramLabel;

  /// Kilo-Walk UI string — modelAuto
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get modelAuto;

  /// Kilo-Walk UI string — modelChooseAgent
  ///
  /// In en, this message translates to:
  /// **'Choose agent'**
  String get modelChooseAgent;

  /// Kilo-Walk UI string — modelFavorites
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get modelFavorites;

  /// Kilo-Walk UI string — modelFree
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get modelFree;

  /// Kilo-Walk UI string — modelLabelBaseEnglish
  ///
  /// In en, this message translates to:
  /// **'Base (English)'**
  String get modelLabelBaseEnglish;

  /// Kilo-Walk UI string — modelLabelParakeet
  ///
  /// In en, this message translates to:
  /// **'Parakeet V3 (25 European languages)'**
  String get modelLabelParakeet;

  /// Kilo-Walk UI string — modelLabelSenseVoice
  ///
  /// In en, this message translates to:
  /// **'SenseVoice (zh/en/ja/ko/yue)'**
  String get modelLabelSenseVoice;

  /// Kilo-Walk UI string — modelLabelTinyEnglish
  ///
  /// In en, this message translates to:
  /// **'Tiny (English)'**
  String get modelLabelTinyEnglish;

  /// Kilo-Walk UI string — modelLoadingModels
  ///
  /// In en, this message translates to:
  /// **'Loading models'**
  String get modelLoadingModels;

  /// Kilo-Walk UI string — modelModelsFound
  ///
  /// In en, this message translates to:
  /// **'No models found'**
  String get modelModelsFound;

  /// Kilo-Walk UI string — modelRetryModels
  ///
  /// In en, this message translates to:
  /// **'Retry models'**
  String get modelRetryModels;

  /// Kilo-Walk UI string — modelSearchHint
  ///
  /// In en, this message translates to:
  /// **'Search model or provider'**
  String get modelSearchHint;

  /// Kilo-Walk UI string — msgBatterySettingsFailed
  ///
  /// In en, this message translates to:
  /// **'Could not open Android battery optimization settings.'**
  String get msgBatterySettingsFailed;

  /// Kilo-Walk UI string — msgBatterySettingsOpened
  ///
  /// In en, this message translates to:
  /// **'Android battery settings opened. Allow unrestricted battery for Kilo-Walk.'**
  String get msgBatterySettingsOpened;

  /// Kilo-Walk UI string — msgClearUsernameNeedsConfigEdit
  ///
  /// In en, this message translates to:
  /// **'Clearing the OpenCode conversation username still requires editing config outside the app.'**
  String get msgClearUsernameNeedsConfigEdit;

  /// Kilo-Walk UI string — msgCommandCopied
  ///
  /// In en, this message translates to:
  /// **'Command copied'**
  String get msgCommandCopied;

  /// Kilo-Walk UI string — msgCopiedToClipboard
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get msgCopiedToClipboard;

  /// Kilo-Walk UI string — msgEnterUsernameToSave
  ///
  /// In en, this message translates to:
  /// **'Enter a username to save a custom OpenCode conversation name.'**
  String get msgEnterUsernameToSave;

  /// Kilo-Walk UI string — msgFailedToSendMessage
  ///
  /// In en, this message translates to:
  /// **'Failed to send message. Draft kept for retry.'**
  String get msgFailedToSendMessage;

  /// Kilo-Walk UI string — msgFailedToStartVoiceInput
  ///
  /// In en, this message translates to:
  /// **'Failed to start voice input'**
  String get msgFailedToStartVoiceInput;

  /// Kilo-Walk UI string — msgFilePathNotFound
  ///
  /// In en, this message translates to:
  /// **'File not found: {path}'**
  String msgFilePathNotFound(String path);

  /// Kilo-Walk UI string — msgFilteredLogsCopied
  ///
  /// In en, this message translates to:
  /// **'Filtered logs copied to clipboard'**
  String get msgFilteredLogsCopied;

  /// Kilo-Walk UI string — msgInfoAgent
  ///
  /// In en, this message translates to:
  /// **'Agent'**
  String get msgInfoAgent;

  /// Kilo-Walk UI string — msgInfoCompaction
  ///
  /// In en, this message translates to:
  /// **'Compaction'**
  String get msgInfoCompaction;

  /// Kilo-Walk UI string — msgInfoCost
  ///
  /// In en, this message translates to:
  /// **'Cost: \${cost}'**
  String msgInfoCost(String cost);

  /// Kilo-Walk UI string — msgInfoMessageInfo
  ///
  /// In en, this message translates to:
  /// **'Message Info'**
  String get msgInfoMessageInfo;

  /// Kilo-Walk UI string — msgInfoModel
  ///
  /// In en, this message translates to:
  /// **'Model: {modelId}'**
  String msgInfoModel(String modelId);

  /// Kilo-Walk UI string — msgInfoNoMetadata
  ///
  /// In en, this message translates to:
  /// **'No metadata available'**
  String get msgInfoNoMetadata;

  /// Kilo-Walk UI string — msgInfoPartDescriptionModel
  ///
  /// In en, this message translates to:
  /// **'{description}{model}'**
  String msgInfoPartDescriptionModel(String description, String model);

  /// Kilo-Walk UI string — msgInfoPatch
  ///
  /// In en, this message translates to:
  /// **'Patch'**
  String get msgInfoPatch;

  /// Kilo-Walk UI string — msgInfoProvider
  ///
  /// In en, this message translates to:
  /// **'Provider: {providerId}'**
  String msgInfoProvider(String providerId);

  /// Kilo-Walk UI string — msgInfoRetry
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get msgInfoRetry;

  /// Kilo-Walk UI string — msgInfoSnapshot
  ///
  /// In en, this message translates to:
  /// **'Snapshot'**
  String get msgInfoSnapshot;

  /// Kilo-Walk UI string — msgInfoSubtaskPartAgent
  ///
  /// In en, this message translates to:
  /// **'Subtask ({agent})'**
  String msgInfoSubtaskPartAgent(String agent);

  /// Kilo-Walk UI string — msgInfoTokens
  ///
  /// In en, this message translates to:
  /// **'Tokens: {total}'**
  String msgInfoTokens(int total);

  /// Kilo-Walk UI string — msgInfoUndoThisTurn
  ///
  /// In en, this message translates to:
  /// **'Undo this turn'**
  String get msgInfoUndoThisTurn;

  /// Kilo-Walk UI string — msgInfoView
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get msgInfoView;

  /// Kilo-Walk UI string — msgNoSystemSoundsFound
  ///
  /// In en, this message translates to:
  /// **'No system sound was found on this device.'**
  String get msgNoSystemSoundsFound;

  /// Kilo-Walk UI string — msgNoValidFilesSelected
  ///
  /// In en, this message translates to:
  /// **'No valid files were selected'**
  String get msgNoValidFilesSelected;

  /// Kilo-Walk UI string — msgSomeSelectedFilesNotAttached
  ///
  /// In en, this message translates to:
  /// **'Some selected files could not be attached.'**
  String get msgSomeSelectedFilesNotAttached;

  /// Kilo-Walk UI string — msgReadAloud
  ///
  /// In en, this message translates to:
  /// **'Read aloud'**
  String get msgReadAloud;

  /// Kilo-Walk UI string — msgReadAloudNotAvailable
  ///
  /// In en, this message translates to:
  /// **'Text-to-speech is not available on this device.'**
  String get msgReadAloudNotAvailable;

  /// Kilo-Walk UI string — msgSetupDebugCopied
  ///
  /// In en, this message translates to:
  /// **'OpenCode setup debug copied to clipboard'**
  String get msgSetupDebugCopied;

  /// Kilo-Walk UI string — msgShareAsImage
  ///
  /// In en, this message translates to:
  /// **'Share as image'**
  String get msgShareAsImage;

  /// Kilo-Walk UI string — msgShareAsImageFailed
  ///
  /// In en, this message translates to:
  /// **'Could not share message as image.'**
  String get msgShareAsImageFailed;

  /// Kilo-Walk UI string — msgShareAsImageSubject
  ///
  /// In en, this message translates to:
  /// **'Kilo-Walk message'**
  String get msgShareAsImageSubject;

  /// Kilo-Walk UI string — msgShareAsImageTooTall
  ///
  /// In en, this message translates to:
  /// **'Message is too long to share as an image.'**
  String get msgShareAsImageTooTall;

  /// Kilo-Walk UI string — msgStopReadAloud
  ///
  /// In en, this message translates to:
  /// **'Stop reading'**
  String get msgStopReadAloud;

  /// Kilo-Walk UI string — msgPauseReadAloud
  ///
  /// In en, this message translates to:
  /// **'Pause reading'**
  String get msgPauseReadAloud;

  /// Kilo-Walk UI string — msgResumeReadAloud
  ///
  /// In en, this message translates to:
  /// **'Resume reading'**
  String get msgResumeReadAloud;

  /// Kilo-Walk UI string — msgSystemSoundPickerUnavailable
  ///
  /// In en, this message translates to:
  /// **'System sound picker is not available on this platform.'**
  String get msgSystemSoundPickerUnavailable;

  /// Kilo-Walk UI string — msgUpdatedButRefreshFailed
  ///
  /// In en, this message translates to:
  /// **'Updated the server setting, but could not refresh chat providers.'**
  String get msgUpdatedButRefreshFailed;

  /// Kilo-Walk UI string — msgVoiceInputUnavailable
  ///
  /// In en, this message translates to:
  /// **'Voice input is unavailable on this device'**
  String get msgVoiceInputUnavailable;

  /// Kilo-Walk UI string — notifAndroidBatteryOptimization
  ///
  /// In en, this message translates to:
  /// **'Android battery optimization'**
  String get notifAndroidBatteryOptimization;

  /// Kilo-Walk UI string — notifConversationUpdates
  ///
  /// In en, this message translates to:
  /// **'Conversation updates'**
  String get notifConversationUpdates;

  /// Kilo-Walk UI string — notifNotificationsArriveReopening
  ///
  /// In en, this message translates to:
  /// **'If notifications only arrive when reopening the app, allow Kilo-Walk to run without optimization on this device.'**
  String get notifNotificationsArriveReopening;

  /// Kilo-Walk UI string — notifResponseRunningKeep
  ///
  /// In en, this message translates to:
  /// **'When a response is running, keep realtime active briefly after you leave the app.'**
  String get notifResponseRunningKeep;

  /// Kilo-Walk UI string — notifSelectedSoundLabel
  ///
  /// In en, this message translates to:
  /// **'Selected: {soundLabel}'**
  String notifSelectedSoundLabel(String soundLabel);

  /// Kilo-Walk UI string — notificationAgentFinished
  ///
  /// In en, this message translates to:
  /// **'Agent finished the current response.'**
  String get notificationAgentFinished;

  /// Kilo-Walk UI string — notificationConversationUpdates
  ///
  /// In en, this message translates to:
  /// **'Conversation updates'**
  String get notificationConversationUpdates;

  /// Kilo-Walk UI string — notificationOpenToClear
  ///
  /// In en, this message translates to:
  /// **'Open this conversation to clear related notifications.'**
  String get notificationOpenToClear;

  /// Kilo-Walk UI string — notificationSession
  ///
  /// In en, this message translates to:
  /// **'Session'**
  String get notificationSession;

  /// Kilo-Walk UI string — notificationSoundLoadFailed
  ///
  /// In en, this message translates to:
  /// **'Failed to load Android system sounds'**
  String get notificationSoundLoadFailed;

  /// Kilo-Walk UI string — onboardingAIGeneratedTitles
  ///
  /// In en, this message translates to:
  /// **'AI generated titles'**
  String get onboardingAIGeneratedTitles;

  /// Kilo-Walk UI string — onboardingAddServerLater
  ///
  /// In en, this message translates to:
  /// **'You can add a server later in Settings > Servers.'**
  String get onboardingAddServerLater;

  /// Kilo-Walk UI string — onboardingAddedButHealthCheckFailed
  ///
  /// In en, this message translates to:
  /// **'Server added but health check failed. It may still be starting up.'**
  String get onboardingAddedButHealthCheckFailed;

  /// Kilo-Walk UI string — onboardingAlmostInstallOpenCode
  ///
  /// In en, this message translates to:
  /// **'You are almost there. Install OpenCode first, then connect Kilo-Walk to the server URL.'**
  String get onboardingAlmostInstallOpenCode;

  /// Kilo-Walk UI string — onboardingAppProviderLocalSetupLogsLength
  ///
  /// In en, this message translates to:
  /// **'{length} setup log lines and {length2} setup events are available in the separate setup debug screen.'**
  String onboardingAppProviderLocalSetupLogsLength(int length, int length2);

  /// Kilo-Walk UI string — onboardingAuthenticate
  ///
  /// In en, this message translates to:
  /// **'Authenticate'**
  String get onboardingAuthenticate;

  /// Kilo-Walk UI string — onboardingAvailable
  ///
  /// In en, this message translates to:
  /// **'available'**
  String get onboardingAvailable;

  /// Kilo-Walk UI string — onboardingAvailableOnlyDesktop
  ///
  /// In en, this message translates to:
  /// **'Available only on desktop (Linux/macOS/Windows).'**
  String get onboardingAvailableOnlyDesktop;

  /// Kilo-Walk UI string — onboardingBasicAuthTip
  ///
  /// In en, this message translates to:
  /// **'Enable Basic Auth only if your OpenCode server is password-protected.'**
  String get onboardingBasicAuthTip;

  /// Kilo-Walk UI string — onboardingChooseAnotherPath
  ///
  /// In en, this message translates to:
  /// **'Choose another path'**
  String get onboardingChooseAnotherPath;

  /// Kilo-Walk UI string — onboardingChooseHowToSetup
  ///
  /// In en, this message translates to:
  /// **'Choose how to set up your server'**
  String get onboardingChooseHowToSetup;

  /// Kilo-Walk UI string — onboardingClear
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get onboardingClear;

  /// Kilo-Walk UI string — onboardingCloudflareAuthFailed
  ///
  /// In en, this message translates to:
  /// **'Cloudflare Access authentication failed.'**
  String get onboardingCloudflareAuthFailed;

  /// Kilo-Walk UI string — onboardingKilo-WalkAppOpenCode
  ///
  /// In en, this message translates to:
  /// **'Kilo-Walk is the app. OpenCode is the engine it connects to.'**
  String get onboardingCodeWalkAppOpenCode;

  /// Kilo-Walk UI string — onboardingConnectRunningServer
  ///
  /// In en, this message translates to:
  /// **'Connect to a running server'**
  String get onboardingConnectRunningServer;

  /// Kilo-Walk UI string — onboardingConnectionIssue
  ///
  /// In en, this message translates to:
  /// **'Connection issue'**
  String get onboardingConnectionIssue;

  /// Kilo-Walk UI string — onboardingConnectionSaved
  ///
  /// In en, this message translates to:
  /// **'Server connection saved successfully.'**
  String get onboardingConnectionSaved;

  /// Kilo-Walk UI string — onboardingConnectionTips
  ///
  /// In en, this message translates to:
  /// **'Connection tips'**
  String get onboardingConnectionTips;

  /// Kilo-Walk UI string — onboardingConnectionUpdated
  ///
  /// In en, this message translates to:
  /// **'Server connection updated successfully.'**
  String get onboardingConnectionUpdated;

  /// Kilo-Walk UI string — onboardingContinue
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get onboardingContinue;

  /// Kilo-Walk UI string — onboardingContinueServerURL
  ///
  /// In en, this message translates to:
  /// **'Continue to server URL'**
  String get onboardingContinueServerURL;

  /// Kilo-Walk UI string — onboardingCopyLoginURL
  ///
  /// In en, this message translates to:
  /// **'Copy login URL'**
  String get onboardingCopyLoginURL;

  /// Kilo-Walk UI string — onboardingCouldNotVerify
  ///
  /// In en, this message translates to:
  /// **'Could not verify the server connection.'**
  String get onboardingCouldNotVerify;

  /// Kilo-Walk UI string — onboardingDefaultURLEmulator
  ///
  /// In en, this message translates to:
  /// **'Default URL, emulator loopback, auth, and debug help.'**
  String get onboardingDefaultURLEmulator;

  /// Kilo-Walk UI string — onboardingDesktopOnlyDiagnose
  ///
  /// In en, this message translates to:
  /// **'Desktop only: {appName} can diagnose, install, and run OpenCode for you.'**
  String onboardingDesktopOnlyDiagnose(String appName);

  /// Kilo-Walk UI string — onboardingDetailedSetupEvents
  ///
  /// In en, this message translates to:
  /// **'Detailed setup events were captured for troubleshooting.'**
  String get onboardingDetailedSetupEvents;

  /// Kilo-Walk UI string — onboardingDonShowAgain
  ///
  /// In en, this message translates to:
  /// **'Don\'\'t show again'**
  String get onboardingDonShowAgain;

  /// Kilo-Walk UI string — onboardingDone
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get onboardingDone;

  /// Kilo-Walk UI string — onboardingEditServer
  ///
  /// In en, this message translates to:
  /// **'Edit server'**
  String get onboardingEditServer;

  /// Kilo-Walk UI string — onboardingEditServerConnection
  ///
  /// In en, this message translates to:
  /// **'Edit server connection'**
  String get onboardingEditServerConnection;

  /// Kilo-Walk UI string — onboardingEmulatorRemap
  ///
  /// In en, this message translates to:
  /// **'On Android emulator, localhost and 127.0.0.1 are remapped to 10.0.2.2 automatically.'**
  String get onboardingEmulatorRemap;

  /// Kilo-Walk UI string — onboardingEnterServerUrl
  ///
  /// In en, this message translates to:
  /// **'Enter a server URL'**
  String get onboardingEnterServerUrl;

  /// Kilo-Walk UI string — onboardingExisting
  ///
  /// In en, this message translates to:
  /// **'Use Existing'**
  String get onboardingExisting;

  /// Kilo-Walk UI string — onboardingExplainInstallOpenCode
  ///
  /// In en, this message translates to:
  /// **'Explain how to install OpenCode, start the server, and then connect from Kilo-Walk.'**
  String get onboardingExplainInstallOpenCode;

  /// Kilo-Walk UI string — onboardingFailed
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get onboardingFailed;

  /// Kilo-Walk UI string — onboardingGoodOptionDesktop
  ///
  /// In en, this message translates to:
  /// **'Good first option on desktop'**
  String get onboardingGoodOptionDesktop;

  /// Kilo-Walk UI string — onboardingHealthCheckFailedMayBeStarting
  ///
  /// In en, this message translates to:
  /// **'Server health check failed. It may still be starting up.'**
  String get onboardingHealthCheckFailedMayBeStarting;

  /// Kilo-Walk UI string — onboardingInstallBinary
  ///
  /// In en, this message translates to:
  /// **'Install Binary'**
  String get onboardingInstallBinary;

  /// Kilo-Walk UI string — onboardingInstallBun
  ///
  /// In en, this message translates to:
  /// **'Install via Bun'**
  String get onboardingInstallBun;

  /// Kilo-Walk UI string — onboardingInstallBunOpenCode
  ///
  /// In en, this message translates to:
  /// **'Install Bun + OpenCode'**
  String get onboardingInstallBunOpenCode;

  /// Kilo-Walk UI string — onboardingInstallNpm
  ///
  /// In en, this message translates to:
  /// **'Install via npm'**
  String get onboardingInstallNpm;

  /// Kilo-Walk UI string — onboardingInstallRunOpenCode
  ///
  /// In en, this message translates to:
  /// **'Install and run OpenCode directly from Kilo-Walk on desktop.'**
  String get onboardingInstallRunOpenCode;

  /// Kilo-Walk UI string — onboardingInvalidUrl
  ///
  /// In en, this message translates to:
  /// **'Invalid URL'**
  String get onboardingInvalidUrl;

  /// Kilo-Walk UI string — onboardingLabel
  ///
  /// In en, this message translates to:
  /// **'Label (optional)'**
  String get onboardingLabel;

  /// Kilo-Walk UI string — onboardingLabelHint
  ///
  /// In en, this message translates to:
  /// **'My server'**
  String get onboardingLabelHint;

  /// Kilo-Walk UI string — onboardingLatestOutputAppProvider
  ///
  /// In en, this message translates to:
  /// **'Latest output: {localServerLastOutput}'**
  String onboardingLatestOutputAppProvider(String localServerLastOutput);

  /// Kilo-Walk UI string — onboardingLetKilo-WalkSet
  ///
  /// In en, this message translates to:
  /// **'Let Kilo-Walk set it up locally'**
  String get onboardingLetCodeWalkSet;

  /// Kilo-Walk UI string — onboardingLocalServerSetup
  ///
  /// In en, this message translates to:
  /// **'Local server setup'**
  String get onboardingLocalServerSetup;

  /// Kilo-Walk UI string — onboardingManagedLocalServer
  ///
  /// In en, this message translates to:
  /// **'Managed local server'**
  String get onboardingManagedLocalServer;

  /// Kilo-Walk UI string — onboardingManagedLocalServer2
  ///
  /// In en, this message translates to:
  /// **'Managed local server mode is available only on desktop builds (Linux/macOS/Windows).'**
  String get onboardingManagedLocalServer2;

  /// Kilo-Walk UI string — onboardingNeedsOpenCodeServer
  ///
  /// In en, this message translates to:
  /// **'{appName} needs an OpenCode server before it can help with your code.'**
  String onboardingNeedsOpenCodeServer(String appName);

  /// Kilo-Walk UI string — onboardingNotAvailable
  ///
  /// In en, this message translates to:
  /// **'not available'**
  String get onboardingNotAvailable;

  /// Kilo-Walk UI string — onboardingNotWritable
  ///
  /// In en, this message translates to:
  /// **'not writable'**
  String get onboardingNotWritable;

  /// Kilo-Walk UI string — onboardingOpenCode
  ///
  /// In en, this message translates to:
  /// **'What is OpenCode?'**
  String get onboardingOpenCode;

  /// Kilo-Walk UI string — onboardingOpenCodeRunningDevice
  ///
  /// In en, this message translates to:
  /// **'I already have OpenCode running on this device or somewhere on my network.'**
  String get onboardingOpenCodeRunningDevice;

  /// Kilo-Walk UI string — onboardingOpenCodeRunsLocally
  ///
  /// In en, this message translates to:
  /// **'OpenCode runs locally or on a server and powers the AI coding features inside Kilo-Walk. If OpenCode is already running, connect to it. If not, pick one of the guided setup paths below.'**
  String get onboardingOpenCodeRunsLocally;

  /// Kilo-Walk UI string — onboardingOpenTailscaleLogin
  ///
  /// In en, this message translates to:
  /// **'Could not open Tailscale login URL.'**
  String get onboardingOpenTailscaleLogin;

  /// Kilo-Walk UI string — onboardingPassword
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get onboardingPassword;

  /// Kilo-Walk UI string — onboardingPasswordRequired
  ///
  /// In en, this message translates to:
  /// **'Enter password'**
  String get onboardingPasswordRequired;

  /// Kilo-Walk UI string — onboardingPickSetupPath
  ///
  /// In en, this message translates to:
  /// **'Pick the setup path that matches your current OpenCode setup.'**
  String get onboardingPickSetupPath;

  /// Kilo-Walk UI string — onboardingPreconditionDirectoryNotWritable
  ///
  /// In en, this message translates to:
  /// **'Install directory is not writable. Check user permissions.'**
  String get onboardingPreconditionDirectoryNotWritable;

  /// Kilo-Walk UI string — onboardingPreconditionInstallViaBunRecommendation
  ///
  /// In en, this message translates to:
  /// **'Install via Bun is recommended by OpenCode maintainers.'**
  String get onboardingPreconditionInstallViaBunRecommendation;

  /// Kilo-Walk UI string — onboardingPreconditionNetworkFailed
  ///
  /// In en, this message translates to:
  /// **'Network access failed. Check connectivity before installing OpenCode.'**
  String get onboardingPreconditionNetworkFailed;

  /// Kilo-Walk UI string — onboardingPreconditionNoRuntimeDetected
  ///
  /// In en, this message translates to:
  /// **'No runtime detected. Install OpenCode binary directly or bootstrap Bun first.'**
  String get onboardingPreconditionNoRuntimeDetected;

  /// Kilo-Walk UI string — onboardingPreconditionNodeNpmAvailable
  ///
  /// In en, this message translates to:
  /// **'Node + npm are available. Install OpenCode via npm or install Bun for the recommended flow.'**
  String get onboardingPreconditionNodeNpmAvailable;

  /// Kilo-Walk UI string — onboardingPreconditionOpenCodeAlreadyAvailable
  ///
  /// In en, this message translates to:
  /// **'OpenCode is already available. You can use the detected command immediately.'**
  String get onboardingPreconditionOpenCodeAlreadyAvailable;

  /// Kilo-Walk UI string — onboardingPreconditionWindowsPathLagHint
  ///
  /// In en, this message translates to:
  /// **' On Windows, refresh checks after install because PATH updates may lag in already-open apps.'**
  String get onboardingPreconditionWindowsPathLagHint;

  /// Kilo-Walk UI string — onboardingPreconditionWindowsWslRecommendation
  ///
  /// In en, this message translates to:
  /// **'Windows build detected. WSL is recommended by OpenCode docs, but npm install can be used as fallback.'**
  String get onboardingPreconditionWindowsWslRecommendation;

  /// Kilo-Walk UI string — onboardingReachable
  ///
  /// In en, this message translates to:
  /// **'reachable'**
  String get onboardingReachable;

  /// Kilo-Walk UI string — onboardingReady
  ///
  /// In en, this message translates to:
  /// **'Ready'**
  String get onboardingReady;

  /// Kilo-Walk UI string — onboardingRecommendedOrderTry
  ///
  /// In en, this message translates to:
  /// **'Recommended order: try Install Bun + OpenCode if you want Kilo-Walk to bootstrap everything for you. Use Existing if OpenCode is already installed.'**
  String get onboardingRecommendedOrderTry;

  /// Kilo-Walk UI string — onboardingRefreshChecks
  ///
  /// In en, this message translates to:
  /// **'Refresh Checks'**
  String get onboardingRefreshChecks;

  /// Kilo-Walk UI string — onboardingRunDiagnosticsToVerify
  ///
  /// In en, this message translates to:
  /// **'Run diagnostics to verify local OpenCode requirements.'**
  String get onboardingRunDiagnosticsToVerify;

  /// Kilo-Walk UI string — onboardingSaveAndTest
  ///
  /// In en, this message translates to:
  /// **'Save and test'**
  String get onboardingSaveAndTest;

  /// Kilo-Walk UI string — onboardingServerConnectedReady
  ///
  /// In en, this message translates to:
  /// **'Your server is connected and ready to use.'**
  String get onboardingServerConnectedReady;

  /// Kilo-Walk UI string — onboardingServerConnection
  ///
  /// In en, this message translates to:
  /// **'Server connection'**
  String get onboardingServerConnection;

  /// Kilo-Walk UI string — onboardingServerSettingsSaved
  ///
  /// In en, this message translates to:
  /// **'Your server settings were saved and health checks were refreshed.'**
  String get onboardingServerSettingsSaved;

  /// Kilo-Walk UI string — onboardingServerSetup
  ///
  /// In en, this message translates to:
  /// **'Server setup'**
  String get onboardingServerSetup;

  /// Kilo-Walk UI string — onboardingServerUpdated
  ///
  /// In en, this message translates to:
  /// **'Server updated'**
  String get onboardingServerUpdated;

  /// Kilo-Walk UI string — onboardingServerUrl
  ///
  /// In en, this message translates to:
  /// **'Server URL'**
  String get onboardingServerUrl;

  /// Kilo-Walk UI string — onboardingSetup
  ///
  /// In en, this message translates to:
  /// **'Setup'**
  String get onboardingSetup;

  /// Kilo-Walk UI string — onboardingSetupWizard
  ///
  /// In en, this message translates to:
  /// **'Setup wizard'**
  String get onboardingSetupWizard;

  /// Kilo-Walk UI string — onboardingShowSetupSteps
  ///
  /// In en, this message translates to:
  /// **'Show me the setup steps'**
  String get onboardingShowSetupSteps;

  /// Kilo-Walk UI string — onboardingShowSetupSteps2
  ///
  /// In en, this message translates to:
  /// **'Show setup steps'**
  String get onboardingShowSetupSteps2;

  /// Kilo-Walk UI string — onboardingSkip
  ///
  /// In en, this message translates to:
  /// **'Skip for now'**
  String get onboardingSkip;

  /// Kilo-Walk UI string — onboardingSkipSetup
  ///
  /// In en, this message translates to:
  /// **'Skip setup?'**
  String get onboardingSkipSetup;

  /// Kilo-Walk UI string — onboardingStart
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get onboardingStart;

  /// Kilo-Walk UI string — onboardingStartUsing
  ///
  /// In en, this message translates to:
  /// **'Start using {appName}'**
  String onboardingStartUsing(String appName);

  /// Kilo-Walk UI string — onboardingStarting
  ///
  /// In en, this message translates to:
  /// **'Starting'**
  String get onboardingStarting;

  /// Kilo-Walk UI string — onboardingStop
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get onboardingStop;

  /// Kilo-Walk UI string — onboardingStopped
  ///
  /// In en, this message translates to:
  /// **'Stopped'**
  String get onboardingStopped;

  /// Kilo-Walk UI string — onboardingStopping
  ///
  /// In en, this message translates to:
  /// **'Stopping'**
  String get onboardingStopping;

  /// Kilo-Walk UI string — onboardingSuggestedUrl
  ///
  /// In en, this message translates to:
  /// **'Suggested local OpenCode server URL: {url}'**
  String onboardingSuggestedUrl(String url);

  /// Kilo-Walk UI string — onboardingTailscaleAdminApproval
  ///
  /// In en, this message translates to:
  /// **'Tailscale admin approval required'**
  String get onboardingTailscaleAdminApproval;

  /// Kilo-Walk UI string — onboardingTailscaleAuthAfterSave
  ///
  /// In en, this message translates to:
  /// **'Tailscale will authenticate after saving'**
  String get onboardingTailscaleAuthAfterSave;

  /// Kilo-Walk UI string — onboardingTailscaleAuthAfterSaveTest
  ///
  /// In en, this message translates to:
  /// **'After you save and test this server, {appName} will open Tailscale login if this device is not authenticated yet.'**
  String onboardingTailscaleAuthAfterSaveTest(String appName);

  /// Kilo-Walk UI string — onboardingTailscaleConnected
  ///
  /// In en, this message translates to:
  /// **'Tailscale connected'**
  String get onboardingTailscaleConnected;

  /// Kilo-Walk UI string — onboardingTailscaleConnecting
  ///
  /// In en, this message translates to:
  /// **'Tailscale connecting'**
  String get onboardingTailscaleConnecting;

  /// Kilo-Walk UI string — onboardingTailscaleConnectionFailed
  ///
  /// In en, this message translates to:
  /// **'Tailscale connection failed'**
  String get onboardingTailscaleConnectionFailed;

  /// Kilo-Walk UI string — onboardingTailscaleLoginRequired
  ///
  /// In en, this message translates to:
  /// **'Tailscale login required'**
  String get onboardingTailscaleLoginRequired;

  /// Kilo-Walk UI string — onboardingTailscaleOpenLoginUrl
  ///
  /// In en, this message translates to:
  /// **'Open the login URL to add this device to your tailnet. If the browser did not open, copy the URL below.'**
  String get onboardingTailscaleOpenLoginUrl;

  /// Kilo-Walk UI string — onboardingTailscaleUnsupported
  ///
  /// In en, this message translates to:
  /// **'Tailscale unsupported'**
  String get onboardingTailscaleUnsupported;

  /// Kilo-Walk UI string — onboardingTestConnection
  ///
  /// In en, this message translates to:
  /// **'Test connection'**
  String get onboardingTestConnection;

  /// Kilo-Walk UI string — onboardingTesting
  ///
  /// In en, this message translates to:
  /// **'Testing...'**
  String get onboardingTesting;

  /// Kilo-Walk UI string — onboardingUnreachable
  ///
  /// In en, this message translates to:
  /// **'unreachable'**
  String get onboardingUnreachable;

  /// Kilo-Walk UI string — onboardingUseBasicAuth
  ///
  /// In en, this message translates to:
  /// **'Use Basic Auth'**
  String get onboardingUseBasicAuth;

  /// Kilo-Walk UI string — onboardingUsername
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get onboardingUsername;

  /// Kilo-Walk UI string — onboardingUsernameRequired
  ///
  /// In en, this message translates to:
  /// **'Enter username'**
  String get onboardingUsernameRequired;

  /// Kilo-Walk UI string — onboardingUsesServerTitle
  ///
  /// In en, this message translates to:
  /// **'Uses your server\'\'s title agent to name conversations'**
  String get onboardingUsesServerTitle;

  /// Kilo-Walk UI string — onboardingUsingDetectedCommand
  ///
  /// In en, this message translates to:
  /// **'Using detected OpenCode command.'**
  String get onboardingUsingDetectedCommand;

  /// Kilo-Walk UI string — onboardingViewSetupDebug
  ///
  /// In en, this message translates to:
  /// **'View setup debug'**
  String get onboardingViewSetupDebug;

  /// Kilo-Walk UI string — onboardingWelcomeTo
  ///
  /// In en, this message translates to:
  /// **'Welcome to {appName}'**
  String onboardingWelcomeTo(String appName);

  /// Kilo-Walk UI string — onboardingWindowsTipInstalling
  ///
  /// In en, this message translates to:
  /// **'Windows tip: after installing, click Refresh Checks. If detection still fails, reopen Kilo-Walk to reload PATH changes.'**
  String get onboardingWindowsTipInstalling;

  /// Kilo-Walk UI string — onboardingWritable
  ///
  /// In en, this message translates to:
  /// **'writable'**
  String get onboardingWritable;

  /// Kilo-Walk UI string — onboardingYoureAllSet
  ///
  /// In en, this message translates to:
  /// **'You\'\'re all set!'**
  String get onboardingYoureAllSet;

  /// Kilo-Walk UI string — permissionAllowOnce
  ///
  /// In en, this message translates to:
  /// **'Allow Once'**
  String get permissionAllowOnce;

  /// Kilo-Walk UI string — permissionAlways
  ///
  /// In en, this message translates to:
  /// **'Always'**
  String get permissionAlways;

  /// Kilo-Walk UI string — permissionBack
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get permissionBack;

  /// Kilo-Walk UI string — permissionConfirmReject
  ///
  /// In en, this message translates to:
  /// **'Confirm Reject'**
  String get permissionConfirmReject;

  /// Kilo-Walk UI string — permissionReject
  ///
  /// In en, this message translates to:
  /// **'Reject'**
  String get permissionReject;

  /// Kilo-Walk UI string — permissionReopen
  ///
  /// In en, this message translates to:
  /// **'Reopen'**
  String get permissionReopen;

  /// Kilo-Walk UI string — questionAnswerSelected
  ///
  /// In en, this message translates to:
  /// **'No answer selected.'**
  String get questionAnswerSelected;

  /// Kilo-Walk UI string — questionCommaSeparatedValues
  ///
  /// In en, this message translates to:
  /// **'Comma-separated values'**
  String get questionCommaSeparatedValues;

  /// Kilo-Walk UI string — questionQuestionGroupMarked
  ///
  /// In en, this message translates to:
  /// **'Question group marked as rejected. You can keep chatting and reopen this group anytime before confirming.'**
  String get questionQuestionGroupMarked;

  /// Kilo-Walk UI string — questionQuestionRequest
  ///
  /// In en, this message translates to:
  /// **'Question request'**
  String get questionQuestionRequest;

  /// Kilo-Walk UI string — questionQuestionsProvidedSubmit
  ///
  /// In en, this message translates to:
  /// **'No questions provided. You can submit an empty response.'**
  String get questionQuestionsProvidedSubmit;

  /// Kilo-Walk UI string — questionReviewAnswersSubmitting
  ///
  /// In en, this message translates to:
  /// **'Review your answers before submitting.'**
  String get questionReviewAnswersSubmitting;

  /// Kilo-Walk UI string — quotaAuthCookie
  ///
  /// In en, this message translates to:
  /// **'Auth cookie'**
  String get quotaAuthCookie;

  /// Kilo-Walk UI string — quotaConnect
  ///
  /// In en, this message translates to:
  /// **'Connect'**
  String get quotaConnect;

  /// Kilo-Walk UI string — quotaForget
  ///
  /// In en, this message translates to:
  /// **'Forget'**
  String get quotaForget;

  /// Kilo-Walk UI string — quotaOpenCodeGoConnectDescription
  ///
  /// In en, this message translates to:
  /// **'Connect the usage dashboard to show rolling, weekly, and monthly limits.'**
  String get quotaOpenCodeGoConnectDescription;

  /// Kilo-Walk UI string — quotaOpenCodeGoDetected
  ///
  /// In en, this message translates to:
  /// **'OpenCode Go detected'**
  String get quotaOpenCodeGoDetected;

  /// Kilo-Walk UI string — quotaOpenCodeGoNeedsReconnect
  ///
  /// In en, this message translates to:
  /// **'OpenCode Go needs reconnect'**
  String get quotaOpenCodeGoNeedsReconnect;

  /// Kilo-Walk UI string — quotaOpenCodeGoReconnectDescription
  ///
  /// In en, this message translates to:
  /// **'Refresh the dashboard credentials to restore usage bars.'**
  String get quotaOpenCodeGoReconnectDescription;

  /// Kilo-Walk UI string — quotaOpenCodeGoUsage
  ///
  /// In en, this message translates to:
  /// **'OpenCode Go usage'**
  String get quotaOpenCodeGoUsage;

  /// Kilo-Walk UI string — quotaOpenDashboard
  ///
  /// In en, this message translates to:
  /// **'Open OpenCode dashboard'**
  String get quotaOpenDashboard;

  /// Kilo-Walk UI string — quotaPaceExplanation
  ///
  /// In en, this message translates to:
  /// **'Pace predicts total usage by the end of the current limit window based on the current rate.'**
  String get quotaPaceExplanation;

  /// Kilo-Walk UI string — quotaPacePercent
  ///
  /// In en, this message translates to:
  /// **'Pace {percent}%'**
  String quotaPacePercent(String percent);

  /// Kilo-Walk UI string — quotaRateLimits
  ///
  /// In en, this message translates to:
  /// **'Rate limits'**
  String get quotaRateLimits;

  /// Kilo-Walk UI string — quotaReconnect
  ///
  /// In en, this message translates to:
  /// **'Reconnect'**
  String get quotaReconnect;

  /// Kilo-Walk UI string — quotaRefreshing
  ///
  /// In en, this message translates to:
  /// **'Refreshing...'**
  String get quotaRefreshing;

  /// Kilo-Walk UI string — quotaResetsIn
  ///
  /// In en, this message translates to:
  /// **'Resets in {time}'**
  String quotaResetsIn(String time);

  /// Kilo-Walk UI string — quotaSaving
  ///
  /// In en, this message translates to:
  /// **'Saving...'**
  String get quotaSaving;

  /// Kilo-Walk UI string — quotaWorkspaceId
  ///
  /// In en, this message translates to:
  /// **'Workspace ID'**
  String get quotaWorkspaceId;

  /// Kilo-Walk UI string — serverClearOAuth
  ///
  /// In en, this message translates to:
  /// **'Clear OAuth'**
  String get serverClearOAuth;

  /// Kilo-Walk UI string — serverConnectionAttention
  ///
  /// In en, this message translates to:
  /// **'Server connection needs attention.'**
  String get serverConnectionAttention;

  /// Kilo-Walk UI string — serverHealthHealthy
  ///
  /// In en, this message translates to:
  /// **'Healthy'**
  String get serverHealthHealthy;

  /// Kilo-Walk UI string — serverHealthUnhealthy
  ///
  /// In en, this message translates to:
  /// **'Unhealthy'**
  String get serverHealthUnhealthy;

  /// Kilo-Walk UI string — serverHealthUnknown
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get serverHealthUnknown;

  /// Kilo-Walk UI string — serverOAuthAuthFailed
  ///
  /// In en, this message translates to:
  /// **'OAuth authentication failed'**
  String get serverOAuthAuthFailed;

  /// Kilo-Walk UI string — serverOAuthChip
  ///
  /// In en, this message translates to:
  /// **'OAuth'**
  String get serverOAuthChip;

  /// Kilo-Walk UI string — serverOAuthNotSupported
  ///
  /// In en, this message translates to:
  /// **'Cloudflare Access OAuth is not supported on this platform'**
  String get serverOAuthNotSupported;

  /// Kilo-Walk UI string — serverReauthenticate
  ///
  /// In en, this message translates to:
  /// **'Re-authenticate'**
  String get serverReauthenticate;

  /// Kilo-Walk UI string — serverTailscaleChip
  ///
  /// In en, this message translates to:
  /// **'Tailscale'**
  String get serverTailscaleChip;

  /// Kilo-Walk UI string — serversActive
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get serversActive;

  /// Kilo-Walk UI string — serversActiveServer
  ///
  /// In en, this message translates to:
  /// **'Active Server'**
  String get serversActiveServer;

  /// Kilo-Walk UI string — serversAddLeastOpenCode
  ///
  /// In en, this message translates to:
  /// **'Add at least one OpenCode server to start using the app.'**
  String get serversAddLeastOpenCode;

  /// Kilo-Walk UI string — serversAddServer
  ///
  /// In en, this message translates to:
  /// **'Add Server'**
  String get serversAddServer;

  /// Kilo-Walk UI string — serversCancel
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get serversCancel;

  /// Kilo-Walk UI string — serversCannotActivateUnhealthy
  ///
  /// In en, this message translates to:
  /// **'Cannot activate an unhealthy server'**
  String get serversCannotActivateUnhealthy;

  /// Kilo-Walk UI string — serversCheckHealth
  ///
  /// In en, this message translates to:
  /// **'Check Health'**
  String get serversCheckHealth;

  /// Kilo-Walk UI string — serversClearDefault
  ///
  /// In en, this message translates to:
  /// **'Clear Default'**
  String get serversClearDefault;

  /// Kilo-Walk UI string — serversCommandAppProviderLocalServerCommandPath
  ///
  /// In en, this message translates to:
  /// **'Command: {localServerCommandPath}'**
  String serversCommandAppProviderLocalServerCommandPath(
    String localServerCommandPath,
  );

  /// Kilo-Walk UI string — serversCopy
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get serversCopy;

  /// Kilo-Walk UI string — serversDefault
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get serversDefault;

  /// Kilo-Walk UI string — serversDelete
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get serversDelete;

  /// Kilo-Walk UI string — serversDeleteServer
  ///
  /// In en, this message translates to:
  /// **'Delete server'**
  String get serversDeleteServer;

  /// Kilo-Walk UI string — serversDesktopModeExplanation
  ///
  /// In en, this message translates to:
  /// **'Desktop mode can launch and manage `opencode serve` directly from Kilo-Walk.'**
  String get serversDesktopModeExplanation;

  /// Kilo-Walk UI string — serversEdit
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get serversEdit;

  /// Kilo-Walk UI string — serversLocalOpenCodeServer
  ///
  /// In en, this message translates to:
  /// **'Local OpenCode Server'**
  String get serversLocalOpenCodeServer;

  /// Kilo-Walk UI string — serversManagedModeAvailable
  ///
  /// In en, this message translates to:
  /// **'This managed mode is available only on desktop builds (Linux/macOS/Windows).'**
  String get serversManagedModeAvailable;

  /// Kilo-Walk UI string — serversNoServersFound
  ///
  /// In en, this message translates to:
  /// **'No servers found'**
  String get serversNoServersFound;

  /// Kilo-Walk UI string — serversRefreshHealth
  ///
  /// In en, this message translates to:
  /// **'Refresh Health'**
  String get serversRefreshHealth;

  /// Kilo-Walk UI string — serversRemoveProfileDisplayName
  ///
  /// In en, this message translates to:
  /// **'Remove \"{displayName}\"?'**
  String serversRemoveProfileDisplayName(String displayName);

  /// Kilo-Walk UI string — serversSearchActiveHint
  ///
  /// In en, this message translates to:
  /// **'Search active server'**
  String get serversSearchActiveHint;

  /// Kilo-Walk UI string — serversServersConfigured
  ///
  /// In en, this message translates to:
  /// **'No servers configured'**
  String get serversServersConfigured;

  /// Kilo-Walk UI string — serversSetActive
  ///
  /// In en, this message translates to:
  /// **'Set Active'**
  String get serversSetActive;

  /// Kilo-Walk UI string — serversSetDefault
  ///
  /// In en, this message translates to:
  /// **'Set Default'**
  String get serversSetDefault;

  /// Kilo-Walk UI string — serversSetupDebug
  ///
  /// In en, this message translates to:
  /// **'Setup Debug'**
  String get serversSetupDebug;

  /// Kilo-Walk UI string — serversSetupWizard
  ///
  /// In en, this message translates to:
  /// **'Setup Wizard'**
  String get serversSetupWizard;

  /// Kilo-Walk UI string — serversTailscaleAdminApprovalRequired
  ///
  /// In en, this message translates to:
  /// **'Tailscale admin approval required'**
  String get serversTailscaleAdminApprovalRequired;

  /// Kilo-Walk UI string — serversTailscaleAuthRequired
  ///
  /// In en, this message translates to:
  /// **'Tailscale authentication required'**
  String get serversTailscaleAuthRequired;

  /// Kilo-Walk UI string — serversTailscaleConnectExplanation
  ///
  /// In en, this message translates to:
  /// **'Tailscale will connect when this active profile is used.'**
  String get serversTailscaleConnectExplanation;

  /// Kilo-Walk UI string — serversTailscaleConnected
  ///
  /// In en, this message translates to:
  /// **'Tailscale connected'**
  String get serversTailscaleConnected;

  /// Kilo-Walk UI string — serversTailscaleConnecting
  ///
  /// In en, this message translates to:
  /// **'Tailscale connecting'**
  String get serversTailscaleConnecting;

  /// Kilo-Walk UI string — serversTailscaleConnectionFailed
  ///
  /// In en, this message translates to:
  /// **'Tailscale connection failed'**
  String get serversTailscaleConnectionFailed;

  /// Kilo-Walk UI string — serversTailscaleDisconnected
  ///
  /// In en, this message translates to:
  /// **'Tailscale disconnected'**
  String get serversTailscaleDisconnected;

  /// Kilo-Walk UI string — serversTailscaleLoginExplanation
  ///
  /// In en, this message translates to:
  /// **'Open the Tailscale login URL to add this device to your tailnet.'**
  String get serversTailscaleLoginExplanation;

  /// Kilo-Walk UI string — serversTailscaleLogout
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get serversTailscaleLogout;

  /// Kilo-Walk UI string — serversTailscaleLogoutConfirmMessage
  ///
  /// In en, this message translates to:
  /// **'This device will leave the tailnet. You can log in again at any time.'**
  String get serversTailscaleLogoutConfirmMessage;

  /// Kilo-Walk UI string — serversTailscaleLogoutConfirmTitle
  ///
  /// In en, this message translates to:
  /// **'Log out of Tailscale?'**
  String get serversTailscaleLogoutConfirmTitle;

  /// Kilo-Walk UI string — serversTailscaleReconnect
  ///
  /// In en, this message translates to:
  /// **'Reconnect'**
  String get serversTailscaleReconnect;

  /// Kilo-Walk UI string — serversTailscaleTrafficExplanation
  ///
  /// In en, this message translates to:
  /// **'OpenCode traffic for this active profile is routed through Tailscale.'**
  String get serversTailscaleTrafficExplanation;

  /// Kilo-Walk UI string — serversTailscaleUnsupported
  ///
  /// In en, this message translates to:
  /// **'Tailscale unsupported'**
  String get serversTailscaleUnsupported;

  /// Kilo-Walk UI string — serversUnhealthyActivateError
  ///
  /// In en, this message translates to:
  /// **'This server is unhealthy. Use check health or edit settings before activating.'**
  String get serversUnhealthyActivateError;

  /// Kilo-Walk UI string — sessionActionArchived
  ///
  /// In en, this message translates to:
  /// **'archived'**
  String get sessionActionArchived;

  /// Kilo-Walk UI string — sessionActionDeleted
  ///
  /// In en, this message translates to:
  /// **'deleted'**
  String get sessionActionDeleted;

  /// Kilo-Walk UI string — sessionActionForked
  ///
  /// In en, this message translates to:
  /// **'forked'**
  String get sessionActionForked;

  /// Kilo-Walk UI string — sessionActionPinned
  ///
  /// In en, this message translates to:
  /// **'pinned'**
  String get sessionActionPinned;

  /// Kilo-Walk UI string — sessionActionUnarchived
  ///
  /// In en, this message translates to:
  /// **'unarchived'**
  String get sessionActionUnarchived;

  /// Kilo-Walk UI string — sessionActionUnpinned
  ///
  /// In en, this message translates to:
  /// **'unpinned'**
  String get sessionActionUnpinned;

  /// Kilo-Walk UI string — sessionArchive
  ///
  /// In en, this message translates to:
  /// **'Archive'**
  String get sessionArchive;

  /// Kilo-Walk UI string — sessionCancelRename
  ///
  /// In en, this message translates to:
  /// **'Cancel rename'**
  String get sessionCancelRename;

  /// Kilo-Walk UI string — sessionChildrenCount
  ///
  /// In en, this message translates to:
  /// **'Children: {count}'**
  String sessionChildrenCount(int count);

  /// Kilo-Walk UI string — sessionCompactContext
  ///
  /// In en, this message translates to:
  /// **'Compact context'**
  String get sessionCompactContext;

  /// Kilo-Walk UI string — sessionCopyLink
  ///
  /// In en, this message translates to:
  /// **'Copy Link'**
  String get sessionCopyLink;

  /// Kilo-Walk UI string — sessionDelete
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get sessionDelete;

  /// Kilo-Walk UI string — sessionDeleteConfirm
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the conversation \"{title}\"? This action cannot be undone.'**
  String sessionDeleteConfirm(String title);

  /// Kilo-Walk UI string — sessionDeleteTitle
  ///
  /// In en, this message translates to:
  /// **'Delete Conversation'**
  String get sessionDeleteTitle;

  /// Kilo-Walk UI string — sessionDiffChangedFile
  ///
  /// In en, this message translates to:
  /// **'Changed file'**
  String get sessionDiffChangedFile;

  /// Kilo-Walk UI string — sessionDiffContentNotCaptured
  ///
  /// In en, this message translates to:
  /// **'File content not captured by the server'**
  String get sessionDiffContentNotCaptured;

  /// Kilo-Walk UI string — sessionDiffFilesChanged
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 file changed} other{{count} files changed}}'**
  String sessionDiffFilesChanged(int count);

  /// Kilo-Walk UI string — sessionDiffFilesCount
  ///
  /// In en, this message translates to:
  /// **'Diff files: {count}'**
  String sessionDiffFilesCount(int count);

  /// Kilo-Walk UI string — sessionDiffLinesAddedRemoved
  ///
  /// In en, this message translates to:
  /// **'+{added} lines added -{removed} lines removed'**
  String sessionDiffLinesAddedRemoved(int added, int removed);

  /// Kilo-Walk UI string — sessionDiffLinesCollapsed
  ///
  /// In en, this message translates to:
  /// **'{count} lines collapsed — tap to expand'**
  String sessionDiffLinesCollapsed(int count);

  /// Kilo-Walk UI string — sessionDiffLoading
  ///
  /// In en, this message translates to:
  /// **'Loading changed files…'**
  String get sessionDiffLoading;

  /// Kilo-Walk UI string — sessionDiffReview
  ///
  /// In en, this message translates to:
  /// **'Review changes'**
  String get sessionDiffReview;

  /// Kilo-Walk UI string — sessionDiffSplit
  ///
  /// In en, this message translates to:
  /// **'Split'**
  String get sessionDiffSplit;

  /// Kilo-Walk UI string — sessionDiffSummary
  ///
  /// In en, this message translates to:
  /// **'Summary'**
  String get sessionDiffSummary;

  /// Kilo-Walk UI string — sessionDiffUnified
  ///
  /// In en, this message translates to:
  /// **'Unified'**
  String get sessionDiffUnified;

  /// Kilo-Walk UI string — sessionExportAssistant
  ///
  /// In en, this message translates to:
  /// **'Assistant'**
  String get sessionExportAssistant;

  /// Kilo-Walk UI string — sessionExportCanceled
  ///
  /// In en, this message translates to:
  /// **'Session export canceled'**
  String get sessionExportCanceled;

  /// Kilo-Walk UI string — sessionExportDebugJson
  ///
  /// In en, this message translates to:
  /// **'Export debug JSON'**
  String get sessionExportDebugJson;

  /// Kilo-Walk UI string — sessionExportDebugJsonErrorClipboard
  ///
  /// In en, this message translates to:
  /// **'Could not save file; debug JSON copied to clipboard'**
  String get sessionExportDebugJsonErrorClipboard;

  /// Kilo-Walk UI string — sessionExportDebugJsonSaved
  ///
  /// In en, this message translates to:
  /// **'Debug JSON export saved'**
  String get sessionExportDebugJsonSaved;

  /// Kilo-Walk UI string — sessionExportDebugJsonTitle
  ///
  /// In en, this message translates to:
  /// **'Export session as debug JSON'**
  String get sessionExportDebugJsonTitle;

  /// Kilo-Walk UI string — sessionExportError
  ///
  /// In en, this message translates to:
  /// **'Error:'**
  String get sessionExportError;

  /// Kilo-Walk UI string — sessionExportInput
  ///
  /// In en, this message translates to:
  /// **'Input:'**
  String get sessionExportInput;

  /// Kilo-Walk UI string — sessionExportMarkdown
  ///
  /// In en, this message translates to:
  /// **'Export Markdown'**
  String get sessionExportMarkdown;

  /// Kilo-Walk UI string — sessionExportMarkdownErrorClipboard
  ///
  /// In en, this message translates to:
  /// **'Could not save file; Markdown copied to clipboard'**
  String get sessionExportMarkdownErrorClipboard;

  /// Kilo-Walk UI string — sessionExportMarkdownSaved
  ///
  /// In en, this message translates to:
  /// **'Markdown export saved'**
  String get sessionExportMarkdownSaved;

  /// Kilo-Walk UI string — sessionExportMarkdownTitle
  ///
  /// In en, this message translates to:
  /// **'Export session as Markdown'**
  String get sessionExportMarkdownTitle;

  /// Kilo-Walk UI string — sessionExportOutput
  ///
  /// In en, this message translates to:
  /// **'Output:'**
  String get sessionExportOutput;

  /// Kilo-Walk UI string — sessionExportUntitled
  ///
  /// In en, this message translates to:
  /// **'Untitled session'**
  String get sessionExportUntitled;

  /// Kilo-Walk UI string — sessionExportUser
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get sessionExportUser;

  /// Kilo-Walk UI string — sessionFailedRename
  ///
  /// In en, this message translates to:
  /// **'Failed to rename conversation'**
  String get sessionFailedRename;

  /// Kilo-Walk UI string — sessionFailedUpdateArchive
  ///
  /// In en, this message translates to:
  /// **'Failed to update archive state'**
  String get sessionFailedUpdateArchive;

  /// Kilo-Walk UI string — sessionFailedUpdateSharing
  ///
  /// In en, this message translates to:
  /// **'Failed to update sharing state'**
  String get sessionFailedUpdateSharing;

  /// Kilo-Walk UI string — sessionFork
  ///
  /// In en, this message translates to:
  /// **'Fork'**
  String get sessionFork;

  /// Kilo-Walk UI string — sessionForkFailed
  ///
  /// In en, this message translates to:
  /// **'Failed to fork conversation'**
  String get sessionForkFailed;

  /// Kilo-Walk UI string — sessionForked
  ///
  /// In en, this message translates to:
  /// **'Conversation forked'**
  String get sessionForked;

  /// Kilo-Walk UI string — sessionHasError
  ///
  /// In en, this message translates to:
  /// **'\"{title}\" has an error.'**
  String sessionHasError(String title);

  /// Kilo-Walk UI string — sessionHasNewReply
  ///
  /// In en, this message translates to:
  /// **'\"{title}\" has a new reply.'**
  String sessionHasNewReply(String title);

  /// Kilo-Walk UI string — sessionKeyboardShortcuts
  ///
  /// In en, this message translates to:
  /// **'Keyboard shortcuts'**
  String get sessionKeyboardShortcuts;

  /// Kilo-Walk UI string — sessionNeedsInput
  ///
  /// In en, this message translates to:
  /// **'\"{title}\" needs your input.'**
  String sessionNeedsInput(String title);

  /// Kilo-Walk UI string — sessionNoCachedConversations
  ///
  /// In en, this message translates to:
  /// **'No cached conversations yet'**
  String get sessionNoCachedConversations;

  /// Kilo-Walk UI string — sessionNoConversationsInProject
  ///
  /// In en, this message translates to:
  /// **'No conversations in this project.'**
  String get sessionNoConversationsInProject;

  /// Kilo-Walk UI string — sessionNotAvailable
  ///
  /// In en, this message translates to:
  /// **'Conversation is not available for this project yet'**
  String get sessionNotAvailable;

  /// Kilo-Walk UI string — sessionOpenProjectToLoad
  ///
  /// In en, this message translates to:
  /// **'Open project to load conversations.'**
  String get sessionOpenProjectToLoad;

  /// Kilo-Walk UI string — sessionPin
  ///
  /// In en, this message translates to:
  /// **'Pin'**
  String get sessionPin;

  /// Kilo-Walk UI string — sessionRename
  ///
  /// In en, this message translates to:
  /// **'Rename'**
  String get sessionRename;

  /// Kilo-Walk UI string — sessionRenameHint
  ///
  /// In en, this message translates to:
  /// **'Enter new conversation name'**
  String get sessionRenameHint;

  /// Kilo-Walk UI string — sessionRenameTitle
  ///
  /// In en, this message translates to:
  /// **'Rename Conversation'**
  String get sessionRenameTitle;

  /// Kilo-Walk UI string — sessionSaveTitle
  ///
  /// In en, this message translates to:
  /// **'Save title'**
  String get sessionSaveTitle;

  /// Kilo-Walk UI string — sessionShare
  ///
  /// In en, this message translates to:
  /// **'Share session'**
  String get sessionShare;

  /// Kilo-Walk UI string — sessionShareAction
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get sessionShareAction;

  /// Kilo-Walk UI string — sessionShareLinkCopied
  ///
  /// In en, this message translates to:
  /// **'Share link copied'**
  String get sessionShareLinkCopied;

  /// Kilo-Walk UI string — sessionShareLinkUnavailable
  ///
  /// In en, this message translates to:
  /// **'Share link unavailable for this session'**
  String get sessionShareLinkUnavailable;

  /// Kilo-Walk UI string — sessionShared
  ///
  /// In en, this message translates to:
  /// **'Conversation shared'**
  String get sessionShared;

  /// Kilo-Walk UI string — sessionSyncing
  ///
  /// In en, this message translates to:
  /// **'Syncing conversations...'**
  String get sessionSyncing;

  /// Kilo-Walk UI string — sessionTitleHint
  ///
  /// In en, this message translates to:
  /// **'Conversation title'**
  String get sessionTitleHint;

  /// Kilo-Walk UI string — sessionUnarchive
  ///
  /// In en, this message translates to:
  /// **'Unarchive'**
  String get sessionUnarchive;

  /// Kilo-Walk UI string — sessionUnpin
  ///
  /// In en, this message translates to:
  /// **'Unpin'**
  String get sessionUnpin;

  /// Kilo-Walk UI string — sessionUnshare
  ///
  /// In en, this message translates to:
  /// **'Unshare session'**
  String get sessionUnshare;

  /// Kilo-Walk UI string — sessionUnshareAction
  ///
  /// In en, this message translates to:
  /// **'Unshare'**
  String get sessionUnshareAction;

  /// Kilo-Walk UI string — sessionUnshared
  ///
  /// In en, this message translates to:
  /// **'Conversation unshared'**
  String get sessionUnshared;

  /// Kilo-Walk UI string — sessionViewTasks
  ///
  /// In en, this message translates to:
  /// **'View tasks'**
  String get sessionViewTasks;

  /// Kilo-Walk UI string — settingsAboutCheckForUpdates
  ///
  /// In en, this message translates to:
  /// **'Check for updates'**
  String get settingsAboutCheckForUpdates;

  /// Kilo-Walk UI string — settingsAboutCheckOnOpen
  ///
  /// In en, this message translates to:
  /// **'Check for updates on open'**
  String get settingsAboutCheckOnOpen;

  /// Kilo-Walk UI string — settingsAboutCheckOnOpenDescription
  ///
  /// In en, this message translates to:
  /// **'Automatically check when the app starts'**
  String get settingsAboutCheckOnOpenDescription;

  /// Kilo-Walk UI string — settingsAboutChecking
  ///
  /// In en, this message translates to:
  /// **'Checking...'**
  String get settingsAboutChecking;

  /// Kilo-Walk UI string — settingsAboutDescription
  ///
  /// In en, this message translates to:
  /// **'Version, updates, help, and app data'**
  String get settingsAboutDescription;

  /// Kilo-Walk UI string — settingsAboutDismiss
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get settingsAboutDismiss;

  /// Kilo-Walk UI string — settingsAboutDownloading
  ///
  /// In en, this message translates to:
  /// **'Downloading... {percent}%'**
  String settingsAboutDownloading(String percent);

  /// Kilo-Walk UI string — settingsAboutEraseAllData
  ///
  /// In en, this message translates to:
  /// **'Erase all data and restart'**
  String get settingsAboutEraseAllData;

  /// Kilo-Walk UI string — settingsAboutInstallUpdate
  ///
  /// In en, this message translates to:
  /// **'Install update'**
  String get settingsAboutInstallUpdate;

  /// Kilo-Walk UI string — settingsAboutInstalling
  ///
  /// In en, this message translates to:
  /// **'Installing...'**
  String get settingsAboutInstalling;

  /// Kilo-Walk UI string — settingsAboutLatestVersion
  ///
  /// In en, this message translates to:
  /// **'v{version} is the latest version'**
  String settingsAboutLatestVersion(String version);

  /// Kilo-Walk UI string — settingsAboutLoading
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get settingsAboutLoading;

  /// Kilo-Walk UI string — settingsAboutReplayChatTour
  ///
  /// In en, this message translates to:
  /// **'Replay chat tour'**
  String get settingsAboutReplayChatTour;

  /// Kilo-Walk UI string — settingsAboutReplayChatTourDescription
  ///
  /// In en, this message translates to:
  /// **'Close settings and show the guided chat walkthrough'**
  String get settingsAboutReplayChatTourDescription;

  /// Kilo-Walk UI string — settingsAboutResetApp
  ///
  /// In en, this message translates to:
  /// **'Reset app'**
  String get settingsAboutResetApp;

  /// Kilo-Walk UI string — settingsAboutResetAppQuestion
  ///
  /// In en, this message translates to:
  /// **'Reset app?'**
  String get settingsAboutResetAppQuestion;

  /// Kilo-Walk UI string — settingsAboutResetAppWarning
  ///
  /// In en, this message translates to:
  /// **'This will erase all servers, settings, and cached data. This action cannot be undone.'**
  String get settingsAboutResetAppWarning;

  /// Kilo-Walk UI string — settingsAboutRetryInstall
  ///
  /// In en, this message translates to:
  /// **'Retry install'**
  String get settingsAboutRetryInstall;

  /// Kilo-Walk UI string — settingsAboutTapToCheck
  ///
  /// In en, this message translates to:
  /// **'Tap to check for new versions'**
  String get settingsAboutTapToCheck;

  /// Kilo-Walk UI string — settingsAboutTitle
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get settingsAboutTitle;

  /// Kilo-Walk UI string — settingsAboutUpToDate
  ///
  /// In en, this message translates to:
  /// **'You\'\'re up to date'**
  String get settingsAboutUpToDate;

  /// Kilo-Walk UI string — settingsAboutUpdateAvailable
  ///
  /// In en, this message translates to:
  /// **'Update available: v{version}'**
  String settingsAboutUpdateAvailable(String version);

  /// Kilo-Walk UI string — settingsAboutUpdateInstalled
  ///
  /// In en, this message translates to:
  /// **'Update installed. Restart the app to apply.'**
  String get settingsAboutUpdateInstalled;

  /// Kilo-Walk UI string — settingsAboutUpdateVersionSummary
  ///
  /// In en, this message translates to:
  /// **'Current: {installedVersion}; available: v{latestVersion}'**
  String settingsAboutUpdateVersionSummary(
    String installedVersion,
    String latestVersion,
  );

  /// Kilo-Walk UI string — settingsAboutVersion
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get settingsAboutVersion;

  /// Kilo-Walk UI string — settingsAboutVersionBuild
  ///
  /// In en, this message translates to:
  /// **'{version} (build {buildNumber})'**
  String settingsAboutVersionBuild(String buildNumber, String version);

  /// Kilo-Walk UI string — settingsAppearanceAmoledDark
  ///
  /// In en, this message translates to:
  /// **'AMOLED dark mode'**
  String get settingsAppearanceAmoledDark;

  /// Kilo-Walk UI string — settingsAppearanceAmoledDarkActive
  ///
  /// In en, this message translates to:
  /// **'Use pure black surfaces while dark mode is active.'**
  String get settingsAppearanceAmoledDarkActive;

  /// Kilo-Walk UI string — settingsAppearanceAmoledDarkInactive
  ///
  /// In en, this message translates to:
  /// **'Switch to dark mode to enable AMOLED surfaces.'**
  String get settingsAppearanceAmoledDarkInactive;

  /// Kilo-Walk UI string — settingsAppearanceBrandColor
  ///
  /// In en, this message translates to:
  /// **'Brand color'**
  String get settingsAppearanceBrandColor;

  /// Kilo-Walk UI string — settingsAppearanceBrandColorDynamicBlocked
  ///
  /// In en, this message translates to:
  /// **'Disable wallpaper colors to pick a brand color.'**
  String get settingsAppearanceBrandColorDynamicBlocked;

  /// Kilo-Walk UI string — settingsAppearanceBrandColorNormal
  ///
  /// In en, this message translates to:
  /// **'Pick a seed color for the app palette.'**
  String get settingsAppearanceBrandColorNormal;

  /// Kilo-Walk UI string — settingsAppearanceBrandColorPresetBlocked
  ///
  /// In en, this message translates to:
  /// **'Switch to Kilo-Walk Classic to pick a brand color.'**
  String get settingsAppearanceBrandColorPresetBlocked;

  /// Kilo-Walk UI string — settingsAppearanceChatFontScale
  ///
  /// In en, this message translates to:
  /// **'Conversation text size'**
  String get settingsAppearanceChatFontScale;

  /// Kilo-Walk UI string — settingsAppearanceChatFontScaleDescription
  ///
  /// In en, this message translates to:
  /// **'Scale the chat message and composer text on top of the system text size.'**
  String get settingsAppearanceChatFontScaleDescription;

  /// Kilo-Walk UI string — settingsAppearanceKilo-WalkClassic
  ///
  /// In en, this message translates to:
  /// **'Kilo-Walk Classic'**
  String get settingsAppearanceCodeWalkClassic;

  /// Kilo-Walk UI string — settingsAppearanceComposerTips
  ///
  /// In en, this message translates to:
  /// **'Composer tips'**
  String get settingsAppearanceComposerTips;

  /// Kilo-Walk UI string — settingsAppearanceComposerTipsDescription
  ///
  /// In en, this message translates to:
  /// **'Show or hide rotating tips while the assistant is reasoning.'**
  String get settingsAppearanceComposerTipsDescription;

  /// Kilo-Walk UI string — settingsAppearanceContrast
  ///
  /// In en, this message translates to:
  /// **'Contrast'**
  String get settingsAppearanceContrast;

  /// Kilo-Walk UI string — settingsAppearanceContrastDynamicBlocked
  ///
  /// In en, this message translates to:
  /// **'Disable wallpaper colors to adjust contrast.'**
  String get settingsAppearanceContrastDynamicBlocked;

  /// Kilo-Walk UI string — settingsAppearanceContrastHigh
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get settingsAppearanceContrastHigh;

  /// Kilo-Walk UI string — settingsAppearanceContrastNormal
  ///
  /// In en, this message translates to:
  /// **'Adjust the contrast level of the color scheme.'**
  String get settingsAppearanceContrastNormal;

  /// Kilo-Walk UI string — settingsAppearanceContrastPresetBlocked
  ///
  /// In en, this message translates to:
  /// **'Switch to Kilo-Walk Classic to adjust contrast.'**
  String get settingsAppearanceContrastPresetBlocked;

  /// Kilo-Walk UI string — settingsAppearanceContrastReduced
  ///
  /// In en, this message translates to:
  /// **'Reduced'**
  String get settingsAppearanceContrastReduced;

  /// Kilo-Walk UI string — settingsAppearanceDark
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get settingsAppearanceDark;

  /// Kilo-Walk UI string — settingsAppearanceDensity
  ///
  /// In en, this message translates to:
  /// **'Density'**
  String get settingsAppearanceDensity;

  /// Kilo-Walk UI string — settingsAppearanceDensityDense
  ///
  /// In en, this message translates to:
  /// **'Dense'**
  String get settingsAppearanceDensityDense;

  /// Kilo-Walk UI string — settingsAppearanceDensityDescription
  ///
  /// In en, this message translates to:
  /// **'Apply spacing and component density across the app.'**
  String get settingsAppearanceDensityDescription;

  /// Kilo-Walk UI string — settingsAppearanceDensityExtraDense
  ///
  /// In en, this message translates to:
  /// **'Extra Dense'**
  String get settingsAppearanceDensityExtraDense;

  /// Kilo-Walk UI string — settingsAppearanceDensityExtraSpacious
  ///
  /// In en, this message translates to:
  /// **'Extra Spacious'**
  String get settingsAppearanceDensityExtraSpacious;

  /// Kilo-Walk UI string — settingsAppearanceDensityNormal
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get settingsAppearanceDensityNormal;

  /// Kilo-Walk UI string — settingsAppearanceDensitySpacious
  ///
  /// In en, this message translates to:
  /// **'Spacious'**
  String get settingsAppearanceDensitySpacious;

  /// Kilo-Walk UI string — settingsAppearanceDescription
  ///
  /// In en, this message translates to:
  /// **'Choose themes, colors, text size, and chat display'**
  String get settingsAppearanceDescription;

  /// Kilo-Walk UI string — settingsAppearanceFontSize
  ///
  /// In en, this message translates to:
  /// **'Text size'**
  String get settingsAppearanceFontSize;

  /// Kilo-Walk UI string — settingsAppearanceFontSizeDescription
  ///
  /// In en, this message translates to:
  /// **'Adjust the size of system text, conversation text, and terminal text.'**
  String get settingsAppearanceFontSizeDescription;

  /// Kilo-Walk UI string — settingsAppearanceLight
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get settingsAppearanceLight;

  /// Kilo-Walk UI string — settingsAppearanceMathRendering
  ///
  /// In en, this message translates to:
  /// **'Math rendering'**
  String get settingsAppearanceMathRendering;

  /// Kilo-Walk UI string — settingsAppearanceMathRenderingDescription
  ///
  /// In en, this message translates to:
  /// **'Render LaTeX math expressions (\$…\$ and \$\$…\$\$) as typeset equations in chat messages.'**
  String get settingsAppearanceMathRenderingDescription;

  /// Kilo-Walk UI string — settingsAppearanceNoPresets
  ///
  /// In en, this message translates to:
  /// **'No preset palettes found'**
  String get settingsAppearanceNoPresets;

  /// Kilo-Walk UI string — settingsAppearanceOpenCodePresets
  ///
  /// In en, this message translates to:
  /// **'OpenCode Presets'**
  String get settingsAppearanceOpenCodePresets;

  /// Kilo-Walk UI string — settingsAppearancePresetHelper
  ///
  /// In en, this message translates to:
  /// **'Mirrors the official OpenCode Web built-in theme list.'**
  String get settingsAppearancePresetHelper;

  /// Kilo-Walk UI string — settingsAppearancePresetNote
  ///
  /// In en, this message translates to:
  /// **'Theme colors now follow the official OpenCode Web registry and drive markdown/code surfaces too.'**
  String get settingsAppearancePresetNote;

  /// Kilo-Walk UI string — settingsAppearancePresetPalette
  ///
  /// In en, this message translates to:
  /// **'Preset palette'**
  String get settingsAppearancePresetPalette;

  /// Kilo-Walk UI string — settingsAppearanceSearchPreset
  ///
  /// In en, this message translates to:
  /// **'Search preset palette'**
  String get settingsAppearanceSearchPreset;

  /// Kilo-Walk UI string — settingsAppearanceSectionDescription
  ///
  /// In en, this message translates to:
  /// **'Tune visual density and message surfaces for your workflow.'**
  String get settingsAppearanceSectionDescription;

  /// Kilo-Walk UI string — settingsAppearanceSectionTitle
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsAppearanceSectionTitle;

  /// Kilo-Walk UI string — settingsAppearanceSystem
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get settingsAppearanceSystem;

  /// Kilo-Walk UI string — settingsAppearanceSystemFontScale
  ///
  /// In en, this message translates to:
  /// **'System text size'**
  String get settingsAppearanceSystemFontScale;

  /// Kilo-Walk UI string — settingsAppearanceSystemFontScaleDescription
  ///
  /// In en, this message translates to:
  /// **'Scale all text in the app shell, including menus, dialogs, and sidebars.'**
  String get settingsAppearanceSystemFontScaleDescription;

  /// Kilo-Walk UI string — settingsAppearanceTaskList
  ///
  /// In en, this message translates to:
  /// **'Task list'**
  String get settingsAppearanceTaskList;

  /// Kilo-Walk UI string — settingsAppearanceTaskListDescription
  ///
  /// In en, this message translates to:
  /// **'Show or hide the session task list widget.'**
  String get settingsAppearanceTaskListDescription;

  /// Kilo-Walk UI string — settingsAppearanceTerminalFontSize
  ///
  /// In en, this message translates to:
  /// **'Terminal text size'**
  String get settingsAppearanceTerminalFontSize;

  /// Kilo-Walk UI string — settingsAppearanceTerminalFontSizeDescription
  ///
  /// In en, this message translates to:
  /// **'Resize the embedded terminal font. Applies immediately to running sessions.'**
  String get settingsAppearanceTerminalFontSizeDescription;

  /// Kilo-Walk UI string — settingsAppearanceTheme
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsAppearanceTheme;

  /// Kilo-Walk UI string — settingsAppearanceThemeDescription
  ///
  /// In en, this message translates to:
  /// **'Choose light, dark, or system mode, then keep the Kilo-Walk classic palette or switch to an OpenCode preset.'**
  String get settingsAppearanceThemeDescription;

  /// Kilo-Walk UI string — settingsAppearanceVisualStyle
  ///
  /// In en, this message translates to:
  /// **'Visual style'**
  String get settingsAppearanceVisualStyle;

  /// Kilo-Walk UI string — settingsAppearanceVisualStyleDescription
  ///
  /// In en, this message translates to:
  /// **'Choose Classic or softer Refined surfaces.'**
  String get settingsAppearanceVisualStyleDescription;

  /// Kilo-Walk UI string — settingsAppearanceVisualStyleClassic
  ///
  /// In en, this message translates to:
  /// **'Classic'**
  String get settingsAppearanceVisualStyleClassic;

  /// Kilo-Walk UI string — settingsAppearanceVisualStyleRefined
  ///
  /// In en, this message translates to:
  /// **'Refined'**
  String get settingsAppearanceVisualStyleRefined;

  /// Kilo-Walk UI string — settingsAppearanceThinkingBubbles
  ///
  /// In en, this message translates to:
  /// **'Thinking bubbles'**
  String get settingsAppearanceThinkingBubbles;

  /// Kilo-Walk UI string — settingsAppearanceThinkingBubblesDescription
  ///
  /// In en, this message translates to:
  /// **'Show or hide reasoning blocks in assistant messages.'**
  String get settingsAppearanceThinkingBubblesDescription;

  /// Kilo-Walk UI string — settingsAppearanceTitle
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsAppearanceTitle;

  /// Kilo-Walk UI string — settingsAppearanceToolCallBubbles
  ///
  /// In en, this message translates to:
  /// **'Tool call bubbles'**
  String get settingsAppearanceToolCallBubbles;

  /// Kilo-Walk UI string — settingsAppearanceToolCallBubblesDescription
  ///
  /// In en, this message translates to:
  /// **'Show or hide tool execution cards in assistant messages.'**
  String get settingsAppearanceToolCallBubblesDescription;

  /// Kilo-Walk UI string — settingsAppearanceWallpaperColors
  ///
  /// In en, this message translates to:
  /// **'Use wallpaper colors'**
  String get settingsAppearanceWallpaperColors;

  /// Kilo-Walk UI string — settingsAppearanceWallpaperNormal
  ///
  /// In en, this message translates to:
  /// **'Extract color scheme from your device wallpaper.'**
  String get settingsAppearanceWallpaperNormal;

  /// Kilo-Walk UI string — settingsAppearanceWallpaperPresetBlocked
  ///
  /// In en, this message translates to:
  /// **'Switch to Kilo-Walk Classic to use wallpaper colors.'**
  String get settingsAppearanceWallpaperPresetBlocked;

  /// Kilo-Walk UI string — settingsAppearanceWindowChrome
  ///
  /// In en, this message translates to:
  /// **'Window tabs'**
  String get settingsAppearanceWindowChrome;

  /// Kilo-Walk UI string — settingsAppearanceWindowChromeDescription
  ///
  /// In en, this message translates to:
  /// **'Choose how session tabs and the window title bar are combined on desktop.'**
  String get settingsAppearanceWindowChromeDescription;

  /// Kilo-Walk UI string — settingsAppearanceWindowChromeIntegrated
  ///
  /// In en, this message translates to:
  /// **'Integrated tabs'**
  String get settingsAppearanceWindowChromeIntegrated;

  /// Kilo-Walk UI string — settingsAppearanceWindowChromeIntegratedDescription
  ///
  /// In en, this message translates to:
  /// **'Tabs sit at the top of the window and the system title bar is hidden.'**
  String get settingsAppearanceWindowChromeIntegratedDescription;

  /// Kilo-Walk UI string — settingsAppearanceWindowChromeSystem
  ///
  /// In en, this message translates to:
  /// **'System decoration'**
  String get settingsAppearanceWindowChromeSystem;

  /// Kilo-Walk UI string — settingsAppearanceWindowChromeSystemDescription
  ///
  /// In en, this message translates to:
  /// **'Keep the native title bar and show tabs below the app bar.'**
  String get settingsAppearanceWindowChromeSystemDescription;

  /// Kilo-Walk UI string — settingsBack
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get settingsBack;

  /// Kilo-Walk UI string — settingsBehaviorAutoupdateCaveat
  ///
  /// In en, this message translates to:
  /// **'Use About for Kilo-Walk release checks. This setting only mirrors the official OpenCode `autoupdate` config.'**
  String get settingsBehaviorAutoupdateCaveat;

  /// Kilo-Walk UI string — settingsBehaviorAutoupdateHelp
  ///
  /// In en, this message translates to:
  /// **'Controls upstream OpenCode runtime updates, not Kilo-Walk app update checks.'**
  String get settingsBehaviorAutoupdateHelp;

  /// Kilo-Walk UI string — settingsBehaviorCellularDataSaver
  ///
  /// In en, this message translates to:
  /// **'Cellular data saver'**
  String get settingsBehaviorCellularDataSaver;

  /// Kilo-Walk UI string — settingsBehaviorChatRenderMode
  ///
  /// In en, this message translates to:
  /// **'Chat render mode'**
  String get settingsBehaviorChatRenderMode;

  /// Kilo-Walk UI string — settingsBehaviorChatRenderModeBlock
  ///
  /// In en, this message translates to:
  /// **'Block'**
  String get settingsBehaviorChatRenderModeBlock;

  /// Kilo-Walk UI string — settingsBehaviorChatRenderModeBlockDescription
  ///
  /// In en, this message translates to:
  /// **'Hide live assistant text, reasoning, and tool cards until the current turn can be shown as one block.'**
  String get settingsBehaviorChatRenderModeBlockDescription;

  /// Kilo-Walk UI string — settingsBehaviorChatRenderModeDescription
  ///
  /// In en, this message translates to:
  /// **'Choose whether assistant responses appear as they stream or reveal after the current turn settles.'**
  String get settingsBehaviorChatRenderModeDescription;

  /// Kilo-Walk UI string — settingsBehaviorChatRenderModeLive
  ///
  /// In en, this message translates to:
  /// **'Live'**
  String get settingsBehaviorChatRenderModeLive;

  /// Kilo-Walk UI string — settingsBehaviorChatRenderModeLiveDescription
  ///
  /// In en, this message translates to:
  /// **'Show assistant text, reasoning, and tool activity as OpenCode streams events.'**
  String get settingsBehaviorChatRenderModeLiveDescription;

  /// Kilo-Walk UI string — settingsBehaviorComposerSpellCheck
  ///
  /// In en, this message translates to:
  /// **'Composer spell check'**
  String get settingsBehaviorComposerSpellCheck;

  /// Kilo-Walk UI string — settingsBehaviorComposerSpellCheckDescription
  ///
  /// In en, this message translates to:
  /// **'Use native platform spell check, suggestions, and autocorrect in the chat composer.'**
  String get settingsBehaviorComposerSpellCheckDescription;

  /// Kilo-Walk UI string — settingsBehaviorConfigDeferred
  ///
  /// In en, this message translates to:
  /// **'Kilo-Walk will apply this OpenCode setting after the current response finishes.'**
  String get settingsBehaviorConfigDeferred;

  /// Kilo-Walk UI string — settingsBehaviorConfigUpdateFailed
  ///
  /// In en, this message translates to:
  /// **'Could not update the OpenCode {field}.'**
  String settingsBehaviorConfigUpdateFailed(String field);

  /// Kilo-Walk UI string — settingsBehaviorConversationUsername
  ///
  /// In en, this message translates to:
  /// **'Conversation username'**
  String get settingsBehaviorConversationUsername;

  /// Kilo-Walk UI string — settingsBehaviorConversationUsernameHelp
  ///
  /// In en, this message translates to:
  /// **'Custom display name shown in conversations instead of the system username.'**
  String get settingsBehaviorConversationUsernameHelp;

  /// Kilo-Walk UI string — settingsBehaviorDataSaverActive
  ///
  /// In en, this message translates to:
  /// **'Active now on mobile data.'**
  String get settingsBehaviorDataSaverActive;

  /// Kilo-Walk UI string — settingsBehaviorDataSaverCellularOnly
  ///
  /// In en, this message translates to:
  /// **'Only applies when the connection is cellular/mobile.'**
  String get settingsBehaviorDataSaverCellularOnly;

  /// Kilo-Walk UI string — settingsBehaviorDataSaverDescription
  ///
  /// In en, this message translates to:
  /// **'Cuts automatic mobile-data usage by stopping background downloads and throttling automatic foreground refreshes.'**
  String get settingsBehaviorDataSaverDescription;

  /// Kilo-Walk UI string — settingsBehaviorDataSaverWaiting
  ///
  /// In en, this message translates to:
  /// **'Waiting for the next mobile-data sync window.'**
  String get settingsBehaviorDataSaverWaiting;

  /// Kilo-Walk UI string — settingsBehaviorDefaultAgent
  ///
  /// In en, this message translates to:
  /// **'Default agent'**
  String get settingsBehaviorDefaultAgent;

  /// Kilo-Walk UI string — settingsBehaviorDefaultAgentHelp
  ///
  /// In en, this message translates to:
  /// **'Primary agent used when no agent is explicitly chosen.'**
  String get settingsBehaviorDefaultAgentHelp;

  /// Kilo-Walk UI string — settingsBehaviorDefaultModel
  ///
  /// In en, this message translates to:
  /// **'Default model'**
  String get settingsBehaviorDefaultModel;

  /// Kilo-Walk UI string — settingsBehaviorDefaultModelHelp
  ///
  /// In en, this message translates to:
  /// **'Shared across OpenCode clients through config.'**
  String get settingsBehaviorDefaultModelHelp;

  /// Kilo-Walk UI string — settingsBehaviorDescription
  ///
  /// In en, this message translates to:
  /// **'Control language, chat behavior, data use, and OpenCode defaults'**
  String get settingsBehaviorDescription;

  /// Kilo-Walk UI string — settingsBehaviorEnableDataSaver
  ///
  /// In en, this message translates to:
  /// **'Enable cellular data saver'**
  String get settingsBehaviorEnableDataSaver;

  /// Kilo-Walk UI string — settingsBehaviorMultiDeviceSync
  ///
  /// In en, this message translates to:
  /// **'Enable experimental multi-device sync'**
  String get settingsBehaviorMultiDeviceSync;

  /// Kilo-Walk UI string — settingsBehaviorMultiDeviceSyncDescription
  ///
  /// In en, this message translates to:
  /// **'Sync composer selection (agent/model/variant) with the active server config.'**
  String get settingsBehaviorMultiDeviceSyncDescription;

  /// Kilo-Walk UI string — settingsBehaviorMultiDeviceSyncWarning
  ///
  /// In en, this message translates to:
  /// **'Can abort ongoing sessions when working in more than one session at the same time.'**
  String get settingsBehaviorMultiDeviceSyncWarning;

  /// Kilo-Walk UI string — settingsBehaviorNoAgents
  ///
  /// In en, this message translates to:
  /// **'No agents found'**
  String get settingsBehaviorNoAgents;

  /// Kilo-Walk UI string — settingsBehaviorNoModels
  ///
  /// In en, this message translates to:
  /// **'No models found'**
  String get settingsBehaviorNoModels;

  /// Kilo-Walk UI string — settingsBehaviorOpenCodeAutoupdate
  ///
  /// In en, this message translates to:
  /// **'OpenCode auto-update'**
  String get settingsBehaviorOpenCodeAutoupdate;

  /// Kilo-Walk UI string — settingsBehaviorOpenCodeDefaults
  ///
  /// In en, this message translates to:
  /// **'OpenCode-backed defaults'**
  String get settingsBehaviorOpenCodeDefaults;

  /// Kilo-Walk UI string — settingsBehaviorOpenCodeDefaultsDescription
  ///
  /// In en, this message translates to:
  /// **'These values write to `/config` on the active server and match official OpenCode shared config.'**
  String get settingsBehaviorOpenCodeDefaultsDescription;

  /// Kilo-Walk UI string — settingsBehaviorOpenCodeSnapshots
  ///
  /// In en, this message translates to:
  /// **'OpenCode snapshots'**
  String get settingsBehaviorOpenCodeSnapshots;

  /// Kilo-Walk UI string — settingsBehaviorOpenCodeSnapshotsDescription
  ///
  /// In en, this message translates to:
  /// **'Keep upstream git-backed snapshots enabled for undo/redo and recovery history.'**
  String get settingsBehaviorOpenCodeSnapshotsDescription;

  /// Kilo-Walk UI string — settingsBehaviorPermissionDeferred
  ///
  /// In en, this message translates to:
  /// **'Advanced permission rule editing stays out of Settings for now and is deferred to later parity work.'**
  String get settingsBehaviorPermissionDeferred;

  /// Kilo-Walk UI string — settingsBehaviorPermissionProvenance
  ///
  /// In en, this message translates to:
  /// **'Permission handling provenance'**
  String get settingsBehaviorPermissionProvenance;

  /// Kilo-Walk UI string — settingsBehaviorPermissionProvenanceDescription
  ///
  /// In en, this message translates to:
  /// **'Official OpenCode permission policy is configured in `opencode.json` with allow/ask/deny rules per tool. Kilo-Walk keeps the official permission-request cards and adds one approved ADR-023 exception: the composer auto-approve toggle replies with `Always` and `remember: true` unconditionally to create durable session-scoped grants, and keeps the same thread-scoped continuity path active in the Android background worker.'**
  String get settingsBehaviorPermissionProvenanceDescription;

  /// Kilo-Walk UI string — settingsBehaviorRefreshDefaults
  ///
  /// In en, this message translates to:
  /// **'Refresh defaults'**
  String get settingsBehaviorRefreshDefaults;

  /// Kilo-Walk UI string — settingsBehaviorSaveUsername
  ///
  /// In en, this message translates to:
  /// **'Save username'**
  String get settingsBehaviorSaveUsername;

  /// Kilo-Walk UI string — settingsBehaviorSearchAutoupdate
  ///
  /// In en, this message translates to:
  /// **'Search auto-update mode'**
  String get settingsBehaviorSearchAutoupdate;

  /// Kilo-Walk UI string — settingsBehaviorSearchDefaultAgent
  ///
  /// In en, this message translates to:
  /// **'Search default agent'**
  String get settingsBehaviorSearchDefaultAgent;

  /// Kilo-Walk UI string — settingsBehaviorSearchDefaultModel
  ///
  /// In en, this message translates to:
  /// **'Search default model'**
  String get settingsBehaviorSearchDefaultModel;

  /// Kilo-Walk UI string — settingsBehaviorSearchShareMode
  ///
  /// In en, this message translates to:
  /// **'Search sharing mode'**
  String get settingsBehaviorSearchShareMode;

  /// Kilo-Walk UI string — settingsBehaviorSearchSmallModel
  ///
  /// In en, this message translates to:
  /// **'Search small model'**
  String get settingsBehaviorSearchSmallModel;

  /// Kilo-Walk UI string — settingsBehaviorShareMode
  ///
  /// In en, this message translates to:
  /// **'OpenCode sharing default'**
  String get settingsBehaviorShareMode;

  /// Kilo-Walk UI string — settingsBehaviorShareModeCaveat
  ///
  /// In en, this message translates to:
  /// **'Use the chat-level share action to publish one session now. This setting only changes OpenCode\'\'s default sharing policy.'**
  String get settingsBehaviorShareModeCaveat;

  /// Kilo-Walk UI string — settingsBehaviorShareModeHelp
  ///
  /// In en, this message translates to:
  /// **'Controls the official global `share` config, not the share button for an individual chat.'**
  String get settingsBehaviorShareModeHelp;

  /// Kilo-Walk UI string — settingsBehaviorSmallModel
  ///
  /// In en, this message translates to:
  /// **'Small model'**
  String get settingsBehaviorSmallModel;

  /// Kilo-Walk UI string — settingsBehaviorSmallModelAutoFallback
  ///
  /// In en, this message translates to:
  /// **'Automatic fallback'**
  String get settingsBehaviorSmallModelAutoFallback;

  /// Kilo-Walk UI string — settingsBehaviorSmallModelFallbackActive
  ///
  /// In en, this message translates to:
  /// **'OpenCode automatic fallback is active because `small_model` is unset.'**
  String get settingsBehaviorSmallModelFallbackActive;

  /// Kilo-Walk UI string — settingsBehaviorSmallModelHelp
  ///
  /// In en, this message translates to:
  /// **'Used for lightweight tasks like title generation.'**
  String get settingsBehaviorSmallModelHelp;

  /// Kilo-Walk UI string — settingsBehaviorSmallModelResetCaveat
  ///
  /// In en, this message translates to:
  /// **'Resetting `small_model` back to automatic fallback still requires editing config outside the app because `/config` patch updates cannot remove keys.'**
  String get settingsBehaviorSmallModelResetCaveat;

  /// Kilo-Walk UI string — settingsBehaviorSnapshotCaveat
  ///
  /// In en, this message translates to:
  /// **'This controls OpenCode snapshot storage and undo/redo support, not Kilo-Walk local cache snapshots.'**
  String get settingsBehaviorSnapshotCaveat;

  /// Kilo-Walk UI string — settingsBehaviorTitle
  ///
  /// In en, this message translates to:
  /// **'Behavior'**
  String get settingsBehaviorTitle;

  /// Kilo-Walk UI string — settingsBehaviorUsernameFallback
  ///
  /// In en, this message translates to:
  /// **'OpenCode uses the system username because `username` is unset.'**
  String get settingsBehaviorUsernameFallback;

  /// Kilo-Walk UI string — settingsBehaviorUsernamePatchCaveat
  ///
  /// In en, this message translates to:
  /// **'Resetting `username` back to the system default still requires editing config outside the app because `/config` patch updates cannot remove keys.'**
  String get settingsBehaviorUsernamePatchCaveat;

  /// Kilo-Walk UI string — settingsConfigRefreshFailed
  ///
  /// In en, this message translates to:
  /// **'Updated the server setting, but could not refresh chat providers.'**
  String get settingsConfigRefreshFailed;

  /// Kilo-Walk UI string — settingsConfigUpdateDeferred
  ///
  /// In en, this message translates to:
  /// **'Kilo-Walk will apply this OpenCode setting after the current response finishes.'**
  String get settingsConfigUpdateDeferred;

  /// Kilo-Walk UI string — settingsConversationUsername
  ///
  /// In en, this message translates to:
  /// **'Conversation username'**
  String get settingsConversationUsername;

  /// Kilo-Walk UI string — settingsDefaultAgent
  ///
  /// In en, this message translates to:
  /// **'Default agent'**
  String get settingsDefaultAgent;

  /// Kilo-Walk UI string — settingsDefaultModel
  ///
  /// In en, this message translates to:
  /// **'Default model'**
  String get settingsDefaultModel;

  /// Kilo-Walk UI string — settingsLanguageDescription
  ///
  /// In en, this message translates to:
  /// **'Choose the language used by Kilo-Walk. System default follows your device language.'**
  String get settingsLanguageDescription;

  /// Kilo-Walk UI string — settingsLanguageEmptyText
  ///
  /// In en, this message translates to:
  /// **'No languages found'**
  String get settingsLanguageEmptyText;

  /// Kilo-Walk UI string — settingsLanguageFieldHelper
  ///
  /// In en, this message translates to:
  /// **'Applies immediately and persists across restarts.'**
  String get settingsLanguageFieldHelper;

  /// Kilo-Walk UI string — settingsLanguageFieldLabel
  ///
  /// In en, this message translates to:
  /// **'App language'**
  String get settingsLanguageFieldLabel;

  /// Kilo-Walk UI string — settingsLanguageSearchHint
  ///
  /// In en, this message translates to:
  /// **'Search languages'**
  String get settingsLanguageSearchHint;

  /// Kilo-Walk UI string — settingsLanguageSystemDefault
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get settingsLanguageSystemDefault;

  /// Kilo-Walk UI string — settingsLanguageTitle
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguageTitle;

  /// Kilo-Walk UI string — settingsLogsDescription
  ///
  /// In en, this message translates to:
  /// **'Review app diagnostics and troubleshooting details'**
  String get settingsLogsDescription;

  /// Kilo-Walk UI string — settingsLogsTitle
  ///
  /// In en, this message translates to:
  /// **'Logs'**
  String get settingsLogsTitle;

  /// Kilo-Walk UI string — settingsNoAgentsFound
  ///
  /// In en, this message translates to:
  /// **'No agents found'**
  String get settingsNoAgentsFound;

  /// Kilo-Walk UI string — settingsNotificationsAgentSubtitle
  ///
  /// In en, this message translates to:
  /// **'When a response finishes'**
  String get settingsNotificationsAgentSubtitle;

  /// Kilo-Walk UI string — settingsNotificationsAgentUpdates
  ///
  /// In en, this message translates to:
  /// **'Agent updates'**
  String get settingsNotificationsAgentUpdates;

  /// Kilo-Walk UI string — settingsNotificationsAnotherConversation
  ///
  /// In en, this message translates to:
  /// **'Another conversation'**
  String get settingsNotificationsAnotherConversation;

  /// Kilo-Walk UI string — settingsNotificationsAppInBackground
  ///
  /// In en, this message translates to:
  /// **'App in background'**
  String get settingsNotificationsAppInBackground;

  /// Kilo-Walk UI string — settingsNotificationsBackgroundAlerts
  ///
  /// In en, this message translates to:
  /// **'Android background alerts'**
  String get settingsNotificationsBackgroundAlerts;

  /// Kilo-Walk UI string — settingsNotificationsBackgroundBehavior
  ///
  /// In en, this message translates to:
  /// **'Background behavior'**
  String get settingsNotificationsBackgroundBehavior;

  /// Kilo-Walk UI string — settingsNotificationsBackgroundBehaviorDescription
  ///
  /// In en, this message translates to:
  /// **'Choose how Kilo-Walk behaves after the app leaves the foreground.'**
  String get settingsNotificationsBackgroundBehaviorDescription;

  /// Kilo-Walk UI string — settingsNotificationsBackgroundDescription
  ///
  /// In en, this message translates to:
  /// **'Use low-data background monitoring for response completions, permission requests, questions, and errors while the app is not on screen.'**
  String get settingsNotificationsBackgroundDescription;

  /// Kilo-Walk UI string — settingsNotificationsBackgroundToggle
  ///
  /// In en, this message translates to:
  /// **'Background alerts on Android'**
  String get settingsNotificationsBackgroundToggle;

  /// Kilo-Walk UI string — settingsNotificationsBackgroundToggleDescription
  ///
  /// In en, this message translates to:
  /// **'Turn off all Android background checks and hide the persistent monitor notification.'**
  String get settingsNotificationsBackgroundToggleDescription;

  /// Kilo-Walk UI string — settingsNotificationsBatteryDescription
  ///
  /// In en, this message translates to:
  /// **'If notifications only arrive when reopening the app, allow Kilo-Walk to run without optimization on this device.'**
  String get settingsNotificationsBatteryDescription;

  /// Kilo-Walk UI string — settingsNotificationsBatteryDisabled
  ///
  /// In en, this message translates to:
  /// **'Battery optimization is disabled for Kilo-Walk.'**
  String get settingsNotificationsBatteryDisabled;

  /// Kilo-Walk UI string — settingsNotificationsBatteryEnabled
  ///
  /// In en, this message translates to:
  /// **'Battery optimization is enabled. Some devices may delay background alerts.'**
  String get settingsNotificationsBatteryEnabled;

  /// Kilo-Walk UI string — settingsNotificationsBatteryOptimization
  ///
  /// In en, this message translates to:
  /// **'Android battery optimization'**
  String get settingsNotificationsBatteryOptimization;

  /// Kilo-Walk UI string — settingsNotificationsBatteryUnknown
  ///
  /// In en, this message translates to:
  /// **'Could not read battery optimization status yet.'**
  String get settingsNotificationsBatteryUnknown;

  /// Kilo-Walk UI string — settingsNotificationsChooseAudioFile
  ///
  /// In en, this message translates to:
  /// **'Choose audio file'**
  String get settingsNotificationsChooseAudioFile;

  /// Kilo-Walk UI string — settingsNotificationsChooseSystemSound
  ///
  /// In en, this message translates to:
  /// **'Choose system sound'**
  String get settingsNotificationsChooseSystemSound;

  /// Kilo-Walk UI string — settingsNotificationsCloseToTray
  ///
  /// In en, this message translates to:
  /// **'Close to tray'**
  String get settingsNotificationsCloseToTray;

  /// Kilo-Walk UI string — settingsNotificationsCloseToTrayDescription
  ///
  /// In en, this message translates to:
  /// **'Hide window and keep running in system tray.'**
  String get settingsNotificationsCloseToTrayDescription;

  /// Kilo-Walk UI string — settingsNotificationsDescription
  ///
  /// In en, this message translates to:
  /// **'Choose which events alert you and how'**
  String get settingsNotificationsDescription;

  /// Kilo-Walk UI string — settingsNotificationsDisableOptimization
  ///
  /// In en, this message translates to:
  /// **'Disable optimization'**
  String get settingsNotificationsDisableOptimization;

  /// Kilo-Walk UI string — settingsNotificationsErrors
  ///
  /// In en, this message translates to:
  /// **'Errors'**
  String get settingsNotificationsErrors;

  /// Kilo-Walk UI string — settingsNotificationsErrorsSubtitle
  ///
  /// In en, this message translates to:
  /// **'When a session reports a failure'**
  String get settingsNotificationsErrorsSubtitle;

  /// Kilo-Walk UI string — settingsNotificationsJustClose
  ///
  /// In en, this message translates to:
  /// **'Just close'**
  String get settingsNotificationsJustClose;

  /// Kilo-Walk UI string — settingsNotificationsJustCloseDescription
  ///
  /// In en, this message translates to:
  /// **'Exit the application completely.'**
  String get settingsNotificationsJustCloseDescription;

  /// Kilo-Walk UI string — settingsNotificationsKeepLive
  ///
  /// In en, this message translates to:
  /// **'Keep alerts live for 3 min'**
  String get settingsNotificationsKeepLive;

  /// Kilo-Walk UI string — settingsNotificationsKeepLiveDescription
  ///
  /// In en, this message translates to:
  /// **'When a response is already running, keep realtime active briefly after leaving the app.'**
  String get settingsNotificationsKeepLiveDescription;

  /// Kilo-Walk UI string — settingsNotificationsLocal
  ///
  /// In en, this message translates to:
  /// **'Local'**
  String get settingsNotificationsLocal;

  /// Kilo-Walk UI string — settingsNotificationsMinimizeWhenClose
  ///
  /// In en, this message translates to:
  /// **'Minimize when close'**
  String get settingsNotificationsMinimizeWhenClose;

  /// Kilo-Walk UI string — settingsNotificationsMinimizeWhenCloseDescription
  ///
  /// In en, this message translates to:
  /// **'Minimize to taskbar/dock and keep running.'**
  String get settingsNotificationsMinimizeWhenCloseDescription;

  /// Kilo-Walk UI string — settingsNotificationsNoCondition
  ///
  /// In en, this message translates to:
  /// **'If no condition is selected, alerts are allowed in any context.'**
  String get settingsNotificationsNoCondition;

  /// Kilo-Walk UI string — settingsNotificationsNotify
  ///
  /// In en, this message translates to:
  /// **'Notify'**
  String get settingsNotificationsNotify;

  /// Kilo-Walk UI string — settingsNotificationsNotifyOnlyWhen
  ///
  /// In en, this message translates to:
  /// **'Notify only when'**
  String get settingsNotificationsNotifyOnlyWhen;

  /// Kilo-Walk UI string — settingsNotificationsOpenBatterySettings
  ///
  /// In en, this message translates to:
  /// **'Open battery settings'**
  String get settingsNotificationsOpenBatterySettings;

  /// Kilo-Walk UI string — settingsNotificationsPermissions
  ///
  /// In en, this message translates to:
  /// **'Permissions and questions'**
  String get settingsNotificationsPermissions;

  /// Kilo-Walk UI string — settingsNotificationsPermissionsSubtitle
  ///
  /// In en, this message translates to:
  /// **'When tools request your input'**
  String get settingsNotificationsPermissionsSubtitle;

  /// Kilo-Walk UI string — settingsNotificationsPreview
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get settingsNotificationsPreview;

  /// Kilo-Walk UI string — settingsNotificationsRefreshStatus
  ///
  /// In en, this message translates to:
  /// **'Refresh status'**
  String get settingsNotificationsRefreshStatus;

  /// Kilo-Walk UI string — settingsNotificationsSearchSoundType
  ///
  /// In en, this message translates to:
  /// **'Search sound type'**
  String get settingsNotificationsSearchSoundType;

  /// Kilo-Walk UI string — settingsNotificationsSectionDescription
  ///
  /// In en, this message translates to:
  /// **'Control when alerts appear and when they can play sound.'**
  String get settingsNotificationsSectionDescription;

  /// Kilo-Walk UI string — settingsNotificationsSectionTitle
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get settingsNotificationsSectionTitle;

  /// Kilo-Walk UI string — settingsNotificationsSelectedSound
  ///
  /// In en, this message translates to:
  /// **'Selected: {label}'**
  String settingsNotificationsSelectedSound(String label);

  /// Kilo-Walk UI string — settingsNotificationsServer
  ///
  /// In en, this message translates to:
  /// **'Server'**
  String get settingsNotificationsServer;

  /// Kilo-Walk UI string — settingsNotificationsSound
  ///
  /// In en, this message translates to:
  /// **'Sound'**
  String get settingsNotificationsSound;

  /// Kilo-Walk UI string — settingsNotificationsSoundBuiltInAlert
  ///
  /// In en, this message translates to:
  /// **'Built-in alert'**
  String get settingsNotificationsSoundBuiltInAlert;

  /// Kilo-Walk UI string — settingsNotificationsSoundBuiltInClick
  ///
  /// In en, this message translates to:
  /// **'Built-in click'**
  String get settingsNotificationsSoundBuiltInClick;

  /// Kilo-Walk UI string — settingsNotificationsSoundOff
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get settingsNotificationsSoundOff;

  /// Kilo-Walk UI string — settingsNotificationsSoundOnlyWhen
  ///
  /// In en, this message translates to:
  /// **'Sound only when'**
  String get settingsNotificationsSoundOnlyWhen;

  /// Kilo-Walk UI string — settingsNotificationsSoundPickAudioFile
  ///
  /// In en, this message translates to:
  /// **'Pick audio file'**
  String get settingsNotificationsSoundPickAudioFile;

  /// Kilo-Walk UI string — settingsNotificationsSoundPickFromSystem
  ///
  /// In en, this message translates to:
  /// **'Pick from system'**
  String get settingsNotificationsSoundPickFromSystem;

  /// Kilo-Walk UI string — settingsNotificationsSoundSystemDefault
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get settingsNotificationsSoundSystemDefault;

  /// Kilo-Walk UI string — settingsNotificationsSoundType
  ///
  /// In en, this message translates to:
  /// **'Sound type'**
  String get settingsNotificationsSoundType;

  /// Kilo-Walk UI string — settingsNotificationsSyncInfo
  ///
  /// In en, this message translates to:
  /// **'Some category on/off toggles are synced from /config on the active server.'**
  String get settingsNotificationsSyncInfo;

  /// Kilo-Walk UI string — settingsNotificationsSyncInfoLocal
  ///
  /// In en, this message translates to:
  /// **'Current server does not expose notification toggles in /config; local values are active.'**
  String get settingsNotificationsSyncInfoLocal;

  /// Kilo-Walk UI string — settingsNotificationsSystemSoundPickerTitle
  ///
  /// In en, this message translates to:
  /// **'Choose system sound'**
  String get settingsNotificationsSystemSoundPickerTitle;

  /// Kilo-Walk UI string — settingsNotificationsTitle
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get settingsNotificationsTitle;

  /// Kilo-Walk UI string — settingsNotificationsWhenClosing
  ///
  /// In en, this message translates to:
  /// **'When closing the window'**
  String get settingsNotificationsWhenClosing;

  /// Kilo-Walk UI string — settingsOpenCodeAutoUpdate
  ///
  /// In en, this message translates to:
  /// **'OpenCode auto-update'**
  String get settingsOpenCodeAutoUpdate;

  /// Kilo-Walk UI string — settingsOpenCodeSharingDefault
  ///
  /// In en, this message translates to:
  /// **'OpenCode sharing default'**
  String get settingsOpenCodeSharingDefault;

  /// Kilo-Walk UI string — settingsReadAloudEnabled
  ///
  /// In en, this message translates to:
  /// **'Read aloud'**
  String get settingsReadAloudEnabled;

  /// Kilo-Walk UI string — settingsReadAloudEnabledDescription
  ///
  /// In en, this message translates to:
  /// **'Show a read-aloud button on assistant messages.'**
  String get settingsReadAloudEnabledDescription;

  /// Kilo-Walk UI string — settingsReadAloudPitch
  ///
  /// In en, this message translates to:
  /// **'Pitch'**
  String get settingsReadAloudPitch;

  /// Kilo-Walk UI string — settingsReadAloudPitchDescription
  ///
  /// In en, this message translates to:
  /// **'Adjust the voice pitch.'**
  String get settingsReadAloudPitchDescription;

  /// Kilo-Walk UI string — settingsReadAloudSectionDescription
  ///
  /// In en, this message translates to:
  /// **'Read assistant responses aloud. Configure speed, pitch, and voice.'**
  String get settingsReadAloudSectionDescription;

  /// Kilo-Walk UI string — settingsReadAloudSectionTitle
  ///
  /// In en, this message translates to:
  /// **'Text to speech'**
  String get settingsReadAloudSectionTitle;

  /// Kilo-Walk UI string — settingsReadAloudSpeed
  ///
  /// In en, this message translates to:
  /// **'Speed'**
  String get settingsReadAloudSpeed;

  /// Kilo-Walk UI string — settingsReadAloudSpeedDescription
  ///
  /// In en, this message translates to:
  /// **'Adjust the speaking rate.'**
  String get settingsReadAloudSpeedDescription;

  /// Kilo-Walk UI string — settingsReadAloudVoice
  ///
  /// In en, this message translates to:
  /// **'Voice'**
  String get settingsReadAloudVoice;

  /// Kilo-Walk UI string — settingsReadAloudVoiceHint
  ///
  /// In en, this message translates to:
  /// **'Select a voice for read-aloud.'**
  String get settingsReadAloudVoiceHint;

  /// Kilo-Walk UI string — settingsSearchAutoUpdateMode
  ///
  /// In en, this message translates to:
  /// **'Search auto-update mode'**
  String get settingsSearchAutoUpdateMode;

  /// Kilo-Walk UI string — settingsSearchDefaultAgent
  ///
  /// In en, this message translates to:
  /// **'Search default agent'**
  String get settingsSearchDefaultAgent;

  /// Kilo-Walk UI string — settingsSearchDefaultModel
  ///
  /// In en, this message translates to:
  /// **'Search default model'**
  String get settingsSearchDefaultModel;

  /// Kilo-Walk UI string — settingsSearchSharingMode
  ///
  /// In en, this message translates to:
  /// **'Search sharing mode'**
  String get settingsSearchSharingMode;

  /// Kilo-Walk UI string — settingsSearchSmallModel
  ///
  /// In en, this message translates to:
  /// **'Search small model'**
  String get settingsSearchSmallModel;

  /// Kilo-Walk UI string — settingsServersActive
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get settingsServersActive;

  /// Kilo-Walk UI string — settingsServersChooseActive
  ///
  /// In en, this message translates to:
  /// **'Choose active server'**
  String get settingsServersChooseActive;

  /// Kilo-Walk UI string — settingsServersDefault
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get settingsServersDefault;

  /// Kilo-Walk UI string — settingsServersDescription
  ///
  /// In en, this message translates to:
  /// **'Connect to OpenCode and manage your servers'**
  String get settingsServersDescription;

  /// Kilo-Walk UI string — settingsServersTitle
  ///
  /// In en, this message translates to:
  /// **'Servers'**
  String get settingsServersTitle;

  /// Kilo-Walk UI string — settingsSessionAttentionSize
  ///
  /// In en, this message translates to:
  /// **'Bubble size'**
  String get settingsSessionAttentionSize;

  /// Kilo-Walk UI string — settingsSessionAttentionSizeExtraLarge
  ///
  /// In en, this message translates to:
  /// **'Extra large'**
  String get settingsSessionAttentionSizeExtraLarge;

  /// Kilo-Walk UI string — settingsSessionAttentionSizeExtraSmall
  ///
  /// In en, this message translates to:
  /// **'Extra small'**
  String get settingsSessionAttentionSizeExtraSmall;

  /// Kilo-Walk UI string — settingsSessionAttentionSizeLarge
  ///
  /// In en, this message translates to:
  /// **'Large'**
  String get settingsSessionAttentionSizeLarge;

  /// Kilo-Walk UI string — settingsSessionAttentionSizeSmall
  ///
  /// In en, this message translates to:
  /// **'Small'**
  String get settingsSessionAttentionSizeSmall;

  /// Kilo-Walk UI string — settingsSessionAttentionSizeStandard
  ///
  /// In en, this message translates to:
  /// **'Standard'**
  String get settingsSessionAttentionSizeStandard;

  /// Kilo-Walk UI string — settingsSetupWizard
  ///
  /// In en, this message translates to:
  /// **'Setup Wizard'**
  String get settingsSetupWizard;

  /// Kilo-Walk UI string — settingsShortcutsDescription
  ///
  /// In en, this message translates to:
  /// **'Find and customize keyboard shortcuts'**
  String get settingsShortcutsDescription;

  /// Kilo-Walk UI string — settingsShortcutsEdit
  ///
  /// In en, this message translates to:
  /// **'Edit shortcut'**
  String get settingsShortcutsEdit;

  /// Kilo-Walk UI string — settingsShortcutsKeyboard
  ///
  /// In en, this message translates to:
  /// **'Keyboard shortcuts'**
  String get settingsShortcutsKeyboard;

  /// Kilo-Walk UI string — settingsShortcutsReset
  ///
  /// In en, this message translates to:
  /// **'Reset shortcut'**
  String get settingsShortcutsReset;

  /// Kilo-Walk UI string — settingsShortcutsSearch
  ///
  /// In en, this message translates to:
  /// **'Search shortcuts'**
  String get settingsShortcutsSearch;

  /// Kilo-Walk UI string — settingsShortcutsTitle
  ///
  /// In en, this message translates to:
  /// **'Shortcuts'**
  String get settingsShortcutsTitle;

  /// Kilo-Walk UI string — settingsSmallModel
  ///
  /// In en, this message translates to:
  /// **'Small model'**
  String get settingsSmallModel;

  /// Kilo-Walk UI string — settingsSmallModelResetExplanation
  ///
  /// In en, this message translates to:
  /// **'Resetting `small_model` back to automatic fallback still requires editing config outside the app because `/config` patch updates cannot remove keys.'**
  String get settingsSmallModelResetExplanation;

  /// Kilo-Walk UI string — settingsSmallModelUnsetExplanation
  ///
  /// In en, this message translates to:
  /// **'OpenCode automatic fallback is active because `small_model` is unset.'**
  String get settingsSmallModelUnsetExplanation;

  /// Kilo-Walk UI string — settingsSoundPickerNotAvailable
  ///
  /// In en, this message translates to:
  /// **'System sound picker is not available on this platform.'**
  String get settingsSoundPickerNotAvailable;

  /// Kilo-Walk UI string — settingsSpeechDescription
  ///
  /// In en, this message translates to:
  /// **'Set up voice input, offline models, and read aloud'**
  String get settingsSpeechDescription;

  /// Kilo-Walk UI string — settingsSpeechRefreshStatus
  ///
  /// In en, this message translates to:
  /// **'Refresh status'**
  String get settingsSpeechRefreshStatus;

  /// Kilo-Walk UI string — settingsSpeechSilenceTimeout
  ///
  /// In en, this message translates to:
  /// **'Silence timeout: {value}s'**
  String settingsSpeechSilenceTimeout(String value);

  /// Kilo-Walk UI string — settingsSpeechTitle
  ///
  /// In en, this message translates to:
  /// **'Speech to text'**
  String get settingsSpeechTitle;

  /// Kilo-Walk UI string — settingsTitle
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// Kilo-Walk UI string — settingsGroupAlertTypes
  ///
  /// In en, this message translates to:
  /// **'Alert types'**
  String get settingsGroupAlertTypes;

  /// Kilo-Walk UI string — settingsGroupBackgroundBehavior
  ///
  /// In en, this message translates to:
  /// **'Background behavior'**
  String get settingsGroupBackgroundBehavior;

  /// Kilo-Walk UI string — settingsGroupChatDisplay
  ///
  /// In en, this message translates to:
  /// **'Chat display'**
  String get settingsGroupChatDisplay;

  /// Kilo-Walk UI string — settingsGroupCurrentConnection
  ///
  /// In en, this message translates to:
  /// **'Current connection'**
  String get settingsGroupCurrentConnection;

  /// Kilo-Walk UI string — settingsGroupDataAndSync
  ///
  /// In en, this message translates to:
  /// **'Data and sync'**
  String get settingsGroupDataAndSync;

  /// Kilo-Walk UI string — settingsGroupDataReset
  ///
  /// In en, this message translates to:
  /// **'Data and reset'**
  String get settingsGroupDataReset;

  /// Kilo-Walk UI string — settingsGroupDelivery
  ///
  /// In en, this message translates to:
  /// **'Delivery'**
  String get settingsGroupDelivery;

  /// Kilo-Walk UI string — settingsGroupHelp
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get settingsGroupHelp;

  /// Kilo-Walk UI string — settingsGroupLanguageAndChat
  ///
  /// In en, this message translates to:
  /// **'Language and chat'**
  String get settingsGroupLanguageAndChat;

  /// Kilo-Walk UI string — settingsGroupLayoutAndText
  ///
  /// In en, this message translates to:
  /// **'Layout and text'**
  String get settingsGroupLayoutAndText;

  /// Kilo-Walk UI string — settingsGroupOfflineModels
  ///
  /// In en, this message translates to:
  /// **'Offline models'**
  String get settingsGroupOfflineModels;

  /// Kilo-Walk UI string — settingsGroupOpenCodeDefaults
  ///
  /// In en, this message translates to:
  /// **'OpenCode defaults'**
  String get settingsGroupOpenCodeDefaults;

  /// Kilo-Walk UI string — settingsGroupReadAloud
  ///
  /// In en, this message translates to:
  /// **'Read aloud'**
  String get settingsGroupReadAloud;

  /// Kilo-Walk UI string — settingsGroupSavedServers
  ///
  /// In en, this message translates to:
  /// **'Saved servers'**
  String get settingsGroupSavedServers;

  /// Kilo-Walk UI string — settingsGroupThemeAndColor
  ///
  /// In en, this message translates to:
  /// **'Theme and color'**
  String get settingsGroupThemeAndColor;

  /// Kilo-Walk UI string — settingsGroupThisDevice
  ///
  /// In en, this message translates to:
  /// **'This device'**
  String get settingsGroupThisDevice;

  /// Kilo-Walk UI string — settingsGroupVersionUpdates
  ///
  /// In en, this message translates to:
  /// **'Version and updates'**
  String get settingsGroupVersionUpdates;

  /// Kilo-Walk UI string — settingsGroupVoiceInput
  ///
  /// In en, this message translates to:
  /// **'Voice input'**
  String get settingsGroupVoiceInput;

  /// Kilo-Walk UI string — settingsNavigationGroupExperience
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get settingsNavigationGroupExperience;

  /// Kilo-Walk UI string — settingsNavigationGroupInput
  ///
  /// In en, this message translates to:
  /// **'Input'**
  String get settingsNavigationGroupInput;

  /// Kilo-Walk UI string — settingsNavigationGroupSetup
  ///
  /// In en, this message translates to:
  /// **'Setup'**
  String get settingsNavigationGroupSetup;

  /// Kilo-Walk UI string — settingsNavigationGroupSupport
  ///
  /// In en, this message translates to:
  /// **'Help and diagnostics'**
  String get settingsNavigationGroupSupport;

  /// Kilo-Walk UI string — settingsNavigationNoResults
  ///
  /// In en, this message translates to:
  /// **'No settings found'**
  String get settingsNavigationNoResults;

  /// Kilo-Walk UI string — settingsNavigationSearchHint
  ///
  /// In en, this message translates to:
  /// **'Search settings'**
  String get settingsNavigationSearchHint;

  /// Kilo-Walk UI string — settingsUsernameClearHint
  ///
  /// In en, this message translates to:
  /// **'Clearing the OpenCode conversation username still requires editing config outside the app.'**
  String get settingsUsernameClearHint;

  /// Kilo-Walk UI string — settingsUsernameEnterHint
  ///
  /// In en, this message translates to:
  /// **'Enter a username to save a custom OpenCode conversation name.'**
  String get settingsUsernameEnterHint;

  /// Kilo-Walk UI string — settingsUsernameResetExplanation
  ///
  /// In en, this message translates to:
  /// **'Resetting `username` back to the system default still requires editing config outside the app because `/config` patch updates cannot remove keys.'**
  String get settingsUsernameResetExplanation;

  /// Kilo-Walk UI string — settingsUsernameUnsetExplanation
  ///
  /// In en, this message translates to:
  /// **'OpenCode uses the system username because `username` is unset.'**
  String get settingsUsernameUnsetExplanation;

  /// Kilo-Walk UI string — setupDebugBun
  ///
  /// In en, this message translates to:
  /// **'Bun'**
  String get setupDebugBun;

  /// Kilo-Walk UI string — setupDebugBun2
  ///
  /// In en, this message translates to:
  /// **'Bun'**
  String get setupDebugBun2;

  /// Kilo-Walk UI string — setupDebugCapturedSetupDetails
  ///
  /// In en, this message translates to:
  /// **'No captured setup details yet'**
  String get setupDebugCapturedSetupDetails;

  /// Kilo-Walk UI string — setupDebugCapturedSetupLogs
  ///
  /// In en, this message translates to:
  /// **'Captured setup logs'**
  String get setupDebugCapturedSetupLogs;

  /// Kilo-Walk UI string — setupDebugClear
  ///
  /// In en, this message translates to:
  /// **'Clear setup debug'**
  String get setupDebugClear;

  /// Kilo-Walk UI string — setupDebugClearSetupDebug
  ///
  /// In en, this message translates to:
  /// **'Clear setup debug'**
  String get setupDebugClearSetupDebug;

  /// Kilo-Walk UI string — setupDebugKilo-WalkCaptureEnough
  ///
  /// In en, this message translates to:
  /// **'If Kilo-Walk did not capture enough context, check the official OpenCode logs and health endpoints directly:'**
  String get setupDebugCodeWalkCaptureEnough;

  /// Kilo-Walk UI string — setupDebugCommandPath
  ///
  /// In en, this message translates to:
  /// **'Command path'**
  String get setupDebugCommandPath;

  /// Kilo-Walk UI string — setupDebugCommandPath2
  ///
  /// In en, this message translates to:
  /// **'Command path'**
  String get setupDebugCommandPath2;

  /// Kilo-Walk UI string — setupDebugCopy
  ///
  /// In en, this message translates to:
  /// **'Copy setup debug'**
  String get setupDebugCopy;

  /// Kilo-Walk UI string — setupDebugCopySetupDebug
  ///
  /// In en, this message translates to:
  /// **'Copy setup debug'**
  String get setupDebugCopySetupDebug;

  /// Kilo-Walk UI string — setupDebugCurrentStatus
  ///
  /// In en, this message translates to:
  /// **'Current status'**
  String get setupDebugCurrentStatus;

  /// Kilo-Walk UI string — setupDebugDiagnosticsLoading
  ///
  /// In en, this message translates to:
  /// **'Diagnostics are still loading.'**
  String get setupDebugDiagnosticsLoading;

  /// Kilo-Walk UI string — setupDebugEnvironment
  ///
  /// In en, this message translates to:
  /// **'Environment diagnostics'**
  String get setupDebugEnvironment;

  /// Kilo-Walk UI string — setupDebugEnvironmentDiagnostics
  ///
  /// In en, this message translates to:
  /// **'Environment diagnostics'**
  String get setupDebugEnvironmentDiagnostics;

  /// Kilo-Walk UI string — setupDebugFocusedOpenCodeSetup
  ///
  /// In en, this message translates to:
  /// **'Focused on OpenCode setup'**
  String get setupDebugFocusedOpenCodeSetup;

  /// Kilo-Walk UI string — setupDebugInstallDir
  ///
  /// In en, this message translates to:
  /// **'Install directory'**
  String get setupDebugInstallDir;

  /// Kilo-Walk UI string — setupDebugInstallDirectory
  ///
  /// In en, this message translates to:
  /// **'Install directory'**
  String get setupDebugInstallDirectory;

  /// Kilo-Walk UI string — setupDebugLatestLocalServer
  ///
  /// In en, this message translates to:
  /// **'Latest local server output'**
  String get setupDebugLatestLocalServer;

  /// Kilo-Walk UI string — setupDebugLogs
  ///
  /// In en, this message translates to:
  /// **'Captured setup logs'**
  String get setupDebugLogs;

  /// Kilo-Walk UI string — setupDebugManual
  ///
  /// In en, this message translates to:
  /// **'Manual troubleshooting'**
  String get setupDebugManual;

  /// Kilo-Walk UI string — setupDebugManualTroubleshooting
  ///
  /// In en, this message translates to:
  /// **'Manual troubleshooting'**
  String get setupDebugManualTroubleshooting;

  /// Kilo-Walk UI string — setupDebugNetwork
  ///
  /// In en, this message translates to:
  /// **'Network'**
  String get setupDebugNetwork;

  /// Kilo-Walk UI string — setupDebugNetwork2
  ///
  /// In en, this message translates to:
  /// **'Network'**
  String get setupDebugNetwork2;

  /// Kilo-Walk UI string — setupDebugNoDetails
  ///
  /// In en, this message translates to:
  /// **'No captured setup details yet'**
  String get setupDebugNoDetails;

  /// Kilo-Walk UI string — setupDebugNode
  ///
  /// In en, this message translates to:
  /// **'Node.js'**
  String get setupDebugNode;

  /// Kilo-Walk UI string — setupDebugNodeJs
  ///
  /// In en, this message translates to:
  /// **'Node.js'**
  String get setupDebugNodeJs;

  /// Kilo-Walk UI string — setupDebugNpm
  ///
  /// In en, this message translates to:
  /// **'npm'**
  String get setupDebugNpm;

  /// Kilo-Walk UI string — setupDebugNpm2
  ///
  /// In en, this message translates to:
  /// **'npm'**
  String get setupDebugNpm2;

  /// Kilo-Walk UI string — setupDebugOpenCode
  ///
  /// In en, this message translates to:
  /// **'OpenCode'**
  String get setupDebugOpenCode;

  /// Kilo-Walk UI string — setupDebugOpenCode2
  ///
  /// In en, this message translates to:
  /// **'OpenCode'**
  String get setupDebugOpenCode2;

  /// Kilo-Walk UI string — setupDebugOpenCodeSetupDebug
  ///
  /// In en, this message translates to:
  /// **'OpenCode Setup Debug'**
  String get setupDebugOpenCodeSetupDebug;

  /// Kilo-Walk UI string — setupDebugPlatform
  ///
  /// In en, this message translates to:
  /// **'Platform'**
  String get setupDebugPlatform;

  /// Kilo-Walk UI string — setupDebugPlatform2
  ///
  /// In en, this message translates to:
  /// **'Platform'**
  String get setupDebugPlatform2;

  /// Kilo-Walk UI string — setupDebugRunDiagnosticsTry
  ///
  /// In en, this message translates to:
  /// **'Run diagnostics, try an installation method, or attempt a setup flow to capture OpenCode-specific troubleshooting details here.'**
  String get setupDebugRunDiagnosticsTry;

  /// Kilo-Walk UI string — setupDebugScreenCoversOpenCode
  ///
  /// In en, this message translates to:
  /// **'This screen only covers OpenCode installation, diagnostics, and local setup troubleshooting. Use App Logs for general Kilo-Walk runtime issues.'**
  String get setupDebugScreenCoversOpenCode;

  /// Kilo-Walk UI string — setupDebugServerOutput
  ///
  /// In en, this message translates to:
  /// **'Latest local server output'**
  String get setupDebugServerOutput;

  /// Kilo-Walk UI string — setupDebugStatus
  ///
  /// In en, this message translates to:
  /// **'Current status'**
  String get setupDebugStatus;

  /// Kilo-Walk UI string — setupDebugTimeEntrySource
  ///
  /// In en, this message translates to:
  /// **'{time} - {source}'**
  String setupDebugTimeEntrySource(String source, String time);

  /// Kilo-Walk UI string — setupDebugTimeline
  ///
  /// In en, this message translates to:
  /// **'Timeline'**
  String get setupDebugTimeline;

  /// Kilo-Walk UI string — setupDebugTimeline2
  ///
  /// In en, this message translates to:
  /// **'Timeline'**
  String get setupDebugTimeline2;

  /// Kilo-Walk UI string — setupDebugTitle
  ///
  /// In en, this message translates to:
  /// **'Focused on OpenCode setup'**
  String get setupDebugTitle;

  /// Kilo-Walk UI string — setupDebugWSL
  ///
  /// In en, this message translates to:
  /// **'WSL'**
  String get setupDebugWSL;

  /// Kilo-Walk UI string — setupDebugWsl
  ///
  /// In en, this message translates to:
  /// **'WSL'**
  String get setupDebugWsl;

  /// Kilo-Walk UI string — shortcutCloseApp
  ///
  /// In en, this message translates to:
  /// **'Close tab/application'**
  String get shortcutCloseApp;

  /// Kilo-Walk UI string — shortcutCloseAppDesc
  ///
  /// In en, this message translates to:
  /// **'Close the current session tab when available, otherwise close the app using platform behavior'**
  String get shortcutCloseAppDesc;

  /// Kilo-Walk UI string — shortcutFocusCloseDrawer
  ///
  /// In en, this message translates to:
  /// **'Focus/close drawer'**
  String get shortcutFocusCloseDrawer;

  /// Kilo-Walk UI string — shortcutFocusCloseDrawerDesc
  ///
  /// In en, this message translates to:
  /// **'Focus composer by default, or close drawer when open'**
  String get shortcutFocusCloseDrawerDesc;

  /// Kilo-Walk UI string — shortcutFocusInput
  ///
  /// In en, this message translates to:
  /// **'Focus input'**
  String get shortcutFocusInput;

  /// Kilo-Walk UI string — shortcutFocusInputDesc
  ///
  /// In en, this message translates to:
  /// **'Move focus to the prompt input'**
  String get shortcutFocusInputDesc;

  /// Kilo-Walk UI string — shortcutGroupApplication
  ///
  /// In en, this message translates to:
  /// **'Application'**
  String get shortcutGroupApplication;

  /// Kilo-Walk UI string — shortcutGroupGeneral
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get shortcutGroupGeneral;

  /// Kilo-Walk UI string — shortcutGroupModelAndAgent
  ///
  /// In en, this message translates to:
  /// **'Model and agent'**
  String get shortcutGroupModelAndAgent;

  /// Kilo-Walk UI string — shortcutGroupNavigation
  ///
  /// In en, this message translates to:
  /// **'Navigation'**
  String get shortcutGroupNavigation;

  /// Kilo-Walk UI string — shortcutGroupPrompt
  ///
  /// In en, this message translates to:
  /// **'Prompt'**
  String get shortcutGroupPrompt;

  /// Kilo-Walk UI string — shortcutGroupSession
  ///
  /// In en, this message translates to:
  /// **'Session'**
  String get shortcutGroupSession;

  /// Kilo-Walk UI string — shortcutNewConversation
  ///
  /// In en, this message translates to:
  /// **'New conversation'**
  String get shortcutNewConversation;

  /// Kilo-Walk UI string — shortcutNewConversationDesc
  ///
  /// In en, this message translates to:
  /// **'Create a new chat session'**
  String get shortcutNewConversationDesc;

  /// Kilo-Walk UI string — shortcutNextAgent
  ///
  /// In en, this message translates to:
  /// **'Next agent'**
  String get shortcutNextAgent;

  /// Kilo-Walk UI string — shortcutNextAgentDesc
  ///
  /// In en, this message translates to:
  /// **'Cycle to next available agent'**
  String get shortcutNextAgentDesc;

  /// Kilo-Walk UI string — shortcutNextRecentModel
  ///
  /// In en, this message translates to:
  /// **'Next recent model'**
  String get shortcutNextRecentModel;

  /// Kilo-Walk UI string — shortcutNextRecentModelDesc
  ///
  /// In en, this message translates to:
  /// **'Cycle through recently used models'**
  String get shortcutNextRecentModelDesc;

  /// Kilo-Walk UI string — shortcutNextVariant
  ///
  /// In en, this message translates to:
  /// **'Next variant'**
  String get shortcutNextVariant;

  /// Kilo-Walk UI string — shortcutNextVariantDesc
  ///
  /// In en, this message translates to:
  /// **'Cycle through available model variants'**
  String get shortcutNextVariantDesc;

  /// Kilo-Walk UI string — shortcutOpenSettings
  ///
  /// In en, this message translates to:
  /// **'Open settings'**
  String get shortcutOpenSettings;

  /// Kilo-Walk UI string — shortcutOpenSettingsDesc
  ///
  /// In en, this message translates to:
  /// **'Open settings page'**
  String get shortcutOpenSettingsDesc;

  /// Kilo-Walk UI string — shortcutPreviousAgent
  ///
  /// In en, this message translates to:
  /// **'Previous agent'**
  String get shortcutPreviousAgent;

  /// Kilo-Walk UI string — shortcutPreviousAgentDesc
  ///
  /// In en, this message translates to:
  /// **'Cycle to previous available agent'**
  String get shortcutPreviousAgentDesc;

  /// Kilo-Walk UI string — shortcutQuickOpenFiles
  ///
  /// In en, this message translates to:
  /// **'Quick open files'**
  String get shortcutQuickOpenFiles;

  /// Kilo-Walk UI string — shortcutQuickOpenFilesDesc
  ///
  /// In en, this message translates to:
  /// **'Open file quick search'**
  String get shortcutQuickOpenFilesDesc;

  /// Kilo-Walk UI string — shortcutQuitApp
  ///
  /// In en, this message translates to:
  /// **'Quit application'**
  String get shortcutQuitApp;

  /// Kilo-Walk UI string — shortcutQuitAppDesc
  ///
  /// In en, this message translates to:
  /// **'Force-exit the app'**
  String get shortcutQuitAppDesc;

  /// Kilo-Walk UI string — shortcutRefreshData
  ///
  /// In en, this message translates to:
  /// **'Refresh data'**
  String get shortcutRefreshData;

  /// Kilo-Walk UI string — shortcutRefreshDataDesc
  ///
  /// In en, this message translates to:
  /// **'Refresh current chat data'**
  String get shortcutRefreshDataDesc;

  /// Kilo-Walk UI string — shortcutStopResponse
  ///
  /// In en, this message translates to:
  /// **'Stop active response'**
  String get shortcutStopResponse;

  /// Kilo-Walk UI string — shortcutStopResponseDesc
  ///
  /// In en, this message translates to:
  /// **'Stop active response (while responding)'**
  String get shortcutStopResponseDesc;

  /// Kilo-Walk UI string — shortcutToggleVoiceInput
  ///
  /// In en, this message translates to:
  /// **'Toggle voice input'**
  String get shortcutToggleVoiceInput;

  /// Kilo-Walk UI string — shortcutToggleVoiceInputDesc
  ///
  /// In en, this message translates to:
  /// **'Start or stop speech-to-text in the composer'**
  String get shortcutToggleVoiceInputDesc;

  /// Kilo-Walk UI string — shortcutsApply
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get shortcutsApply;

  /// Kilo-Walk UI string — shortcutsConflictConflict
  ///
  /// In en, this message translates to:
  /// **'Conflict with {conflict}'**
  String shortcutsConflictConflict(String conflict);

  /// Kilo-Walk UI string — shortcutsKeyboardShortcuts
  ///
  /// In en, this message translates to:
  /// **'Keyboard shortcuts'**
  String get shortcutsKeyboardShortcuts;

  /// Kilo-Walk UI string — shortcutsReset
  ///
  /// In en, this message translates to:
  /// **'Reset all'**
  String get shortcutsReset;

  /// Kilo-Walk UI string — shortcutsSearchEditBindings
  ///
  /// In en, this message translates to:
  /// **'Search, edit bindings, and resolve conflicts before saving.'**
  String get shortcutsSearchEditBindings;

  /// Kilo-Walk UI string — shortcutsSetShortcutWidget
  ///
  /// In en, this message translates to:
  /// **'Set shortcut: {label}'**
  String shortcutsSetShortcutWidget(String label);

  /// Kilo-Walk UI string — shortcutsTheseBindingsStored
  ///
  /// In en, this message translates to:
  /// **'These bindings are stored in Kilo-Walk for the current app runtime and do not edit OpenCode `tui.json` keybinds.'**
  String get shortcutsTheseBindingsStored;

  /// Kilo-Walk UI string — speechAutoStopSilence
  ///
  /// In en, this message translates to:
  /// **'Auto-stop silence timeout'**
  String get speechAutoStopSilence;

  /// Kilo-Walk UI string — speechChooseRecognitionEngine
  ///
  /// In en, this message translates to:
  /// **'Choose the recognition engine, silence timeout, and model options.'**
  String get speechChooseRecognitionEngine;

  /// Kilo-Walk UI string — speechDesktopOnly
  ///
  /// In en, this message translates to:
  /// **'{service} is available on desktop only.'**
  String speechDesktopOnly(String service);

  /// Kilo-Walk UI string — speechDownload
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get speechDownload;

  /// Kilo-Walk UI string — speechEngine
  ///
  /// In en, this message translates to:
  /// **'Engine'**
  String get speechEngine;

  /// Kilo-Walk UI string — speechInstalledLanguages
  ///
  /// In en, this message translates to:
  /// **'Installed languages'**
  String get speechInstalledLanguages;

  /// Kilo-Walk UI string — speechListeningStopsAutomatically
  ///
  /// In en, this message translates to:
  /// **'Listening stops automatically after this many seconds of silence.'**
  String get speechListeningStopsAutomatically;

  /// Kilo-Walk UI string — speechMicPermissionDisabled
  ///
  /// In en, this message translates to:
  /// **'Microphone permission is disabled.'**
  String get speechMicPermissionDisabled;

  /// Kilo-Walk UI string — speechModelFilesIncomplete
  ///
  /// In en, this message translates to:
  /// **'{service} model files are incomplete.'**
  String speechModelFilesIncomplete(String service);

  /// Kilo-Walk UI string — speechMoonshine
  ///
  /// In en, this message translates to:
  /// **'Moonshine'**
  String get speechMoonshine;

  /// Kilo-Walk UI string — speechMoonshineModelsDesktop
  ///
  /// In en, this message translates to:
  /// **'Moonshine models (desktop)'**
  String get speechMoonshineModelsDesktop;

  /// Kilo-Walk UI string — speechMoonshineStaysDownloadable
  ///
  /// In en, this message translates to:
  /// **'Moonshine stays downloadable and out of the app bundle. Pick one model for this desktop device and remove it later if you want the space back.'**
  String get speechMoonshineStaysDownloadable;

  /// Kilo-Walk UI string — speechNative
  ///
  /// In en, this message translates to:
  /// **'Native'**
  String get speechNative;

  /// Kilo-Walk UI string — speechNativeSTTDisabled
  ///
  /// In en, this message translates to:
  /// **'Native STT is disabled on Linux in this app. Parakeet is the default engine for new installs.'**
  String get speechNativeSTTDisabled;

  /// Kilo-Walk UI string — speechNativeSTTWorks
  ///
  /// In en, this message translates to:
  /// **'On Windows, Kilo-Walk uses local on-device speech recognition through its WASAPI microphone backend. Native Windows speech recognition is disabled for stability.'**
  String get speechNativeSTTWorks;

  /// Kilo-Walk UI string — speechNativeStartsFaster
  ///
  /// In en, this message translates to:
  /// **'Native starts faster. Sherpa runs fully on-device with heavier setup and deeper model control.'**
  String get speechNativeStartsFaster;

  /// Kilo-Walk UI string — speechOpenMicrophoneSettings
  ///
  /// In en, this message translates to:
  /// **'Open microphone settings'**
  String get speechOpenMicrophoneSettings;

  /// Kilo-Walk UI string — speechOpenSpeechPrivacy
  ///
  /// In en, this message translates to:
  /// **'Open speech privacy'**
  String get speechOpenSpeechPrivacy;

  /// Kilo-Walk UI string — speechOpenSpeechSettings
  ///
  /// In en, this message translates to:
  /// **'Open speech settings'**
  String get speechOpenSpeechSettings;

  /// Kilo-Walk UI string — speechNemotron
  ///
  /// In en, this message translates to:
  /// **'Nemotron'**
  String get speechNemotron;

  /// Kilo-Walk UI string — speechNemotronSubtitle
  ///
  /// In en, this message translates to:
  /// **'Desktop streaming ASR for 40 locales, including Portuguese. Download about 630 MB.'**
  String get speechNemotronSubtitle;

  /// Kilo-Walk UI string — speechNemotronStaysDownloadable
  ///
  /// In en, this message translates to:
  /// **'Nemotron 3.5 stays downloadable and out of the app bundle. One 560 ms streaming model covers 40 locales.'**
  String get speechNemotronStaysDownloadable;

  /// Kilo-Walk UI string — speechNemotronDesktopOnlyHint
  ///
  /// In en, this message translates to:
  /// **'Available on desktop only. Uses streaming multilingual recognition.'**
  String get speechNemotronDesktopOnlyHint;

  /// Kilo-Walk UI string — speechParakeet
  ///
  /// In en, this message translates to:
  /// **'Parakeet'**
  String get speechParakeet;

  /// Kilo-Walk UI string — speechParakeetModelsDesktop
  ///
  /// In en, this message translates to:
  /// **'Parakeet models (desktop)'**
  String get speechParakeetModelsDesktop;

  /// Kilo-Walk UI string — speechParakeetStaysDownloadable
  ///
  /// In en, this message translates to:
  /// **'Parakeet stays downloadable and out of the app bundle. It currently exposes one multilingual model optimized for 25 European languages.'**
  String get speechParakeetStaysDownloadable;

  /// Kilo-Walk UI string — speechPickLanguagePacks
  ///
  /// In en, this message translates to:
  /// **'Pick language packs and download/remove models for on-device recognition.'**
  String get speechPickLanguagePacks;

  /// Kilo-Walk UI string — speechRemove
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get speechRemove;

  /// Kilo-Walk UI string — speechRuntimeFailed
  ///
  /// In en, this message translates to:
  /// **'{service} runtime failed to initialize.'**
  String speechRuntimeFailed(String service);

  /// Kilo-Walk UI string — speechSelectSherpaAbove
  ///
  /// In en, this message translates to:
  /// **'Select Sherpa above to manage language packs and download models.'**
  String get speechSelectSherpaAbove;

  /// Kilo-Walk UI string — speechSenseVoice
  ///
  /// In en, this message translates to:
  /// **'SenseVoice'**
  String get speechSenseVoice;

  /// Kilo-Walk UI string — speechSenseVoiceModelsDesktop
  ///
  /// In en, this message translates to:
  /// **'SenseVoice models (desktop)'**
  String get speechSenseVoiceModelsDesktop;

  /// Kilo-Walk UI string — speechSenseVoiceStaysDownloadable
  ///
  /// In en, this message translates to:
  /// **'SenseVoice stays downloadable and out of the app bundle. It is the strongest desktop option here for Chinese, Cantonese, Japanese, Korean, and English.'**
  String get speechSenseVoiceStaysDownloadable;

  /// Kilo-Walk UI string — speechSherpa
  ///
  /// In en, this message translates to:
  /// **'Sherpa'**
  String get speechSherpa;

  /// Kilo-Walk UI string — speechSherpaModelsLinux
  ///
  /// In en, this message translates to:
  /// **'Sherpa models (Linux)'**
  String get speechSherpaModelsLinux;

  /// Kilo-Walk UI string — speechSpeechText
  ///
  /// In en, this message translates to:
  /// **'Speech to text'**
  String get speechSpeechText;

  /// Kilo-Walk UI string — speechUnavailableOnPlatform
  ///
  /// In en, this message translates to:
  /// **'{service} speech is unavailable on this platform.'**
  String speechUnavailableOnPlatform(String service);

  /// Kilo-Walk UI string — speechWindowsSetupHint
  ///
  /// In en, this message translates to:
  /// **'Windows voice input uses Kilo-Walk WASAPI capture with on-device models. Keep microphone access for desktop apps enabled; the buttons below open Windows settings for troubleshooting.'**
  String get speechWindowsSetupHint;

  /// Kilo-Walk UI string — statusConnected
  ///
  /// In en, this message translates to:
  /// **'Connected'**
  String get statusConnected;

  /// Kilo-Walk UI string — statusDelayed
  ///
  /// In en, this message translates to:
  /// **'Delayed'**
  String get statusDelayed;

  /// Kilo-Walk UI string — statusFailed
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get statusFailed;

  /// Kilo-Walk UI string — statusOffline
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get statusOffline;

  /// Kilo-Walk UI string — statusOnline
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get statusOnline;

  /// Kilo-Walk UI string — statusReconnecting
  ///
  /// In en, this message translates to:
  /// **'Reconnecting'**
  String get statusReconnecting;

  /// Kilo-Walk UI string — statusStarting
  ///
  /// In en, this message translates to:
  /// **'Starting'**
  String get statusStarting;

  /// Kilo-Walk UI string — statusStopped
  ///
  /// In en, this message translates to:
  /// **'Stopped'**
  String get statusStopped;

  /// Kilo-Walk UI string — statusStopping
  ///
  /// In en, this message translates to:
  /// **'Stopping'**
  String get statusStopping;

  /// Kilo-Walk UI string — statusSyncDelayed
  ///
  /// In en, this message translates to:
  /// **'Sync delayed'**
  String get statusSyncDelayed;

  /// Kilo-Walk UI string — tailscaleNoPeers
  ///
  /// In en, this message translates to:
  /// **'No peers found'**
  String get tailscaleNoPeers;

  /// Kilo-Walk UI string — tailscaleNotSupportedOnPlatform
  ///
  /// In en, this message translates to:
  /// **'Tailscale is not supported on this platform.'**
  String get tailscaleNotSupportedOnPlatform;

  /// Kilo-Walk UI string — tailscaleNotSupportedOnWindows
  ///
  /// In en, this message translates to:
  /// **'Tailscale is not supported on Windows.'**
  String get tailscaleNotSupportedOnWindows;

  /// Kilo-Walk UI string — tailscalePeerOffline
  ///
  /// In en, this message translates to:
  /// **'offline'**
  String get tailscalePeerOffline;

  /// Kilo-Walk UI string — tailscaleSelectPeer
  ///
  /// In en, this message translates to:
  /// **'Select a Tailscale peer'**
  String get tailscaleSelectPeer;

  /// Kilo-Walk UI string — tailscaleWaitingAdminApproval
  ///
  /// In en, this message translates to:
  /// **'This Tailscale node is waiting for admin approval.'**
  String get tailscaleWaitingAdminApproval;

  /// Kilo-Walk UI string — terminalClose
  ///
  /// In en, this message translates to:
  /// **'Close terminal'**
  String get terminalClose;

  /// Kilo-Walk UI string — terminalConnectingTo
  ///
  /// In en, this message translates to:
  /// **'Connecting to {serverName} terminal...'**
  String terminalConnectingTo(String serverName);

  /// Kilo-Walk UI string — terminalConnectionFailed
  ///
  /// In en, this message translates to:
  /// **'Terminal connection failed: {error}'**
  String terminalConnectionFailed(String error);

  /// Kilo-Walk UI string — terminalDisconnected
  ///
  /// In en, this message translates to:
  /// **'Terminal disconnected.'**
  String get terminalDisconnected;

  /// Kilo-Walk UI string — terminalEmbeddedUnavailable
  ///
  /// In en, this message translates to:
  /// **'Embedded terminal is not available on this runtime yet. Keep using composer shell mode for one-shot commands or open the terminal from a supported Kilo-Walk app runtime for {serverName}.'**
  String terminalEmbeddedUnavailable(String serverName);

  /// Kilo-Walk UI string — terminalExtraKeyAlt
  ///
  /// In en, this message translates to:
  /// **'Alt key'**
  String get terminalExtraKeyAlt;

  /// Kilo-Walk UI string — terminalExtraKeyArrowDown
  ///
  /// In en, this message translates to:
  /// **'Down arrow'**
  String get terminalExtraKeyArrowDown;

  /// Kilo-Walk UI string — terminalExtraKeyArrowLeft
  ///
  /// In en, this message translates to:
  /// **'Left arrow'**
  String get terminalExtraKeyArrowLeft;

  /// Kilo-Walk UI string — terminalExtraKeyArrowRight
  ///
  /// In en, this message translates to:
  /// **'Right arrow'**
  String get terminalExtraKeyArrowRight;

  /// Kilo-Walk UI string — terminalExtraKeyArrowUp
  ///
  /// In en, this message translates to:
  /// **'Up arrow'**
  String get terminalExtraKeyArrowUp;

  /// Kilo-Walk UI string — terminalExtraKeyControl
  ///
  /// In en, this message translates to:
  /// **'Control key'**
  String get terminalExtraKeyControl;

  /// Kilo-Walk UI string — terminalExtraKeyEscape
  ///
  /// In en, this message translates to:
  /// **'Escape key'**
  String get terminalExtraKeyEscape;

  /// Kilo-Walk UI string — terminalExtraKeyTab
  ///
  /// In en, this message translates to:
  /// **'Tab key'**
  String get terminalExtraKeyTab;

  /// Kilo-Walk UI string — terminalExtraKeys
  ///
  /// In en, this message translates to:
  /// **'Terminal extra keys'**
  String get terminalExtraKeys;

  /// Kilo-Walk UI string — terminalHide
  ///
  /// In en, this message translates to:
  /// **'Hide terminal'**
  String get terminalHide;

  /// Kilo-Walk UI string — terminalMaximize
  ///
  /// In en, this message translates to:
  /// **'Maximize'**
  String get terminalMaximize;

  /// Kilo-Walk UI string — terminalMinimize
  ///
  /// In en, this message translates to:
  /// **'Minimize terminal'**
  String get terminalMinimize;

  /// Kilo-Walk UI string — terminalNotAvailableYet
  ///
  /// In en, this message translates to:
  /// **'Embedded terminal is not available on this runtime yet.'**
  String get terminalNotAvailableYet;

  /// Kilo-Walk UI string — terminalOpen
  ///
  /// In en, this message translates to:
  /// **'Open terminal'**
  String get terminalOpen;

  /// Kilo-Walk UI string — terminalOpenInfo
  ///
  /// In en, this message translates to:
  /// **'Open terminal info'**
  String get terminalOpenInfo;

  /// Kilo-Walk UI string — terminalOpenProjectFirst
  ///
  /// In en, this message translates to:
  /// **'Open a project folder before starting the server terminal.'**
  String get terminalOpenProjectFirst;

  /// Kilo-Walk UI string — terminalOpenToConnect
  ///
  /// In en, this message translates to:
  /// **'Open Terminal to connect to the server project terminal.'**
  String get terminalOpenToConnect;

  /// Kilo-Walk UI string — terminalReconnect
  ///
  /// In en, this message translates to:
  /// **'Reconnect terminal'**
  String get terminalReconnect;

  /// Kilo-Walk UI string — terminalRestoreSize
  ///
  /// In en, this message translates to:
  /// **'Restore size'**
  String get terminalRestoreSize;

  /// Kilo-Walk UI string — terminalSelectServer
  ///
  /// In en, this message translates to:
  /// **'Select an active server before opening Terminal.'**
  String get terminalSelectServer;

  /// Kilo-Walk UI string — terminalSessionClosed
  ///
  /// In en, this message translates to:
  /// **'Terminal session closed.'**
  String get terminalSessionClosed;

  /// Kilo-Walk UI string — terminalTerminal
  ///
  /// In en, this message translates to:
  /// **'Terminal'**
  String get terminalTerminal;

  /// Kilo-Walk UI string — terminalTitle
  ///
  /// In en, this message translates to:
  /// **'Terminal'**
  String get terminalTitle;

  /// Kilo-Walk UI string — terminalTryAgain
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get terminalTryAgain;

  /// Kilo-Walk UI string — toolAwaitingInput
  ///
  /// In en, this message translates to:
  /// **'Awaiting input'**
  String get toolAwaitingInput;

  /// Kilo-Walk UI string — toolEditing
  ///
  /// In en, this message translates to:
  /// **'Editing'**
  String get toolEditing;

  /// Kilo-Walk UI string — toolEditingFiles
  ///
  /// In en, this message translates to:
  /// **'Editing files'**
  String get toolEditingFiles;

  /// Kilo-Walk UI string — toolFinding
  ///
  /// In en, this message translates to:
  /// **'Finding'**
  String get toolFinding;

  /// Kilo-Walk UI string — toolFindingFiles
  ///
  /// In en, this message translates to:
  /// **'Finding files'**
  String get toolFindingFiles;

  /// Kilo-Walk UI string — toolPresentationAwaitingInput
  ///
  /// In en, this message translates to:
  /// **'Awaiting input'**
  String get toolPresentationAwaitingInput;

  /// Kilo-Walk UI string — toolPresentationEditing
  ///
  /// In en, this message translates to:
  /// **'Editing'**
  String get toolPresentationEditing;

  /// Kilo-Walk UI string — toolPresentationEditingFiles
  ///
  /// In en, this message translates to:
  /// **'Editing files'**
  String get toolPresentationEditingFiles;

  /// Kilo-Walk UI string — toolPresentationFinding
  ///
  /// In en, this message translates to:
  /// **'Finding'**
  String get toolPresentationFinding;

  /// Kilo-Walk UI string — toolPresentationFindingFiles
  ///
  /// In en, this message translates to:
  /// **'Finding files'**
  String get toolPresentationFindingFiles;

  /// Kilo-Walk UI string — toolPresentationReading
  ///
  /// In en, this message translates to:
  /// **'Reading'**
  String get toolPresentationReading;

  /// Kilo-Walk UI string — toolPresentationReadingFile
  ///
  /// In en, this message translates to:
  /// **'Reading file'**
  String get toolPresentationReadingFile;

  /// Kilo-Walk UI string — toolPresentationRunning
  ///
  /// In en, this message translates to:
  /// **'Running'**
  String get toolPresentationRunning;

  /// Kilo-Walk UI string — toolPresentationRunningCommand
  ///
  /// In en, this message translates to:
  /// **'Running command'**
  String get toolPresentationRunningCommand;

  /// Kilo-Walk UI string — toolPresentationRunningTool
  ///
  /// In en, this message translates to:
  /// **'Running {toolName}'**
  String toolPresentationRunningTool(String toolName);

  /// Kilo-Walk UI string — toolPresentationSearching
  ///
  /// In en, this message translates to:
  /// **'Searching'**
  String get toolPresentationSearching;

  /// Kilo-Walk UI string — toolPresentationSearchingCode
  ///
  /// In en, this message translates to:
  /// **'Searching code'**
  String get toolPresentationSearchingCode;

  /// Kilo-Walk UI string — toolPresentationSearchingWeb
  ///
  /// In en, this message translates to:
  /// **'Searching the web'**
  String get toolPresentationSearchingWeb;

  /// Kilo-Walk UI string — toolPresentationTool
  ///
  /// In en, this message translates to:
  /// **'Tool'**
  String get toolPresentationTool;

  /// Kilo-Walk UI string — toolPresentationUpdatingTaskList
  ///
  /// In en, this message translates to:
  /// **'Updating task list'**
  String get toolPresentationUpdatingTaskList;

  /// Kilo-Walk UI string — toolPresentationUpdatingTasks
  ///
  /// In en, this message translates to:
  /// **'Updating tasks'**
  String get toolPresentationUpdatingTasks;

  /// Kilo-Walk UI string — toolPresentationWaitingInput
  ///
  /// In en, this message translates to:
  /// **'Waiting for your input'**
  String get toolPresentationWaitingInput;

  /// Kilo-Walk UI string — toolPresentationWriting
  ///
  /// In en, this message translates to:
  /// **'Writing'**
  String get toolPresentationWriting;

  /// Kilo-Walk UI string — toolPresentationWritingFile
  ///
  /// In en, this message translates to:
  /// **'Writing file'**
  String get toolPresentationWritingFile;

  /// Kilo-Walk UI string — toolReading
  ///
  /// In en, this message translates to:
  /// **'Reading'**
  String get toolReading;

  /// Kilo-Walk UI string — toolReadingFile
  ///
  /// In en, this message translates to:
  /// **'Reading file'**
  String get toolReadingFile;

  /// Kilo-Walk UI string — toolRunning
  ///
  /// In en, this message translates to:
  /// **'Running'**
  String get toolRunning;

  /// Kilo-Walk UI string — toolRunningCommand
  ///
  /// In en, this message translates to:
  /// **'Running command'**
  String get toolRunningCommand;

  /// Kilo-Walk UI string — toolRunningTask
  ///
  /// In en, this message translates to:
  /// **'Running task'**
  String get toolRunningTask;

  /// Kilo-Walk UI string — toolSearching
  ///
  /// In en, this message translates to:
  /// **'Searching'**
  String get toolSearching;

  /// Kilo-Walk UI string — toolSearchingCode
  ///
  /// In en, this message translates to:
  /// **'Searching code'**
  String get toolSearchingCode;

  /// Kilo-Walk UI string — toolSearchingWeb
  ///
  /// In en, this message translates to:
  /// **'Searching the web'**
  String get toolSearchingWeb;

  /// Kilo-Walk UI string — toolUpdatingTaskList
  ///
  /// In en, this message translates to:
  /// **'Updating task list'**
  String get toolUpdatingTaskList;

  /// Kilo-Walk UI string — toolUpdatingTasks
  ///
  /// In en, this message translates to:
  /// **'Updating tasks'**
  String get toolUpdatingTasks;

  /// Kilo-Walk UI string — toolWaitingForInput
  ///
  /// In en, this message translates to:
  /// **'Waiting for your input'**
  String get toolWaitingForInput;

  /// Kilo-Walk UI string — toolWriting
  ///
  /// In en, this message translates to:
  /// **'Writing'**
  String get toolWriting;

  /// Kilo-Walk UI string — toolWritingFile
  ///
  /// In en, this message translates to:
  /// **'Writing file'**
  String get toolWritingFile;

  /// Kilo-Walk UI string — tourBack
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get tourBack;

  /// Kilo-Walk UI string — tourSkip
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get tourSkip;

  /// Kilo-Walk UI string — trayQuit
  ///
  /// In en, this message translates to:
  /// **'Quit'**
  String get trayQuit;

  /// Kilo-Walk UI string — trayShow
  ///
  /// In en, this message translates to:
  /// **'Show'**
  String get trayShow;

  /// Kilo-Walk UI string — useOAuthCloudflareAccess
  ///
  /// In en, this message translates to:
  /// **'Use OAuth (Cloudflare Access)'**
  String get useOAuthCloudflareAccess;

  /// Kilo-Walk UI string — useOAuthCloudflareAccessSubtitle
  ///
  /// In en, this message translates to:
  /// **'Opens a browser for Cloudflare Access Managed OAuth.'**
  String get useOAuthCloudflareAccessSubtitle;

  /// Kilo-Walk UI string — useOAuthCloudflareAccessUnsupported
  ///
  /// In en, this message translates to:
  /// **'Cloudflare Access OAuth is not available on this platform. Use Basic Auth instead.'**
  String get useOAuthCloudflareAccessUnsupported;

  /// Kilo-Walk UI string — useTailscale
  ///
  /// In en, this message translates to:
  /// **'Use Tailscale'**
  String get useTailscale;

  /// Kilo-Walk UI string — useTailscaleSubtitle
  ///
  /// In en, this message translates to:
  /// **'Routes traffic through the Tailscale network without a system VPN.'**
  String get useTailscaleSubtitle;

  /// Kilo-Walk UI string — useTailscaleUnsupported
  ///
  /// In en, this message translates to:
  /// **'Tailscale is not supported on this platform.'**
  String get useTailscaleUnsupported;

  /// Kilo-Walk UI string — useTailscaleWebOsLevel
  ///
  /// In en, this message translates to:
  /// **'On web, Tailscale works at the OS level — turn it on in the Tailscale app, then add the server URL here.'**
  String get useTailscaleWebOsLevel;

  /// Kilo-Walk UI string — utilityTitle
  ///
  /// In en, this message translates to:
  /// **'Utility'**
  String get utilityTitle;

  /// Kilo-Walk UI string — workspaceBrowseDirs
  ///
  /// In en, this message translates to:
  /// **'Browse directories'**
  String get workspaceBrowseDirs;

  /// Kilo-Walk UI string — workspaceChooseFolderOpen
  ///
  /// In en, this message translates to:
  /// **'Choose any folder to open as project context.'**
  String get workspaceChooseFolderOpen;

  /// Kilo-Walk UI string — workspaceCloseProject
  ///
  /// In en, this message translates to:
  /// **'Close {project}'**
  String workspaceCloseProject(String project);

  /// Kilo-Walk UI string — workspaceClosedProjects
  ///
  /// In en, this message translates to:
  /// **'Closed projects'**
  String get workspaceClosedProjects;

  /// Kilo-Walk UI string — workspaceCurrentDirectory
  ///
  /// In en, this message translates to:
  /// **'Current directory: {path}'**
  String workspaceCurrentDirectory(String path);

  /// Kilo-Walk UI string — workspaceFilterDirs
  ///
  /// In en, this message translates to:
  /// **'Filter directories'**
  String get workspaceFilterDirs;

  /// Kilo-Walk UI string — workspaceOpenFolder
  ///
  /// In en, this message translates to:
  /// **'Open folder'**
  String get workspaceOpenFolder;

  /// Kilo-Walk UI string — workspaceOpenProjectFolder
  ///
  /// In en, this message translates to:
  /// **'Open project folder'**
  String get workspaceOpenProjectFolder;

  /// Kilo-Walk UI string — workspaceOpenProjects
  ///
  /// In en, this message translates to:
  /// **'Open projects'**
  String get workspaceOpenProjects;

  /// Kilo-Walk UI string — workspaceProjectDirectory
  ///
  /// In en, this message translates to:
  /// **'Project directory'**
  String get workspaceProjectDirectory;

  /// Kilo-Walk UI string — workspaceProjectHint
  ///
  /// In en, this message translates to:
  /// **'/repo/my-project'**
  String get workspaceProjectHint;

  /// Kilo-Walk UI string — workspaceRemoveFromHistory
  ///
  /// In en, this message translates to:
  /// **'Remove {name} from history'**
  String workspaceRemoveFromHistory(String name);

  /// Title for the opt-in floating session attention setting
  ///
  /// In en, this message translates to:
  /// **'Session attention'**
  String get settingsSessionAttentionTitle;

  /// Description for floating session attention modes
  ///
  /// In en, this message translates to:
  /// **'Show root-session status in an opt-in bubble or panel.'**
  String get settingsSessionAttentionDescription;

  /// Disabled session attention mode
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get settingsSessionAttentionOff;

  /// Compact session attention mode
  ///
  /// In en, this message translates to:
  /// **'Bubble'**
  String get settingsSessionAttentionBubble;

  /// Expanded session attention mode
  ///
  /// In en, this message translates to:
  /// **'Panel'**
  String get settingsSessionAttentionPanel;

  /// Privacy, foreground-service, and cloud TTS disclosure
  ///
  /// In en, this message translates to:
  /// **'On Android, enabling this starts a persistent foreground service. Response text is stored encrypted; cloud TTS sends text only after you press Read.'**
  String get settingsSessionAttentionPrivacy;

  /// Unsupported platform explanation
  ///
  /// In en, this message translates to:
  /// **'Session attention is unavailable on this platform.'**
  String get settingsSessionAttentionUnavailable;

  /// Open Android overlay permission settings
  ///
  /// In en, this message translates to:
  /// **'Open display settings'**
  String get settingsSessionAttentionOpenSettings;

  /// Stop the active session attention host
  ///
  /// In en, this message translates to:
  /// **'Stop session attention'**
  String get settingsSessionAttentionStop;

  /// Third-party text-to-speech data use warning
  ///
  /// In en, this message translates to:
  /// **'When you press Read, response text may be sent to the configured third-party TTS provider.'**
  String get settingsSessionAttentionThirdPartyTtsWarning;

  /// Kilo-Walk UI string — workspaceSuggestions
  ///
  /// In en, this message translates to:
  /// **'Suggestions'**
  String get workspaceSuggestions;

  /// Title for the session tab gesture onboarding dialog
  ///
  /// In en, this message translates to:
  /// **'Session tabs have new controls'**
  String get sessionTabsGestureHintTitle;

  /// Instructions for closing tabs, opening their menu, and disabling tabs
  ///
  /// In en, this message translates to:
  /// **'Double-click or double-tap a tab to close it. Right-click or touch and hold to open session actions. You can disable tabs in Display Toggles.'**
  String get sessionTabsGestureHintBody;

  /// Acknowledgement button for the session tab gesture dialog
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get sessionTabsGestureHintAcknowledge;

  /// Button that disables session tabs from the gesture dialog
  ///
  /// In en, this message translates to:
  /// **'Disable tabs'**
  String get sessionTabsGestureHintDisableTabs;

  /// Rename action in the active session tab menu
  ///
  /// In en, this message translates to:
  /// **'Rename session'**
  String get sessionTabRenameAction;

  /// Snackbar shown after closing a session tab
  ///
  /// In en, this message translates to:
  /// **'Tab \"{title}\" closed'**
  String sessionTabClosedMessage(String title);

  /// Snackbar action that restores a closed session tab
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get sessionTabUndo;

  /// Snackbar shown when undo cannot restore a closed session tab
  ///
  /// In en, this message translates to:
  /// **'Tab could not be restored.'**
  String get sessionTabRestoreFailed;

  /// Action that opens the icon picker for a session tab
  ///
  /// In en, this message translates to:
  /// **'Change icon'**
  String get sessionTabChangeIconAction;

  /// Title for the session tab icon picker
  ///
  /// In en, this message translates to:
  /// **'Choose tab icon'**
  String get sessionTabIconPickerTitle;

  /// Option that removes a session tab icon override
  ///
  /// In en, this message translates to:
  /// **'Use project icon'**
  String get sessionTabIconUseProjectIcon;

  /// Snackbar shown after a tab icon is saved
  ///
  /// In en, this message translates to:
  /// **'Tab icon updated.'**
  String get sessionTabIconApplied;

  /// Snackbar shown when a tab icon cannot be saved
  ///
  /// In en, this message translates to:
  /// **'Tab icon could not be saved.'**
  String get sessionTabIconSaveFailed;

  /// Label for the Code tab icon preset
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get sessionTabIconPresetCode;

  /// Label for the Terminal tab icon preset
  ///
  /// In en, this message translates to:
  /// **'Terminal'**
  String get sessionTabIconPresetTerminal;

  /// Label for the Bug tab icon preset
  ///
  /// In en, this message translates to:
  /// **'Bug'**
  String get sessionTabIconPresetBug;

  /// Label for the Tasks tab icon preset
  ///
  /// In en, this message translates to:
  /// **'Tasks'**
  String get sessionTabIconPresetTasks;

  /// Label for the Launch tab icon preset
  ///
  /// In en, this message translates to:
  /// **'Launch'**
  String get sessionTabIconPresetLaunch;

  /// Label for the Idea tab icon preset
  ///
  /// In en, this message translates to:
  /// **'Idea'**
  String get sessionTabIconPresetIdea;

  /// Label for the Research tab icon preset
  ///
  /// In en, this message translates to:
  /// **'Research'**
  String get sessionTabIconPresetResearch;

  /// Label for the Design tab icon preset
  ///
  /// In en, this message translates to:
  /// **'Design'**
  String get sessionTabIconPresetDesign;

  /// Label for the Data tab icon preset
  ///
  /// In en, this message translates to:
  /// **'Data'**
  String get sessionTabIconPresetData;

  /// Label for the Cloud tab icon preset
  ///
  /// In en, this message translates to:
  /// **'Cloud'**
  String get sessionTabIconPresetCloud;

  /// Label for the Security tab icon preset
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get sessionTabIconPresetSecurity;

  /// Label for the Tools tab icon preset
  ///
  /// In en, this message translates to:
  /// **'Tools'**
  String get sessionTabIconPresetTools;

  /// Kilo-Walk UI string — workspaceNoActiveContext
  ///
  /// In en, this message translates to:
  /// **'No active context'**
  String get workspaceNoActiveContext;

  /// Kilo-Walk UI string — settingsAppearanceContrastLow
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get settingsAppearanceContrastLow;

  /// Kilo-Walk UI string — settingsAppearanceContrastStandard
  ///
  /// In en, this message translates to:
  /// **'Standard'**
  String get settingsAppearanceContrastStandard;

  /// Kilo-Walk UI string — settingsAppearanceContrastMedium
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get settingsAppearanceContrastMedium;

  /// Kilo-Walk UI string — settingsAppearanceContrastMediumHigh
  ///
  /// In en, this message translates to:
  /// **'Medium High'**
  String get settingsAppearanceContrastMediumHigh;

  /// Kilo-Walk UI string — settingsNotificationsSystemSoundsWebUnavailable
  ///
  /// In en, this message translates to:
  /// **'Not available on web.'**
  String get settingsNotificationsSystemSoundsWebUnavailable;

  /// Kilo-Walk UI string — settingsNotificationsSystemSoundsAndroid
  ///
  /// In en, this message translates to:
  /// **'Android notification sounds from the system.'**
  String get settingsNotificationsSystemSoundsAndroid;

  /// Kilo-Walk UI string — settingsNotificationsSystemSoundsFreedesktop
  ///
  /// In en, this message translates to:
  /// **'Freedesktop sounds from /usr/share/sounds/freedesktop/stereo.'**
  String get settingsNotificationsSystemSoundsFreedesktop;

  /// Kilo-Walk UI string — settingsNotificationsSystemSoundsPlatform
  ///
  /// In en, this message translates to:
  /// **'Supported where the operating system exposes system sounds.'**
  String get settingsNotificationsSystemSoundsPlatform;

  /// Kilo-Walk UI string — serversQuickGuideTitle
  ///
  /// In en, this message translates to:
  /// **'Quick setup'**
  String get serversQuickGuideTitle;

  /// Kilo-Walk UI string — serversQuickGuideIntro
  ///
  /// In en, this message translates to:
  /// **'Kilo-Walk is the app. OpenCode is the engine that needs to be running before this connection can work.'**
  String get serversQuickGuideIntro;

  /// Kilo-Walk UI string — serversQuickGuideStepInstallCli
  ///
  /// In en, this message translates to:
  /// **'1. Install OpenCode CLI.'**
  String get serversQuickGuideStepInstallCli;

  /// Kilo-Walk UI string — serversQuickGuideRunPowerShell
  ///
  /// In en, this message translates to:
  /// **'2. Run in PowerShell:'**
  String get serversQuickGuideRunPowerShell;

  /// Kilo-Walk UI string — serversQuickGuideRunTerminal
  ///
  /// In en, this message translates to:
  /// **'2. Run in your terminal:'**
  String get serversQuickGuideRunTerminal;

  /// Kilo-Walk UI string — serversQuickGuideProtectPassword
  ///
  /// In en, this message translates to:
  /// **'Protect access with password'**
  String get serversQuickGuideProtectPassword;

  /// Kilo-Walk UI string — serversQuickGuideServerPassword
  ///
  /// In en, this message translates to:
  /// **'Server password'**
  String get serversQuickGuideServerPassword;

  /// Kilo-Walk UI string — serversQuickGuideInstallOptions
  ///
  /// In en, this message translates to:
  /// **'Other official install options: install script, npm, bun, pnpm, Homebrew, or a binary from GitHub Releases.'**
  String get serversQuickGuideInstallOptions;

  /// Kilo-Walk UI string — serversQuickGuideVerifyHint
  ///
  /// In en, this message translates to:
  /// **'After starting the server, confirm /global/health or /doc responds before pasting the URL into Kilo-Walk.'**
  String get serversQuickGuideVerifyHint;

  /// Kilo-Walk UI string — shortcutsPressKeyCombination
  ///
  /// In en, this message translates to:
  /// **'Press the key combination now'**
  String get shortcutsPressKeyCombination;

  /// Kilo-Walk UI string — settingsProvenanceOpenCodeBacked
  ///
  /// In en, this message translates to:
  /// **'OpenCode-backed'**
  String get settingsProvenanceOpenCodeBacked;

  /// Kilo-Walk UI string — settingsProvenanceKilo-WalkLocal
  ///
  /// In en, this message translates to:
  /// **'Kilo-Walk-local'**
  String get settingsProvenanceCodeWalkLocal;

  /// Kilo-Walk UI string — settingsProvenanceKilo-WalkException
  ///
  /// In en, this message translates to:
  /// **'Kilo-Walk exception'**
  String get settingsProvenanceCodeWalkException;

  /// Kilo-Walk UI string — shortcutsErrorInvalid
  ///
  /// In en, this message translates to:
  /// **'Invalid shortcut'**
  String get shortcutsErrorInvalid;

  /// Kilo-Walk UI string — shortcutsErrorUnsupportedKey
  ///
  /// In en, this message translates to:
  /// **'Unsupported shortcut key'**
  String get shortcutsErrorUnsupportedKey;

  /// Kilo-Walk UI string — shortcutsErrorConflict
  ///
  /// In en, this message translates to:
  /// **'Conflicts with \"{conflict}\"'**
  String shortcutsErrorConflict(String conflict);

  /// Kilo-Walk UI string — settingsSessionAttentionStopSaveFailed
  ///
  /// In en, this message translates to:
  /// **'Session attention was stopped but the setting could not be saved.'**
  String get settingsSessionAttentionStopSaveFailed;

  /// Kilo-Walk UI string — settingsSessionAttentionEnableFailed
  ///
  /// In en, this message translates to:
  /// **'Session attention could not be enabled.'**
  String get settingsSessionAttentionEnableFailed;

  /// Kilo-Walk UI string — settingsSessionAttentionSaveFailedStopped
  ///
  /// In en, this message translates to:
  /// **'Session attention could not be saved and was stopped.'**
  String get settingsSessionAttentionSaveFailedStopped;

  /// Kilo-Walk UI string — settingsSessionAttentionStillRunning
  ///
  /// In en, this message translates to:
  /// **'Session attention is still running. Try stopping it again.'**
  String get settingsSessionAttentionStillRunning;

  /// Kilo-Walk UI string — settingsSessionAttentionStopFailed
  ///
  /// In en, this message translates to:
  /// **'Session attention could not be stopped. Try again.'**
  String get settingsSessionAttentionStopFailed;

  /// Kilo-Walk UI string — settingsSessionAttentionCapabilityUnavailable
  ///
  /// In en, this message translates to:
  /// **'Session attention host capability is unavailable.'**
  String get settingsSessionAttentionCapabilityUnavailable;

  /// Kilo-Walk UI string — settingsServerFallbackProviderName
  ///
  /// In en, this message translates to:
  /// **'Configured on server'**
  String get settingsServerFallbackProviderName;

  /// Kilo-Walk UI string — composerStopResponse
  ///
  /// In en, this message translates to:
  /// **'Stop response'**
  String get composerStopResponse;

  /// Kilo-Walk UI string — composerSendMessageWhileResponding
  ///
  /// In en, this message translates to:
  /// **'Send message while response is running'**
  String get composerSendMessageWhileResponding;

  /// Kilo-Walk UI string — composerSendMessage
  ///
  /// In en, this message translates to:
  /// **'Send message'**
  String get composerSendMessage;

  /// Kilo-Walk UI string — chatTourComposerDescription
  ///
  /// In en, this message translates to:
  /// **'Type your request here.'**
  String get chatTourComposerDescription;

  /// Kilo-Walk UI string — chatTourSendDescription
  ///
  /// In en, this message translates to:
  /// **'Send your message here.'**
  String get chatTourSendDescription;

  /// Kilo-Walk UI string — composerAttachmentFallbackName
  ///
  /// In en, this message translates to:
  /// **'Attachment'**
  String get composerAttachmentFallbackName;

  /// Kilo-Walk UI string — composerContextFallbackName
  ///
  /// In en, this message translates to:
  /// **'Context'**
  String get composerContextFallbackName;

  /// Kilo-Walk UI string — searchableDropdownSearchHint
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get searchableDropdownSearchHint;

  /// Kilo-Walk UI string — searchableDropdownEmptyText
  ///
  /// In en, this message translates to:
  /// **'No matches found'**
  String get searchableDropdownEmptyText;

  /// Kilo-Walk UI string — speechApiKeyStorageUnavailable
  ///
  /// In en, this message translates to:
  /// **'Secure TTS API key storage is unavailable.'**
  String get speechApiKeyStorageUnavailable;

  /// Kilo-Walk UI string — speechApiKeyRemoved
  ///
  /// In en, this message translates to:
  /// **'API key removed.'**
  String get speechApiKeyRemoved;

  /// Kilo-Walk UI string — speechApiKeySaved
  ///
  /// In en, this message translates to:
  /// **'API key saved securely on this device.'**
  String get speechApiKeySaved;

  /// Kilo-Walk UI string — speechReadAloudTestText
  ///
  /// In en, this message translates to:
  /// **'This is a Kilo-Walk text-to-speech test.'**
  String get speechReadAloudTestText;

  /// Kilo-Walk UI string — speechNativeDisabledWindows
  ///
  /// In en, this message translates to:
  /// **'Disabled on Windows for stability. Use Parakeet or another on-device engine through Kilo-Walk WASAPI capture.'**
  String get speechNativeDisabledWindows;

  /// Kilo-Walk UI string — speechNativeUnavailableLinux
  ///
  /// In en, this message translates to:
  /// **'Unavailable on Linux. Use Parakeet for speech input.'**
  String get speechNativeUnavailableLinux;

  /// Kilo-Walk UI string — speechNotAvailableOnPlatform
  ///
  /// In en, this message translates to:
  /// **'Not available on this platform.'**
  String get speechNotAvailableOnPlatform;

  /// Kilo-Walk UI string — speechSherpaUnavailableAndroid
  ///
  /// In en, this message translates to:
  /// **'Unavailable on Android builds optimized for small APK size.'**
  String get speechSherpaUnavailableAndroid;

  /// Kilo-Walk UI string — speechMoonshineDesktopOnlyHint
  ///
  /// In en, this message translates to:
  /// **'Available on desktop only. Android stays native-only.'**
  String get speechMoonshineDesktopOnlyHint;

  /// Kilo-Walk UI string — speechParakeetDesktopOnlyHint
  ///
  /// In en, this message translates to:
  /// **'Available on desktop only. Uses offline multilingual recognition.'**
  String get speechParakeetDesktopOnlyHint;

  /// Kilo-Walk UI string — speechSenseVoiceDesktopOnlyHint
  ///
  /// In en, this message translates to:
  /// **'Available on desktop only. Strongest for Chinese, Cantonese, Japanese, Korean, and English.'**
  String get speechSenseVoiceDesktopOnlyHint;

  /// Kilo-Walk UI string — speechNativeSubtitle
  ///
  /// In en, this message translates to:
  /// **'Simpler and faster startup.'**
  String get speechNativeSubtitle;

  /// Kilo-Walk UI string — speechSherpaSubtitle
  ///
  /// In en, this message translates to:
  /// **'On-device speech recognition with downloadable models.'**
  String get speechSherpaSubtitle;

  /// Kilo-Walk UI string — speechMoonshineSubtitle
  ///
  /// In en, this message translates to:
  /// **'Desktop-only experimental path using sherpa_onnx offline recognition and downloadable models.'**
  String get speechMoonshineSubtitle;

  /// Kilo-Walk UI string — speechParakeetSubtitle
  ///
  /// In en, this message translates to:
  /// **'Desktop-only offline NeMo transducer path with one multilingual downloadable model.'**
  String get speechParakeetSubtitle;

  /// Kilo-Walk UI string — speechSenseVoiceSubtitle
  ///
  /// In en, this message translates to:
  /// **'Desktop-only offline path tuned for Chinese, Cantonese, Japanese, Korean, and English.'**
  String get speechSenseVoiceSubtitle;

  /// Kilo-Walk UI string — speechMoonshineModel
  ///
  /// In en, this message translates to:
  /// **'Moonshine model'**
  String get speechMoonshineModel;

  /// Kilo-Walk UI string — speechSherpaLanguage
  ///
  /// In en, this message translates to:
  /// **'Sherpa language'**
  String get speechSherpaLanguage;

  /// Kilo-Walk UI string — speechSearchSherpaLanguage
  ///
  /// In en, this message translates to:
  /// **'Search Sherpa language'**
  String get speechSearchSherpaLanguage;

  /// Kilo-Walk UI string — speechNoLanguagePacksFound
  ///
  /// In en, this message translates to:
  /// **'No language packs found'**
  String get speechNoLanguagePacksFound;

  /// Kilo-Walk UI string — speechTextToSpeechProvider
  ///
  /// In en, this message translates to:
  /// **'Text-to-speech provider'**
  String get speechTextToSpeechProvider;

  /// Kilo-Walk UI string — speechProviderSystemNative
  ///
  /// In en, this message translates to:
  /// **'System / Native'**
  String get speechProviderSystemNative;

  /// Kilo-Walk UI string — speechProviderEdgeExperimental
  ///
  /// In en, this message translates to:
  /// **'Microsoft Edge Speech (experimental)'**
  String get speechProviderEdgeExperimental;

  /// Kilo-Walk UI string — speechProviderOpenAiCompatible
  ///
  /// In en, this message translates to:
  /// **'OpenAI-compatible'**
  String get speechProviderOpenAiCompatible;

  /// Kilo-Walk UI string — speechProviderElevenLabs
  ///
  /// In en, this message translates to:
  /// **'ElevenLabs'**
  String get speechProviderElevenLabs;

  /// Kilo-Walk UI string — speechProviderNvidiaNim
  ///
  /// In en, this message translates to:
  /// **'NVIDIA NIM'**
  String get speechProviderNvidiaNim;

  /// Kilo-Walk UI string — speechNimSpeedNotSupported
  ///
  /// In en, this message translates to:
  /// **'Speed is not supported by NVIDIA NIM TTS and is hidden for this provider.'**
  String get speechNimSpeedNotSupported;

  /// Kilo-Walk UI string — speechRemoteVoice
  ///
  /// In en, this message translates to:
  /// **'Voice'**
  String get speechRemoteVoice;

  /// Kilo-Walk UI string — speechRemoteVoiceUnavailable
  ///
  /// In en, this message translates to:
  /// **'The selected voice is no longer available in the provider catalog.'**
  String get speechRemoteVoiceUnavailable;

  /// Kilo-Walk UI string — speechRemoteVoiceListUnavailable
  ///
  /// In en, this message translates to:
  /// **'Using the default voice. The voice list could not be loaded right now.'**
  String get speechRemoteVoiceListUnavailable;

  /// Kilo-Walk UI string — speechRemoteVoicesLoaded
  ///
  /// In en, this message translates to:
  /// **'Loaded from the provider voices.'**
  String get speechRemoteVoicesLoaded;

  /// Kilo-Walk UI string — speechRemoteModel
  ///
  /// In en, this message translates to:
  /// **'Model'**
  String get speechRemoteModel;

  /// Kilo-Walk UI string — speechRemoteModelListUnavailable
  ///
  /// In en, this message translates to:
  /// **'The model list could not be loaded right now. You can type a custom model below.'**
  String get speechRemoteModelListUnavailable;

  /// Kilo-Walk UI string — speechRemoteModelsLoaded
  ///
  /// In en, this message translates to:
  /// **'Loaded from the provider models.'**
  String get speechRemoteModelsLoaded;

  /// Kilo-Walk UI string — speechRemoteModelUnavailable
  ///
  /// In en, this message translates to:
  /// **'The selected model is no longer available in the provider catalog.'**
  String get speechRemoteModelUnavailable;

  /// Kilo-Walk UI string — speechCustomModel
  ///
  /// In en, this message translates to:
  /// **'Custom model…'**
  String get speechCustomModel;

  /// Kilo-Walk UI string — speechEdgeExperimentalTitle
  ///
  /// In en, this message translates to:
  /// **'Microsoft Edge Speech is experimental'**
  String get speechEdgeExperimentalTitle;

  /// Kilo-Walk UI string — speechEdgeExperimentalDescription
  ///
  /// In en, this message translates to:
  /// **'Uses the unofficial Edge Read Aloud service directly from this device. Message text is sent to Microsoft when you use read aloud, and the service may break if Microsoft changes the private protocol.'**
  String get speechEdgeExperimentalDescription;

  /// Kilo-Walk UI string — speechEdgeVoice
  ///
  /// In en, this message translates to:
  /// **'Edge voice'**
  String get speechEdgeVoice;

  /// Kilo-Walk UI string — speechEdgeVoiceUnavailable
  ///
  /// In en, this message translates to:
  /// **'The selected voice is no longer available. Using the default Edge voice.'**
  String get speechEdgeVoiceUnavailable;

  /// Kilo-Walk UI string — speechEdgeVoiceListUnavailable
  ///
  /// In en, this message translates to:
  /// **'Using the default Edge voice. Voice list could not be loaded right now.'**
  String get speechEdgeVoiceListUnavailable;

  /// Kilo-Walk UI string — speechEdgeVoicesLoaded
  ///
  /// In en, this message translates to:
  /// **'Loaded from Microsoft Edge Speech voices.'**
  String get speechEdgeVoicesLoaded;

  /// Kilo-Walk UI string — speechCloudTtsPrivacy
  ///
  /// In en, this message translates to:
  /// **'Cloud TTS privacy'**
  String get speechCloudTtsPrivacy;

  /// Kilo-Walk UI string — speechCloudTtsPrivacyDescription
  ///
  /// In en, this message translates to:
  /// **'Cloud TTS sends the selected assistant message text to the configured provider. API keys are stored in secure storage on this device.'**
  String get speechCloudTtsPrivacyDescription;

  /// Kilo-Walk UI string — speechBaseUrl
  ///
  /// In en, this message translates to:
  /// **'Base URL'**
  String get speechBaseUrl;

  /// Kilo-Walk UI string — speechApiKey
  ///
  /// In en, this message translates to:
  /// **'API key'**
  String get speechApiKey;

  /// Kilo-Walk UI string — speechApiKeySavedHelper
  ///
  /// In en, this message translates to:
  /// **'A key is saved. Enter a new value to replace it, or save an empty value to remove it.'**
  String get speechApiKeySavedHelper;

  /// Kilo-Walk UI string — speechNoApiKeySaved
  ///
  /// In en, this message translates to:
  /// **'No API key saved.'**
  String get speechNoApiKeySaved;

  /// Kilo-Walk UI string — speechSaveApiKey
  ///
  /// In en, this message translates to:
  /// **'Save API key'**
  String get speechSaveApiKey;

  /// Kilo-Walk UI string — speechModel
  ///
  /// In en, this message translates to:
  /// **'Model'**
  String get speechModel;

  /// Kilo-Walk UI string — speechPitchNotSupported
  ///
  /// In en, this message translates to:
  /// **'Pitch is not supported by OpenAI-compatible TTS and is hidden for this provider.'**
  String get speechPitchNotSupported;

  /// Kilo-Walk UI string — speechPitchHiddenForProvider
  ///
  /// In en, this message translates to:
  /// **'Pitch is not supported by this TTS provider and is hidden.'**
  String get speechPitchHiddenForProvider;

  /// Kilo-Walk UI string — speechTestVoice
  ///
  /// In en, this message translates to:
  /// **'Test voice'**
  String get speechTestVoice;

  /// Kilo-Walk UI string — speechReadAloudTestPhraseLabel
  ///
  /// In en, this message translates to:
  /// **'Voice test phrase'**
  String get speechReadAloudTestPhraseLabel;

  /// Kilo-Walk UI string — speechReadAloudTestPhraseHint
  ///
  /// In en, this message translates to:
  /// **'Leave empty to use the default test phrase.'**
  String get speechReadAloudTestPhraseHint;

  /// Kilo-Walk UI string — dialogMoonshineVoiceSetupDescription
  ///
  /// In en, this message translates to:
  /// **'Moonshine runs on-device through sherpa_onnx. Pick a model once and download it only for this desktop device.'**
  String get dialogMoonshineVoiceSetupDescription;

  /// Kilo-Walk UI string — dialogParakeetVoiceSetupDescription
  ///
  /// In en, this message translates to:
  /// **'Parakeet runs on-device through sherpa_onnx offline recognition. Download it once for this desktop device to enable multilingual STT.'**
  String get dialogParakeetVoiceSetupDescription;

  /// Kilo-Walk UI string — dialogSenseVoiceSetupDescription
  ///
  /// In en, this message translates to:
  /// **'SenseVoice runs on-device through sherpa_onnx offline recognition. It is strongest for Chinese, Cantonese, Japanese, Korean, and English.'**
  String get dialogSenseVoiceSetupDescription;

  /// Kilo-Walk UI string — dialogSherpaVoiceSetupDescription
  ///
  /// In en, this message translates to:
  /// **'Sherpa voice input requires an on-device speech model. Select your language and download it once (~147 MB).'**
  String get dialogSherpaVoiceSetupDescription;

  /// Kilo-Walk UI string — speechSilenceSeconds
  ///
  /// In en, this message translates to:
  /// **'{value} seconds'**
  String speechSilenceSeconds(String value);

  /// Kilo-Walk UI string — speechModelInstalled
  ///
  /// In en, this message translates to:
  /// **'Model installed ({modelId})'**
  String speechModelInstalled(String modelId);

  /// Kilo-Walk UI string — speechModelMissing
  ///
  /// In en, this message translates to:
  /// **'Model missing ({modelId})'**
  String speechModelMissing(String modelId);

  /// Kilo-Walk UI string — speechModelSizeMb
  ///
  /// In en, this message translates to:
  /// **'~{sizeMb} MB'**
  String speechModelSizeMb(String sizeMb);

  /// Kilo-Walk UI string — speechSystemDefaultLanguage
  ///
  /// In en, this message translates to:
  /// **'System default ({language})'**
  String speechSystemDefaultLanguage(String language);

  /// Kilo-Walk UI string — speechModelListLoadFailed
  ///
  /// In en, this message translates to:
  /// **'Failed to load {service} model list: {error}'**
  String speechModelListLoadFailed(String error, String service);

  /// Kilo-Walk UI string — speechDownloadFailed
  ///
  /// In en, this message translates to:
  /// **'Download failed: {error}'**
  String speechDownloadFailed(String error);

  /// Kilo-Walk UI string — speechFailedToRemoveModel
  ///
  /// In en, this message translates to:
  /// **'Failed to remove model: {error}'**
  String speechFailedToRemoveModel(String error);

  /// Kilo-Walk UI string — speechBaseUrlExample
  ///
  /// In en, this message translates to:
  /// **'Example: {url}'**
  String speechBaseUrlExample(String url);

  /// Kilo-Walk UI string — speechModelDefaultHelper
  ///
  /// In en, this message translates to:
  /// **'Default: {model}'**
  String speechModelDefaultHelper(String model);

  /// Kilo-Walk UI string — notificationPermissionOrQuestionNeedsInput
  ///
  /// In en, this message translates to:
  /// **'A tool permission or question needs your input.'**
  String get notificationPermissionOrQuestionNeedsInput;

  /// Kilo-Walk UI string — notificationPermissionNeedsInput
  ///
  /// In en, this message translates to:
  /// **'A tool permission needs your input.'**
  String get notificationPermissionNeedsInput;

  /// Kilo-Walk UI string — notificationQuestionNeedsInput
  ///
  /// In en, this message translates to:
  /// **'A tool question needs your input.'**
  String get notificationQuestionNeedsInput;

  /// Kilo-Walk UI string — notificationSessionError
  ///
  /// In en, this message translates to:
  /// **'A session reported an error.'**
  String get notificationSessionError;

  /// Kilo-Walk UI string — notificationChannelErrors
  ///
  /// In en, this message translates to:
  /// **'Kilo-Walk errors'**
  String get notificationChannelErrors;

  /// Kilo-Walk UI string — notificationChannelErrorsDescription
  ///
  /// In en, this message translates to:
  /// **'Kilo-Walk error alerts'**
  String get notificationChannelErrorsDescription;

  /// Kilo-Walk UI string — notificationChannelPermissions
  ///
  /// In en, this message translates to:
  /// **'Kilo-Walk permissions'**
  String get notificationChannelPermissions;

  /// Kilo-Walk UI string — notificationChannelPermissionsDescription
  ///
  /// In en, this message translates to:
  /// **'Kilo-Walk action required alerts'**
  String get notificationChannelPermissionsDescription;

  /// Kilo-Walk UI string — notificationChannelAgent
  ///
  /// In en, this message translates to:
  /// **'Kilo-Walk agent'**
  String get notificationChannelAgent;

  /// Kilo-Walk UI string — notificationChannelAgentDescription
  ///
  /// In en, this message translates to:
  /// **'Kilo-Walk agent completion alerts'**
  String get notificationChannelAgentDescription;

  /// Kilo-Walk UI string — notificationActionOpen
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get notificationActionOpen;

  /// Kilo-Walk UI string — foregroundMonitorNotificationBody
  ///
  /// In en, this message translates to:
  /// **'Reliable background alerts are active'**
  String get foregroundMonitorNotificationBody;

  /// Kilo-Walk UI string — foregroundMonitorNotificationTitle
  ///
  /// In en, this message translates to:
  /// **'Background monitoring active'**
  String get foregroundMonitorNotificationTitle;

  /// Kilo-Walk UI string — foregroundMonitorNotificationOneSession
  ///
  /// In en, this message translates to:
  /// **'Monitoring one session'**
  String get foregroundMonitorNotificationOneSession;

  /// Kilo-Walk UI string — foregroundMonitorNotificationSessionCount
  ///
  /// In en, this message translates to:
  /// **'Monitoring {count} sessions'**
  String foregroundMonitorNotificationSessionCount(int count);

  /// Kilo-Walk UI string — sessionAttentionSemanticLabel
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 session needs attention} other{{count} sessions need attention}}'**
  String sessionAttentionSemanticLabel(int count);

  /// Kilo-Walk UI string — sessionAttentionOverlayPermissionRequired
  ///
  /// In en, this message translates to:
  /// **'Display-over-other-apps permission is required.'**
  String get sessionAttentionOverlayPermissionRequired;

  /// Kilo-Walk UI string — sessionAttentionIosInAppOnly
  ///
  /// In en, this message translates to:
  /// **'Session attention is available only inside Kilo-Walk.'**
  String get sessionAttentionIosInAppOnly;

  /// Kilo-Walk UI string — sessionAttentionOverlayPermissionGrantPrompt
  ///
  /// In en, this message translates to:
  /// **'Grant display-over-other-apps permission, then try again.'**
  String get sessionAttentionOverlayPermissionGrantPrompt;

  /// Kilo-Walk UI string — sessionAttentionAndroidStartFailed
  ///
  /// In en, this message translates to:
  /// **'The Android session attention service could not start.'**
  String get sessionAttentionAndroidStartFailed;

  /// Kilo-Walk UI string — chatMessageTruncatedChars
  ///
  /// In en, this message translates to:
  /// **'[truncated {count} chars] {reason}'**
  String chatMessageTruncatedChars(int count, String reason);

  /// Kilo-Walk UI string — chatMessageJustNow
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get chatMessageJustNow;

  /// Kilo-Walk UI string — chatMessageMinutesAgo
  ///
  /// In en, this message translates to:
  /// **'{count}m ago'**
  String chatMessageMinutesAgo(int count);

  /// Kilo-Walk UI string — chatMessageHoursAgo
  ///
  /// In en, this message translates to:
  /// **'{count}h ago'**
  String chatMessageHoursAgo(int count);

  /// Kilo-Walk UI string — chatMessageDaysAgo
  ///
  /// In en, this message translates to:
  /// **'{count}d ago'**
  String chatMessageDaysAgo(int count);

  /// Kilo-Walk UI string — chatMessageDateTime
  ///
  /// In en, this message translates to:
  /// **'{month}/{day} {hour}:{minute}'**
  String chatMessageDateTime(int day, int hour, int minute, int month);

  /// Kilo-Walk UI string — chatMessageYourMessage
  ///
  /// In en, this message translates to:
  /// **'Your message'**
  String get chatMessageYourMessage;

  /// Kilo-Walk UI string — chatMessageAssistantMessage
  ///
  /// In en, this message translates to:
  /// **'Assistant message'**
  String get chatMessageAssistantMessage;

  /// Kilo-Walk UI string — chatMessageStepStarted
  ///
  /// In en, this message translates to:
  /// **'Step started #{step}'**
  String chatMessageStepStarted(int step);

  /// Kilo-Walk UI string — chatMessageStepStartedWithSnapshot
  ///
  /// In en, this message translates to:
  /// **'Step started #{step}: {snapshot}'**
  String chatMessageStepStartedWithSnapshot(String snapshot, int step);

  /// Kilo-Walk UI string — chatMessageStepFinished
  ///
  /// In en, this message translates to:
  /// **'Step finished #{step}: {reason} • tokens {tokens} • \${cost}'**
  String chatMessageStepFinished(
    String cost,
    String reason,
    int step,
    int tokens,
  );

  /// Kilo-Walk UI string — chatMessagePatchCount
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 patch} other{{count} patches}}'**
  String chatMessagePatchCount(int count);

  /// Kilo-Walk UI string — chatMessageToolRun
  ///
  /// In en, this message translates to:
  /// **'Tool run'**
  String get chatMessageToolRun;

  /// Kilo-Walk UI string — chatMessageToolExecution
  ///
  /// In en, this message translates to:
  /// **'Tool execution'**
  String get chatMessageToolExecution;

  /// Kilo-Walk UI string — chatMessageToolChainMore
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{+1 more} other{+{count} more}}'**
  String chatMessageToolChainMore(int count);

  /// Kilo-Walk UI string — chatMessageToolChainExtraTypes
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{+1 type} other{+{count} types}}'**
  String chatMessageToolChainExtraTypes(int count);

  /// Kilo-Walk UI string — chatMessageToolAttentionCount
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 needs attention} other{{count} need attention}}'**
  String chatMessageToolAttentionCount(int count);

  /// Kilo-Walk UI string — chatMessageToolDoneCount
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 done} other{{count} done}}'**
  String chatMessageToolDoneCount(int count);

  /// Kilo-Walk UI string — chatMessageToolCallsTitle
  ///
  /// In en, this message translates to:
  /// **'Tool calls'**
  String get chatMessageToolCallsTitle;

  /// Kilo-Walk UI string — chatMessageDiffPreviewTruncated
  ///
  /// In en, this message translates to:
  /// **'Diff preview truncated for app stability.'**
  String get chatMessageDiffPreviewTruncated;

  /// Kilo-Walk UI string — chatMessageLargeMessageTruncated
  ///
  /// In en, this message translates to:
  /// **'Large message preview truncated for app stability.'**
  String get chatMessageLargeMessageTruncated;

  /// Kilo-Walk UI string — chatMessageInvalidLinkFormat
  ///
  /// In en, this message translates to:
  /// **'Invalid link format'**
  String get chatMessageInvalidLinkFormat;

  /// Kilo-Walk UI string — chatMessageUnableToOpenLink
  ///
  /// In en, this message translates to:
  /// **'Unable to open link'**
  String get chatMessageUnableToOpenLink;

  /// Kilo-Walk UI string — sessionTodoInProgressCompact
  ///
  /// In en, this message translates to:
  /// **'{current}/{total} {content}'**
  String sessionTodoInProgressCompact(int current, int total, String content);

  /// Kilo-Walk UI string — sessionTodoTaskProgress
  ///
  /// In en, this message translates to:
  /// **'Task {index}/{total} {content}'**
  String sessionTodoTaskProgress(String content, int index, int total);

  /// Kilo-Walk UI string — sessionTodoDoneCompact
  ///
  /// In en, this message translates to:
  /// **'{count}/{total} done'**
  String sessionTodoDoneCompact(int count, int total);

  /// Kilo-Walk UI string — sessionTodoCompletedCount
  ///
  /// In en, this message translates to:
  /// **'Tasks {count}/{total} completed'**
  String sessionTodoCompletedCount(int count, int total);

  /// Kilo-Walk UI string — sessionTodoTasksCount
  ///
  /// In en, this message translates to:
  /// **'Tasks ({count})'**
  String sessionTodoTasksCount(int count);

  /// Kilo-Walk UI string — questionStepOfReview
  ///
  /// In en, this message translates to:
  /// **'Step {current} of {total} - Review'**
  String questionStepOfReview(int current, int total);

  /// Kilo-Walk UI string — questionStepOfQuestion
  ///
  /// In en, this message translates to:
  /// **'Step {current} of {total} - Question'**
  String questionStepOfQuestion(int current, int total);

  /// Kilo-Walk UI string — questionCustomAnswer
  ///
  /// In en, this message translates to:
  /// **'Custom answer'**
  String get questionCustomAnswer;

  /// Kilo-Walk UI string — questionSubmitAnswers
  ///
  /// In en, this message translates to:
  /// **'Submit Answers'**
  String get questionSubmitAnswers;

  /// Kilo-Walk UI string — questionReviewAnswers
  ///
  /// In en, this message translates to:
  /// **'Review Answers'**
  String get questionReviewAnswers;

  /// Kilo-Walk UI string — permissionRequestTitle
  ///
  /// In en, this message translates to:
  /// **'Permission request: {permission}'**
  String permissionRequestTitle(String permission);

  /// Kilo-Walk UI string — sessionTitleCannotBeEmpty
  ///
  /// In en, this message translates to:
  /// **'Title cannot be empty'**
  String get sessionTitleCannotBeEmpty;

  /// Kilo-Walk UI string — filesFailedToLoad
  ///
  /// In en, this message translates to:
  /// **'Failed to load files'**
  String get filesFailedToLoad;

  /// Kilo-Walk UI string — filesFailedToSearch
  ///
  /// In en, this message translates to:
  /// **'Failed to search files'**
  String get filesFailedToSearch;

  /// Kilo-Walk UI string — filesNoOpenFilesHint
  ///
  /// In en, this message translates to:
  /// **'No open files yet. Type to search.'**
  String get filesNoOpenFilesHint;

  /// Kilo-Walk UI string — filesNoContentMatches
  ///
  /// In en, this message translates to:
  /// **'No content matches found'**
  String get filesNoContentMatches;

  /// Kilo-Walk UI string — filesLinesSelectedCount
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 line selected} other{{count} lines selected}}'**
  String filesLinesSelectedCount(int count);

  /// Kilo-Walk UI string — filesDraftTooLargeToSave
  ///
  /// In en, this message translates to:
  /// **'Draft is too large to save from the editor.'**
  String get filesDraftTooLargeToSave;

  /// Kilo-Walk UI string — filesSaveChangesBeforeClose
  ///
  /// In en, this message translates to:
  /// **'Save changes before closing this file.'**
  String get filesSaveChangesBeforeClose;

  /// Kilo-Walk UI string — filesSaveChangesBeforePathChange
  ///
  /// In en, this message translates to:
  /// **'Save changes before changing this path.'**
  String get filesSaveChangesBeforePathChange;

  /// Kilo-Walk UI string — filesWaitForSaveBeforePathChange
  ///
  /// In en, this message translates to:
  /// **'Wait for the file save to finish before changing this path.'**
  String get filesWaitForSaveBeforePathChange;

  /// Kilo-Walk UI string — filesWaitForFileOperation
  ///
  /// In en, this message translates to:
  /// **'Wait for the file operation to finish.'**
  String get filesWaitForFileOperation;

  /// Kilo-Walk UI string — filesLargeFileReadOnly
  ///
  /// In en, this message translates to:
  /// **'Large files open read-only to keep editing responsive.'**
  String get filesLargeFileReadOnly;

  /// Kilo-Walk UI string — filesCheckingWriteSupport
  ///
  /// In en, this message translates to:
  /// **'Checking file write support...'**
  String get filesCheckingWriteSupport;

  /// Kilo-Walk UI string — filesActiveProjectRequired
  ///
  /// In en, this message translates to:
  /// **'File operations require an active project directory.'**
  String get filesActiveProjectRequired;

  /// Kilo-Walk UI string — filesReloadSkippedUnsavedChanges
  ///
  /// In en, this message translates to:
  /// **'Unsaved changes; reload skipped.'**
  String get filesReloadSkippedUnsavedChanges;

  /// Kilo-Walk UI string — filesFailedToLoadContent
  ///
  /// In en, this message translates to:
  /// **'Failed to load file content'**
  String get filesFailedToLoadContent;

  /// Kilo-Walk UI string — filesFileSaved
  ///
  /// In en, this message translates to:
  /// **'File saved.'**
  String get filesFileSaved;

  /// Kilo-Walk UI string — filesParentNotDirectory
  ///
  /// In en, this message translates to:
  /// **'Parent is not a directory.'**
  String get filesParentNotDirectory;

  /// Kilo-Walk UI string — filesMalformedResponse
  ///
  /// In en, this message translates to:
  /// **'File operation returned an invalid response.'**
  String get filesMalformedResponse;

  /// Kilo-Walk UI string — filesShellCommandDidNotComplete
  ///
  /// In en, this message translates to:
  /// **'File operation shell command did not complete.'**
  String get filesShellCommandDidNotComplete;

  /// Kilo-Walk UI string — filesShellCommandNoResult
  ///
  /// In en, this message translates to:
  /// **'File operation shell command returned no result.'**
  String get filesShellCommandNoResult;

  /// Kilo-Walk UI string — filesShellCommandTruncated
  ///
  /// In en, this message translates to:
  /// **'File operation shell command was truncated by the server.'**
  String get filesShellCommandTruncated;

  /// Kilo-Walk UI string — filesShellCommandSyntaxError
  ///
  /// In en, this message translates to:
  /// **'File operation shell command failed with a syntax error.'**
  String get filesShellCommandSyntaxError;

  /// Kilo-Walk UI string — filesShellUtilityNotFound
  ///
  /// In en, this message translates to:
  /// **'A required shell utility was not found.'**
  String get filesShellUtilityNotFound;

  /// Kilo-Walk UI string — filesShellCommandFailed
  ///
  /// In en, this message translates to:
  /// **'File operation shell command failed before returning a result.'**
  String get filesShellCommandFailed;

  /// Kilo-Walk UI string — attachmentSaveTitle
  ///
  /// In en, this message translates to:
  /// **'Save attachment'**
  String get attachmentSaveTitle;

  /// Kilo-Walk UI string — attachmentBrowserSandboxLocalFile
  ///
  /// In en, this message translates to:
  /// **'Browser sandbox prevents opening local file:// attachments directly.'**
  String get attachmentBrowserSandboxLocalFile;

  /// Kilo-Walk UI string — attachmentLocalPathBrowserBlocked
  ///
  /// In en, this message translates to:
  /// **'This attachment points to a local path that cannot be opened from the browser.'**
  String get attachmentLocalPathBrowserBlocked;

  /// Kilo-Walk UI string — terminalConnectedTo
  ///
  /// In en, this message translates to:
  /// **'Connected to {serverName} in {directory}'**
  String terminalConnectedTo(String directory, String serverName);

  /// Kilo-Walk UI string — terminalTransportUnavailable
  ///
  /// In en, this message translates to:
  /// **'Terminal transport is unavailable.'**
  String get terminalTransportUnavailable;

  /// Kilo-Walk UI string — chatSlashCommandNew
  ///
  /// In en, this message translates to:
  /// **'Create a new chat session'**
  String get chatSlashCommandNew;

  /// Kilo-Walk UI string — chatSlashCommandModels
  ///
  /// In en, this message translates to:
  /// **'Open model selector'**
  String get chatSlashCommandModels;

  /// Kilo-Walk UI string — chatSlashCommandSessions
  ///
  /// In en, this message translates to:
  /// **'Open conversations list'**
  String get chatSlashCommandSessions;

  /// Kilo-Walk UI string — chatSlashCommandAgent
  ///
  /// In en, this message translates to:
  /// **'Open agent selector'**
  String get chatSlashCommandAgent;

  /// Kilo-Walk UI string — chatSlashCommandOpen
  ///
  /// In en, this message translates to:
  /// **'File open quick action'**
  String get chatSlashCommandOpen;

  /// Kilo-Walk UI string — chatSlashCommandHelp
  ///
  /// In en, this message translates to:
  /// **'Show command help'**
  String get chatSlashCommandHelp;

  /// Kilo-Walk UI string — chatSlashCommandCompact
  ///
  /// In en, this message translates to:
  /// **'Compact current session context'**
  String get chatSlashCommandCompact;

  /// Kilo-Walk UI string — chatSlashCommandThinking
  ///
  /// In en, this message translates to:
  /// **'Toggle thinking bubbles'**
  String get chatSlashCommandThinking;

  /// Kilo-Walk UI string — chatSlashCommandUndo
  ///
  /// In en, this message translates to:
  /// **'Undo the last visible user turn'**
  String get chatSlashCommandUndo;

  /// Kilo-Walk UI string — chatSlashCommandRedo
  ///
  /// In en, this message translates to:
  /// **'Redo the last undone turn'**
  String get chatSlashCommandRedo;

  /// Kilo-Walk UI string — chatSessionSubConversationCount
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 sub-conversation} other{{count} sub-conversations}}'**
  String chatSessionSubConversationCount(int count);

  /// Kilo-Walk UI string — chatMessageWeeksAgo
  ///
  /// In en, this message translates to:
  /// **'{count}w ago'**
  String chatMessageWeeksAgo(int count);

  /// Kilo-Walk UI string — chatMessageShortDate
  ///
  /// In en, this message translates to:
  /// **'{month}/{day}'**
  String chatMessageShortDate(int day, int month);

  /// Kilo-Walk UI string — chatProviderErrorLoadSessionStatus
  ///
  /// In en, this message translates to:
  /// **'Failed to load session status'**
  String get chatProviderErrorLoadSessionStatus;

  /// Kilo-Walk UI string — chatProviderErrorLoadSessionDetails
  ///
  /// In en, this message translates to:
  /// **'Some session details could not be loaded'**
  String get chatProviderErrorLoadSessionDetails;

  /// Kilo-Walk UI string — chatProviderErrorLoadSessionList
  ///
  /// In en, this message translates to:
  /// **'Failed to load session list: {error}'**
  String chatProviderErrorLoadSessionList(String error);

  /// Kilo-Walk UI string — chatProviderErrorCreateSession
  ///
  /// In en, this message translates to:
  /// **'Failed to create session'**
  String get chatProviderErrorCreateSession;

  /// Kilo-Walk UI string — chatProviderErrorSelectProviderModelBeforeSend
  ///
  /// In en, this message translates to:
  /// **'Select a connected provider or free OpenCode model before sending'**
  String get chatProviderErrorSelectProviderModelBeforeSend;

  /// Kilo-Walk UI string — chatProviderErrorStartMessageSend
  ///
  /// In en, this message translates to:
  /// **'Failed to start message send'**
  String get chatProviderErrorStartMessageSend;

  /// Kilo-Walk UI string — chatProviderErrorStopUnavailable
  ///
  /// In en, this message translates to:
  /// **'Stop is unavailable for the current session'**
  String get chatProviderErrorStopUnavailable;

  /// Kilo-Walk UI string — chatProviderErrorWaitForResponseFinish
  ///
  /// In en, this message translates to:
  /// **'Wait for the current response to finish before compacting'**
  String get chatProviderErrorWaitForResponseFinish;

  /// Kilo-Walk UI string — chatProviderErrorCompactUnavailable
  ///
  /// In en, this message translates to:
  /// **'Compact context is unavailable for the current session'**
  String get chatProviderErrorCompactUnavailable;

  /// Kilo-Walk UI string — chatProviderErrorSelectModelBeforeCompact
  ///
  /// In en, this message translates to:
  /// **'Select a model before compacting context'**
  String get chatProviderErrorSelectModelBeforeCompact;

  /// Kilo-Walk UI string — chatProviderErrorCompactSessionContext
  ///
  /// In en, this message translates to:
  /// **'Failed to compact session context'**
  String get chatProviderErrorCompactSessionContext;

  /// Kilo-Walk UI string — chatProviderErrorNetwork
  ///
  /// In en, this message translates to:
  /// **'Network connection failed. Please check network settings'**
  String get chatProviderErrorNetwork;

  /// Kilo-Walk UI string — chatProviderErrorServer
  ///
  /// In en, this message translates to:
  /// **'Server error. Please try again later'**
  String get chatProviderErrorServer;

  /// Kilo-Walk UI string — chatProviderErrorNotFound
  ///
  /// In en, this message translates to:
  /// **'Resource not found'**
  String get chatProviderErrorNotFound;

  /// Kilo-Walk UI string — chatProviderErrorInvalidInput
  ///
  /// In en, this message translates to:
  /// **'Invalid input parameters'**
  String get chatProviderErrorInvalidInput;

  /// Kilo-Walk UI string — chatProviderErrorUnknown
  ///
  /// In en, this message translates to:
  /// **'Unknown error. Please try again later'**
  String get chatProviderErrorUnknown;

  /// Kilo-Walk UI string — chatProviderErrorSessionFallback
  ///
  /// In en, this message translates to:
  /// **'Session error'**
  String get chatProviderErrorSessionFallback;

  /// Kilo-Walk UI string — projectProviderErrorNoProjectContext
  ///
  /// In en, this message translates to:
  /// **'No project context available from server'**
  String get projectProviderErrorNoProjectContext;

  /// Kilo-Walk UI string — projectProviderErrorInitializeFailed
  ///
  /// In en, this message translates to:
  /// **'Failed to initialize project context: {error}'**
  String projectProviderErrorInitializeFailed(String error);

  /// Kilo-Walk UI string — projectProviderErrorSwitchProjectNotFound
  ///
  /// In en, this message translates to:
  /// **'Failed to switch project: project not found'**
  String get projectProviderErrorSwitchProjectNotFound;

  /// Kilo-Walk UI string — projectProviderErrorSwitchDirectoryEmpty
  ///
  /// In en, this message translates to:
  /// **'Failed to switch project: directory is empty'**
  String get projectProviderErrorSwitchDirectoryEmpty;

  /// Kilo-Walk UI string — projectProviderErrorAtLeastOneContext
  ///
  /// In en, this message translates to:
  /// **'At least one context must remain open'**
  String get projectProviderErrorAtLeastOneContext;

  /// Kilo-Walk UI string — projectProviderErrorReopenProjectNotFound
  ///
  /// In en, this message translates to:
  /// **'Failed to reopen project: project not found'**
  String get projectProviderErrorReopenProjectNotFound;

  /// Kilo-Walk UI string — projectProviderErrorOnlyClosedArchivable
  ///
  /// In en, this message translates to:
  /// **'Only closed projects can be archived'**
  String get projectProviderErrorOnlyClosedArchivable;

  /// Kilo-Walk UI string — projectProviderErrorArchiveProjectNotFound
  ///
  /// In en, this message translates to:
  /// **'Failed to archive project: project not found'**
  String get projectProviderErrorArchiveProjectNotFound;

  /// Kilo-Walk UI string — projectProviderErrorArchiveProjectPathInvalid
  ///
  /// In en, this message translates to:
  /// **'Failed to archive project: project path is invalid'**
  String get projectProviderErrorArchiveProjectPathInvalid;

  /// Kilo-Walk UI string — projectProviderErrorLoadWorkspaces
  ///
  /// In en, this message translates to:
  /// **'Failed to load workspaces: {error}'**
  String projectProviderErrorLoadWorkspaces(String error);

  /// Kilo-Walk UI string — projectProviderErrorWorkspaceNameEmpty
  ///
  /// In en, this message translates to:
  /// **'Workspace name cannot be empty'**
  String get projectProviderErrorWorkspaceNameEmpty;

  /// Kilo-Walk UI string — projectProviderErrorCreateWorkspace
  ///
  /// In en, this message translates to:
  /// **'Failed to create workspace: {error}'**
  String projectProviderErrorCreateWorkspace(String error);

  /// Kilo-Walk UI string — projectProviderErrorResetWorkspace
  ///
  /// In en, this message translates to:
  /// **'Failed to reset workspace: {error}'**
  String projectProviderErrorResetWorkspace(String error);

  /// Kilo-Walk UI string — projectProviderErrorDeleteWorkspace
  ///
  /// In en, this message translates to:
  /// **'Failed to delete workspace: {error}'**
  String projectProviderErrorDeleteWorkspace(String error);

  /// Kilo-Walk UI string — projectProviderErrorDirectoryEmpty
  ///
  /// In en, this message translates to:
  /// **'Directory cannot be empty'**
  String get projectProviderErrorDirectoryEmpty;

  /// Kilo-Walk UI string — projectProviderErrorListDirectories
  ///
  /// In en, this message translates to:
  /// **'Failed to list directories: {error}'**
  String projectProviderErrorListDirectories(String error);

  /// Kilo-Walk UI string — projectProviderErrorValidateDirectory
  ///
  /// In en, this message translates to:
  /// **'Failed to validate directory: {error}'**
  String projectProviderErrorValidateDirectory(String error);

  /// Kilo-Walk UI string — projectProviderErrorPathEmpty
  ///
  /// In en, this message translates to:
  /// **'Path cannot be empty'**
  String get projectProviderErrorPathEmpty;

  /// Kilo-Walk UI string — projectProviderErrorListFiles
  ///
  /// In en, this message translates to:
  /// **'Failed to list files: {error}'**
  String projectProviderErrorListFiles(String error);

  /// Kilo-Walk UI string — projectProviderErrorSearchFiles
  ///
  /// In en, this message translates to:
  /// **'Failed to search files: {error}'**
  String projectProviderErrorSearchFiles(String error);

  /// Kilo-Walk UI string — projectProviderErrorContentSearchUnavailable
  ///
  /// In en, this message translates to:
  /// **'Content search not available: {error}'**
  String projectProviderErrorContentSearchUnavailable(String error);

  /// Kilo-Walk UI string — projectProviderErrorSearchSymbols
  ///
  /// In en, this message translates to:
  /// **'Failed to search symbols: {error}'**
  String projectProviderErrorSearchSymbols(String error);

  /// Kilo-Walk UI string — projectProviderErrorReadFile
  ///
  /// In en, this message translates to:
  /// **'Failed to read file: {error}'**
  String projectProviderErrorReadFile(String error);

  /// Kilo-Walk UI string — projectProviderErrorLoadProjectList
  ///
  /// In en, this message translates to:
  /// **'Failed to load project list: {error}'**
  String projectProviderErrorLoadProjectList(String error);

  /// Kilo-Walk UI string — workspaceProjectRemovedFromHistory
  ///
  /// In en, this message translates to:
  /// **'Project removed from history'**
  String get workspaceProjectRemovedFromHistory;

  /// Kilo-Walk UI string — workspaceProjectContextOpened
  ///
  /// In en, this message translates to:
  /// **'Project context opened: {directory}'**
  String workspaceProjectContextOpened(String directory);

  /// Kilo-Walk UI string — workspaceFailedToOpenProjectContext
  ///
  /// In en, this message translates to:
  /// **'Failed to open project context: {directory}'**
  String workspaceFailedToOpenProjectContext(String directory);

  /// Kilo-Walk UI string — chatAbortNotice
  ///
  /// In en, this message translates to:
  /// **'What you want to do different?'**
  String get chatAbortNotice;

  /// Kilo-Walk UI string — sessionTitleToday
  ///
  /// In en, this message translates to:
  /// **'Today {time} ({date})'**
  String sessionTitleToday(String date, String time);

  /// Kilo-Walk UI string — sessionTitleYesterday
  ///
  /// In en, this message translates to:
  /// **'Yesterday {time} ({date})'**
  String sessionTitleYesterday(String date, String time);

  /// Kilo-Walk UI string — sessionTitleWeekday
  ///
  /// In en, this message translates to:
  /// **'{weekday} {time} ({date})'**
  String sessionTitleWeekday(String date, String time, String weekday);

  /// Kilo-Walk UI string — sessionTitleDateAndTime
  ///
  /// In en, this message translates to:
  /// **'{date} {time}'**
  String sessionTitleDateAndTime(String date, String time);

  /// Kilo-Walk UI string — sessionWeekdayMon
  ///
  /// In en, this message translates to:
  /// **'Mon'**
  String get sessionWeekdayMon;

  /// Kilo-Walk UI string — sessionWeekdayTue
  ///
  /// In en, this message translates to:
  /// **'Tue'**
  String get sessionWeekdayTue;

  /// Kilo-Walk UI string — sessionWeekdayWed
  ///
  /// In en, this message translates to:
  /// **'Wed'**
  String get sessionWeekdayWed;

  /// Kilo-Walk UI string — sessionWeekdayThu
  ///
  /// In en, this message translates to:
  /// **'Thu'**
  String get sessionWeekdayThu;

  /// Kilo-Walk UI string — sessionWeekdayFri
  ///
  /// In en, this message translates to:
  /// **'Fri'**
  String get sessionWeekdayFri;

  /// Kilo-Walk UI string — sessionWeekdaySat
  ///
  /// In en, this message translates to:
  /// **'Sat'**
  String get sessionWeekdaySat;

  /// Kilo-Walk UI string — sessionWeekdaySun
  ///
  /// In en, this message translates to:
  /// **'Sun'**
  String get sessionWeekdaySun;

  /// Kilo-Walk UI string — forwardTimeNow
  ///
  /// In en, this message translates to:
  /// **'now'**
  String get forwardTimeNow;

  /// Kilo-Walk UI string — forwardTimeMinutes
  ///
  /// In en, this message translates to:
  /// **'{count}m'**
  String forwardTimeMinutes(int count);

  /// Kilo-Walk UI string — forwardTimeHours
  ///
  /// In en, this message translates to:
  /// **'{count}h'**
  String forwardTimeHours(int count);

  /// Kilo-Walk UI string — forwardTimeDays
  ///
  /// In en, this message translates to:
  /// **'{count}d'**
  String forwardTimeDays(int count);

  /// Kilo-Walk UI string — forwardTimeWeeks
  ///
  /// In en, this message translates to:
  /// **'{count}w'**
  String forwardTimeWeeks(int count);

  /// Kilo-Walk UI string — settingsBehaviorConfigFieldDefaultModel
  ///
  /// In en, this message translates to:
  /// **'default model'**
  String get settingsBehaviorConfigFieldDefaultModel;

  /// Kilo-Walk UI string — settingsBehaviorConfigFieldDefaultAgent
  ///
  /// In en, this message translates to:
  /// **'default agent'**
  String get settingsBehaviorConfigFieldDefaultAgent;

  /// Kilo-Walk UI string — settingsBehaviorConfigFieldSmallModel
  ///
  /// In en, this message translates to:
  /// **'small model'**
  String get settingsBehaviorConfigFieldSmallModel;

  /// Kilo-Walk UI string — settingsBehaviorConfigFieldAutoUpdateMode
  ///
  /// In en, this message translates to:
  /// **'auto-update mode'**
  String get settingsBehaviorConfigFieldAutoUpdateMode;

  /// Kilo-Walk UI string — settingsBehaviorConfigFieldSnapshotSetting
  ///
  /// In en, this message translates to:
  /// **'snapshot setting'**
  String get settingsBehaviorConfigFieldSnapshotSetting;

  /// Kilo-Walk UI string — settingsBehaviorConfigFieldConversationUsername
  ///
  /// In en, this message translates to:
  /// **'conversation username'**
  String get settingsBehaviorConfigFieldConversationUsername;

  /// Kilo-Walk UI string — settingsBehaviorConfigFieldSharingDefault
  ///
  /// In en, this message translates to:
  /// **'sharing default'**
  String get settingsBehaviorConfigFieldSharingDefault;

  /// Kilo-Walk UI string — speechMicNoInputDevice
  ///
  /// In en, this message translates to:
  /// **'No microphone input device is available.'**
  String get speechMicNoInputDevice;

  /// Kilo-Walk UI string — speechLinuxAudioServerUnavailable
  ///
  /// In en, this message translates to:
  /// **'A microphone tool was found, but the Linux audio server could not be reached. Make sure PipeWire or PulseAudio is running.'**
  String get speechLinuxAudioServerUnavailable;

  /// Kilo-Walk UI string — speechLinuxMicBackendMissing
  ///
  /// In en, this message translates to:
  /// **'No microphone recording tool was found on this system. Install PulseAudio tools (parecord), PipeWire tools (pw-record) or ALSA utilities (arecord), then try again.'**
  String get speechLinuxMicBackendMissing;

  /// Kilo-Walk UI string — speechMicDeviceBusy
  ///
  /// In en, this message translates to:
  /// **'The default microphone is currently in use by another app.'**
  String get speechMicDeviceBusy;

  /// Kilo-Walk UI string — speechMicUnsupportedFormat
  ///
  /// In en, this message translates to:
  /// **'The default microphone format is not supported.'**
  String get speechMicUnsupportedFormat;

  /// Kilo-Walk UI string — speechMicSpeechPrivacy
  ///
  /// In en, this message translates to:
  /// **'Windows speech services may be disabled (speech privacy, online speech recognition, or language packs).'**
  String get speechMicSpeechPrivacy;

  /// Kilo-Walk UI string — speechMicBackendUnavailable
  ///
  /// In en, this message translates to:
  /// **'The Windows microphone backend is not available in this build.'**
  String get speechMicBackendUnavailable;

  /// Kilo-Walk UI string — speechEngineFallbackNotice
  ///
  /// In en, this message translates to:
  /// **'Selected STT engine unavailable ({reason}). Using {fallback} instead.'**
  String speechEngineFallbackNotice(String fallback, String reason);

  /// Kilo-Walk UI string — oauthFlowSecureStorageUnavailable
  ///
  /// In en, this message translates to:
  /// **'Secure credential storage is unavailable for OAuth.'**
  String get oauthFlowSecureStorageUnavailable;

  /// Kilo-Walk UI string — oauthFlowUnexpectedError
  ///
  /// In en, this message translates to:
  /// **'OAuth flow failed unexpectedly. Please try again.'**
  String get oauthFlowUnexpectedError;

  /// Kilo-Walk UI string — oauthFlowNoEndpointsDiscovered
  ///
  /// In en, this message translates to:
  /// **'No OAuth endpoints discovered. Enable Managed OAuth in Cloudflare Dashboard → Access → Applications → [this app].'**
  String get oauthFlowNoEndpointsDiscovered;

  /// Kilo-Walk UI string — oauthFlowTokenResponseMissingAccessToken
  ///
  /// In en, this message translates to:
  /// **'OAuth token response did not include an access token.'**
  String get oauthFlowTokenResponseMissingAccessToken;

  /// Kilo-Walk UI string — oauthFlowProfileChanged
  ///
  /// In en, this message translates to:
  /// **'The server profile changed before OAuth could finish.'**
  String get oauthFlowProfileChanged;

  /// Kilo-Walk UI string — oauthFlowMetadataMissingEndpoints
  ///
  /// In en, this message translates to:
  /// **'OAuth metadata is missing authorization/token endpoints.'**
  String get oauthFlowMetadataMissingEndpoints;

  /// Kilo-Walk UI string — oauthFlowCallbackNotCompleted
  ///
  /// In en, this message translates to:
  /// **'Authorization callback was not completed'**
  String get oauthFlowCallbackNotCompleted;

  /// Kilo-Walk UI string — oauthFlowProviderDeclined
  ///
  /// In en, this message translates to:
  /// **'The authorization server declined the OAuth request. Please try again.'**
  String get oauthFlowProviderDeclined;

  /// Kilo-Walk UI string — oauthFlowCallbackValidationFailed
  ///
  /// In en, this message translates to:
  /// **'OAuth callback validation failed. Please try again.'**
  String get oauthFlowCallbackValidationFailed;

  /// Kilo-Walk UI string — oauthFlowCallbackServerStartFailed
  ///
  /// In en, this message translates to:
  /// **'Local OAuth callback server failed to start.'**
  String get oauthFlowCallbackServerStartFailed;

  /// Kilo-Walk UI string — oauthFlowSignInCanceled
  ///
  /// In en, this message translates to:
  /// **'OAuth sign-in was canceled.'**
  String get oauthFlowSignInCanceled;

  /// Kilo-Walk UI string — oauthFlowBrowserOpenFailed
  ///
  /// In en, this message translates to:
  /// **'Could not open the system browser for OAuth sign-in.'**
  String get oauthFlowBrowserOpenFailed;

  /// Kilo-Walk UI string — oauthFlowCallbackTimeout
  ///
  /// In en, this message translates to:
  /// **'No authorization callback reached the app within 5 minutes. The browser was expected to redirect to the local callback address after consent. If the browser showed a connection error instead, this device or network blocks loopback redirects.'**
  String get oauthFlowCallbackTimeout;

  /// Kilo-Walk UI string — oauthFlowTokenExchangeTransientFailure
  ///
  /// In en, this message translates to:
  /// **'Token exchange failed after {maxAttempts} attempts because of a temporary network problem. Please try again.'**
  String oauthFlowTokenExchangeTransientFailure(int maxAttempts);

  /// Kilo-Walk UI string — oauthFlowTokenExchangeHttpFailure
  ///
  /// In en, this message translates to:
  /// **'Token exchange failed (HTTP {statusCode}). Please try again.'**
  String oauthFlowTokenExchangeHttpFailure(int statusCode);

  /// Kilo-Walk UI string — oauthFlowTokenExchangeUnexpectedFailure
  ///
  /// In en, this message translates to:
  /// **'Token exchange failed unexpectedly. Please try again.'**
  String get oauthFlowTokenExchangeUnexpectedFailure;

  /// Kilo-Walk UI string — oauthFlowTokenExchangeIncomplete
  ///
  /// In en, this message translates to:
  /// **'Token exchange did not complete after the authorization code was sent. Please start OAuth sign-in again.'**
  String get oauthFlowTokenExchangeIncomplete;

  /// Kilo-Walk UI string — speechReadAloudFailed
  ///
  /// In en, this message translates to:
  /// **'Text-to-speech failed.'**
  String get speechReadAloudFailed;

  /// Kilo-Walk UI string — speechReadAloudNoText
  ///
  /// In en, this message translates to:
  /// **'There is no text to read aloud.'**
  String get speechReadAloudNoText;

  /// Kilo-Walk UI string — speechEdgeTextTooLong
  ///
  /// In en, this message translates to:
  /// **'Microsoft Edge Speech can read up to 4096 bytes at a time.'**
  String get speechEdgeTextTooLong;

  /// Kilo-Walk UI string — speechEdgeMalformedAudio
  ///
  /// In en, this message translates to:
  /// **'Microsoft Edge Speech returned malformed audio data.'**
  String get speechEdgeMalformedAudio;

  /// Kilo-Walk UI string — speechEdgeUnsupportedAudio
  ///
  /// In en, this message translates to:
  /// **'Microsoft Edge Speech returned unsupported audio data.'**
  String get speechEdgeUnsupportedAudio;

  /// Kilo-Walk UI string — speechEdgeUnsupportedFrame
  ///
  /// In en, this message translates to:
  /// **'Microsoft Edge Speech returned an unsupported websocket frame.'**
  String get speechEdgeUnsupportedFrame;

  /// Kilo-Walk UI string — speechEdgeSynthesisInterrupted
  ///
  /// In en, this message translates to:
  /// **'Microsoft Edge Speech ended before synthesis completed.'**
  String get speechEdgeSynthesisInterrupted;

  /// Kilo-Walk UI string — speechEdgeEmptyAudio
  ///
  /// In en, this message translates to:
  /// **'Microsoft Edge Speech returned an empty audio response.'**
  String get speechEdgeEmptyAudio;

  /// Kilo-Walk UI string — speechEdgeTimedOut
  ///
  /// In en, this message translates to:
  /// **'Microsoft Edge Speech timed out.'**
  String get speechEdgeTimedOut;

  /// Kilo-Walk UI string — speechEdgeUnreachable
  ///
  /// In en, this message translates to:
  /// **'Microsoft Edge Speech could not be reached.'**
  String get speechEdgeUnreachable;

  /// Kilo-Walk UI string — speechApiKeyMissing
  ///
  /// In en, this message translates to:
  /// **'Add an API key in Settings > Speech to use this TTS provider.'**
  String get speechApiKeyMissing;

  /// Kilo-Walk UI string — speechProviderEmptyAudio
  ///
  /// In en, this message translates to:
  /// **'The TTS provider returned an empty audio response.'**
  String get speechProviderEmptyAudio;

  /// Kilo-Walk UI string — speechProviderRequestRejected
  ///
  /// In en, this message translates to:
  /// **'The TTS provider rejected the speech request.'**
  String get speechProviderRequestRejected;

  /// Kilo-Walk UI string — speechApiKeyRejected
  ///
  /// In en, this message translates to:
  /// **'The TTS API key was rejected by the provider.'**
  String get speechApiKeyRejected;

  /// Kilo-Walk UI string — speechProviderQuotaRateLimit
  ///
  /// In en, this message translates to:
  /// **'The TTS provider reported a quota or rate limit.'**
  String get speechProviderQuotaRateLimit;

  /// Kilo-Walk UI string — speechReadAloudNoVoice
  ///
  /// In en, this message translates to:
  /// **'Select a voice for this TTS provider.'**
  String get speechReadAloudNoVoice;

  /// Kilo-Walk UI string — speechProviderTextTooLong
  ///
  /// In en, this message translates to:
  /// **'The text is too long for this TTS model.'**
  String get speechProviderTextTooLong;

  /// Kilo-Walk UI string — speechProviderInvalidAudio
  ///
  /// In en, this message translates to:
  /// **'The TTS provider returned unrecognized audio.'**
  String get speechProviderInvalidAudio;

  /// Kilo-Walk UI string — speechNimBaseUrlRequired
  ///
  /// In en, this message translates to:
  /// **'Enter the NVIDIA NIM deployment base URL in Settings > Speech.'**
  String get speechNimBaseUrlRequired;

  /// Kilo-Walk UI string — speechProviderTemporarilyUnavailable
  ///
  /// In en, this message translates to:
  /// **'The TTS provider is temporarily unavailable.'**
  String get speechProviderTemporarilyUnavailable;

  /// Kilo-Walk UI string — speechProviderUnreachable
  ///
  /// In en, this message translates to:
  /// **'The TTS provider could not be reached.'**
  String get speechProviderUnreachable;

  /// Kilo-Walk UI string — appProviderErrorFailedToStartProcess
  ///
  /// In en, this message translates to:
  /// **'Failed to start {tool} process.'**
  String appProviderErrorFailedToStartProcess(String tool);

  /// Kilo-Walk UI string — appProviderErrorToolNotAvailable
  ///
  /// In en, this message translates to:
  /// **'{tool} is not available. Install {runtime} first.'**
  String appProviderErrorToolNotAvailable(String runtime, String tool);

  /// Kilo-Walk UI string — appProviderErrorToolInstallFailed
  ///
  /// In en, this message translates to:
  /// **'{tool} install failed with exit code {exitCode}.'**
  String appProviderErrorToolInstallFailed(int exitCode, String tool);

  /// Kilo-Walk UI string — appProviderErrorBunBootstrapFailed
  ///
  /// In en, this message translates to:
  /// **'Bun bootstrap failed with exit code {exitCode}.'**
  String appProviderErrorBunBootstrapFailed(int exitCode);

  /// Kilo-Walk UI string — appProviderErrorInstalledButNotFoundInPath
  ///
  /// In en, this message translates to:
  /// **'OpenCode installation finished but command was not found in PATH.'**
  String get appProviderErrorInstalledButNotFoundInPath;

  /// Kilo-Walk UI string — appProviderErrorInstalledButPathNotResolved
  ///
  /// In en, this message translates to:
  /// **'OpenCode installation finished but command path could not be resolved.'**
  String get appProviderErrorInstalledButPathNotResolved;

  /// Kilo-Walk UI string — appProviderErrorConfiguredCommandNotFound
  ///
  /// In en, this message translates to:
  /// **'Configured command was not found and {tool} is not in PATH.'**
  String appProviderErrorConfiguredCommandNotFound(String tool);

  /// Kilo-Walk UI string — appProviderErrorConfiguredCommandPathMissing
  ///
  /// In en, this message translates to:
  /// **'Configured command path does not exist.'**
  String get appProviderErrorConfiguredCommandPathMissing;

  /// Kilo-Walk UI string — appProviderErrorConfiguredCommandVersionCheckFailed
  ///
  /// In en, this message translates to:
  /// **'Configured command exists but version check failed.'**
  String get appProviderErrorConfiguredCommandVersionCheckFailed;

  /// Kilo-Walk UI string — appProviderErrorConfiguredCommandExecutionFailed
  ///
  /// In en, this message translates to:
  /// **'Configured command could not be executed.'**
  String get appProviderErrorConfiguredCommandExecutionFailed;

  /// Kilo-Walk UI string — appProviderWslCheckWindowsOnly
  ///
  /// In en, this message translates to:
  /// **'WSL check only applies to Windows.'**
  String get appProviderWslCheckWindowsOnly;

  /// Kilo-Walk UI string — appProviderDesktopBuildRequired
  ///
  /// In en, this message translates to:
  /// **'Use a desktop build to configure a managed local server.'**
  String get appProviderDesktopBuildRequired;

  /// Kilo-Walk UI string — appProviderKnownInstallationDirectoryDetected
  ///
  /// In en, this message translates to:
  /// **'Detected from a known installation directory.'**
  String get appProviderKnownInstallationDirectoryDetected;

  /// Kilo-Walk UI string — appProviderKnownInstallationPathRefreshHint
  ///
  /// In en, this message translates to:
  /// **'Detected from a known installation directory. PATH may need refresh; reopen {appName} if a recent install is not detected yet.'**
  String appProviderKnownInstallationPathRefreshHint(String appName);

  /// Kilo-Walk UI string — appProviderErrorReleaseMetadataFetchFailed
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch latest release metadata from GitHub.'**
  String get appProviderErrorReleaseMetadataFetchFailed;

  /// Kilo-Walk UI string — appProviderErrorReleaseAssetListMissing
  ///
  /// In en, this message translates to:
  /// **'Latest release metadata did not include asset list.'**
  String get appProviderErrorReleaseAssetListMissing;

  /// Kilo-Walk UI string — appProviderErrorNoCompatibleAsset
  ///
  /// In en, this message translates to:
  /// **'No compatible OpenCode binary asset was found.'**
  String get appProviderErrorNoCompatibleAsset;

  /// Kilo-Walk UI string — appProviderErrorDownloadAssetFailed
  ///
  /// In en, this message translates to:
  /// **'Failed to download selected OpenCode asset.'**
  String get appProviderErrorDownloadAssetFailed;

  /// Kilo-Walk UI string — appProviderErrorChecksumVerificationFailed
  ///
  /// In en, this message translates to:
  /// **'Checksum verification failed for downloaded asset.'**
  String get appProviderErrorChecksumVerificationFailed;

  /// Kilo-Walk UI string — appProviderErrorExtractArchiveFailed
  ///
  /// In en, this message translates to:
  /// **'Failed to extract OpenCode binary archive.'**
  String get appProviderErrorExtractArchiveFailed;

  /// Kilo-Walk UI string — appProviderErrorExecutableNotFound
  ///
  /// In en, this message translates to:
  /// **'Could not find {tool} executable in extracted files.'**
  String appProviderErrorExecutableNotFound(String tool);

  /// Kilo-Walk UI string — chatNoResponseFromServer
  ///
  /// In en, this message translates to:
  /// **'No response from server. Please try again.'**
  String get chatNoResponseFromServer;

  /// Kilo-Walk UI string — chatNoResponseFromModel
  ///
  /// In en, this message translates to:
  /// **'No response from model. Please try again.'**
  String get chatNoResponseFromModel;

  /// Kilo-Walk UI string — speechJobCancelled
  ///
  /// In en, this message translates to:
  /// **'Speech job was cancelled.'**
  String get speechJobCancelled;

  /// Kilo-Walk UI string — speechEdgeCancelled
  ///
  /// In en, this message translates to:
  /// **'Microsoft Edge Speech was cancelled.'**
  String get speechEdgeCancelled;

  /// Kilo-Walk UI string — sessionAttentionKindActive
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get sessionAttentionKindActive;

  /// Kilo-Walk UI string — sessionAttentionKindReceiving
  ///
  /// In en, this message translates to:
  /// **'Receiving'**
  String get sessionAttentionKindReceiving;

  /// Kilo-Walk UI string — sessionAttentionKindDelayed
  ///
  /// In en, this message translates to:
  /// **'Delayed'**
  String get sessionAttentionKindDelayed;

  /// Kilo-Walk UI string — sessionAttentionKindCompleted
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get sessionAttentionKindCompleted;

  /// Kilo-Walk UI string — sessionAttentionKindPendingInteraction
  ///
  /// In en, this message translates to:
  /// **'Pending interaction'**
  String get sessionAttentionKindPendingInteraction;

  /// Kilo-Walk UI string — sessionAttentionKindError
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get sessionAttentionKindError;

  /// Kilo-Walk UI string — sessionAttentionPauseCellularDataSaver
  ///
  /// In en, this message translates to:
  /// **'Cellular data saver is active'**
  String get sessionAttentionPauseCellularDataSaver;

  /// Kilo-Walk UI string — sessionAttentionPauseOauthReopenRequired
  ///
  /// In en, this message translates to:
  /// **'OAuth sign-in required'**
  String get sessionAttentionPauseOauthReopenRequired;

  /// Kilo-Walk UI string — sessionAttentionPauseTailscaleReopenRequired
  ///
  /// In en, this message translates to:
  /// **'Tailscale connection required'**
  String get sessionAttentionPauseTailscaleReopenRequired;

  /// Kilo-Walk UI string — sessionAttentionPauseOffline
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get sessionAttentionPauseOffline;

  /// Kilo-Walk UI string — sessionAttentionPausePermissionRevoked
  ///
  /// In en, this message translates to:
  /// **'Permission revoked'**
  String get sessionAttentionPausePermissionRevoked;

  /// Kilo-Walk UI string — sessionAttentionPauseServiceStopped
  ///
  /// In en, this message translates to:
  /// **'Service stopped'**
  String get sessionAttentionPauseServiceStopped;

  /// Kilo-Walk UI string — sessionAttentionPauseHostUnavailable
  ///
  /// In en, this message translates to:
  /// **'Host unavailable'**
  String get sessionAttentionPauseHostUnavailable;

  /// Kilo-Walk UI string — errorRequestCancelled
  ///
  /// In en, this message translates to:
  /// **'Request cancelled'**
  String get errorRequestCancelled;

  /// Kilo-Walk UI string — errorUnknownNetworkError
  ///
  /// In en, this message translates to:
  /// **'Unknown network error: {error}'**
  String errorUnknownNetworkError(String error);

  /// Kilo-Walk UI string — errorCertificateError
  ///
  /// In en, this message translates to:
  /// **'Certificate error'**
  String get errorCertificateError;

  /// Kilo-Walk UI string — errorSessionBusy
  ///
  /// In en, this message translates to:
  /// **'Session is busy processing another request.'**
  String get errorSessionBusy;

  /// Kilo-Walk UI string — errorRunShellCommandFailed
  ///
  /// In en, this message translates to:
  /// **'Failed to run shell command'**
  String get errorRunShellCommandFailed;

  /// Kilo-Walk UI string — errorRunSlashCommandFailed
  ///
  /// In en, this message translates to:
  /// **'Failed to run slash command'**
  String get errorRunSlashCommandFailed;

  /// Kilo-Walk UI string — settingsBehaviorOpenCodeDefaultsLoadError
  ///
  /// In en, this message translates to:
  /// **'Could not load OpenCode-backed defaults from the active server.'**
  String get settingsBehaviorOpenCodeDefaultsLoadError;

  /// Kilo-Walk UI string — sessionTabIconRemoveFailed
  ///
  /// In en, this message translates to:
  /// **'Failed to remove local session tab icon data'**
  String get sessionTabIconRemoveFailed;

  /// Kilo-Walk UI string — forwardUntitled
  ///
  /// In en, this message translates to:
  /// **'Untitled'**
  String get forwardUntitled;

  /// Kilo-Walk UI string — setupDebugLinuxLogsPath
  ///
  /// In en, this message translates to:
  /// **'Linux logs: {path}'**
  String setupDebugLinuxLogsPath(String path);

  /// Kilo-Walk UI string — setupDebugRunOpenCodeCommand
  ///
  /// In en, this message translates to:
  /// **'Run OpenCode with: {command}'**
  String setupDebugRunOpenCodeCommand(String command);

  /// Kilo-Walk UI string — setupDebugServerHealthEndpoint
  ///
  /// In en, this message translates to:
  /// **'Server health: {endpoint}'**
  String setupDebugServerHealthEndpoint(String endpoint);

  /// Kilo-Walk UI string — setupDebugServerDocsEndpoint
  ///
  /// In en, this message translates to:
  /// **'Server docs: {endpoint}'**
  String setupDebugServerDocsEndpoint(String endpoint);

  /// Kilo-Walk UI string — logsEntryError
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get logsEntryError;

  /// Kilo-Walk UI string — logsEntryStack
  ///
  /// In en, this message translates to:
  /// **'Stack'**
  String get logsEntryStack;

  /// Kilo-Walk UI string — setupDebugSourceDiagnostics
  ///
  /// In en, this message translates to:
  /// **'Diagnostics'**
  String get setupDebugSourceDiagnostics;

  /// Kilo-Walk UI string — setupDebugSourceUseExisting
  ///
  /// In en, this message translates to:
  /// **'Use Existing'**
  String get setupDebugSourceUseExisting;

  /// Kilo-Walk UI string — setupDebugSourceLocalServer
  ///
  /// In en, this message translates to:
  /// **'Local Server'**
  String get setupDebugSourceLocalServer;

  /// Kilo-Walk UI string — setupDebugSourceOnboarding
  ///
  /// In en, this message translates to:
  /// **'Onboarding'**
  String get setupDebugSourceOnboarding;

  /// Kilo-Walk UI string — setupDebugSourceManualConnection
  ///
  /// In en, this message translates to:
  /// **'Manual connection'**
  String get setupDebugSourceManualConnection;

  /// Kilo-Walk UI string — setupDebugMessageDiagnosticsResult
  ///
  /// In en, this message translates to:
  /// **'{availability} on {platform}. {recommendation}'**
  String setupDebugMessageDiagnosticsResult(
    String availability,
    String platform,
    String recommendation,
  );

  /// Kilo-Walk UI string — setupDebugMessageDetectAttempt
  ///
  /// In en, this message translates to:
  /// **'Trying to detect an existing OpenCode command from the current environment.'**
  String get setupDebugMessageDetectAttempt;

  /// Kilo-Walk UI string — setupDebugMessageInstallStarted
  ///
  /// In en, this message translates to:
  /// **'Started OpenCode installation from Kilo-Walk.'**
  String get setupDebugMessageInstallStarted;

  /// Kilo-Walk UI string — setupDebugMessageStartLocalServer
  ///
  /// In en, this message translates to:
  /// **'Starting managed OpenCode server at {url}.'**
  String setupDebugMessageStartLocalServer(String url);

  /// Kilo-Walk UI string — setupDebugMessageHealthyRunning
  ///
  /// In en, this message translates to:
  /// **'Managed OpenCode server is healthy and running at {url}.'**
  String setupDebugMessageHealthyRunning(String url);

  /// Kilo-Walk UI string — setupDebugMessageStoppingLocalServer
  ///
  /// In en, this message translates to:
  /// **'Stopping managed OpenCode server.'**
  String get setupDebugMessageStoppingLocalServer;

  /// Kilo-Walk UI string — setupDebugMessageStoppedCleanly
  ///
  /// In en, this message translates to:
  /// **'Managed OpenCode server stopped cleanly.'**
  String get setupDebugMessageStoppedCleanly;

  /// Kilo-Walk UI string — setupDebugMessageExitedAfterRequestedStop
  ///
  /// In en, this message translates to:
  /// **'Managed OpenCode server exited after a requested stop.'**
  String get setupDebugMessageExitedAfterRequestedStop;

  /// Kilo-Walk UI string — setupDebugMessageOnboardingConnectExisting
  ///
  /// In en, this message translates to:
  /// **'User chose to connect to an existing OpenCode server.'**
  String get setupDebugMessageOnboardingConnectExisting;

  /// Kilo-Walk UI string — setupDebugMessageOnboardingGuidedPath
  ///
  /// In en, this message translates to:
  /// **'User opened the guided OpenCode setup path.'**
  String get setupDebugMessageOnboardingGuidedPath;

  /// Kilo-Walk UI string — setupDebugMessageOnboardingManagedLocal
  ///
  /// In en, this message translates to:
  /// **'User opened managed local OpenCode setup.'**
  String get setupDebugMessageOnboardingManagedLocal;

  /// Kilo-Walk UI string — setupDebugMessageOnboardingOpenedServerSettings
  ///
  /// In en, this message translates to:
  /// **'User opened server settings after a failed health check.'**
  String get setupDebugMessageOnboardingOpenedServerSettings;

  /// Kilo-Walk UI string — setupDebugMessageOnboardingAddAnotherServer
  ///
  /// In en, this message translates to:
  /// **'User chose to add another server after a failed health check.'**
  String get setupDebugMessageOnboardingAddAnotherServer;

  /// Kilo-Walk UI string — setupDebugMessageTestingServerUrl
  ///
  /// In en, this message translates to:
  /// **'Testing OpenCode server URL {url} from onboarding.'**
  String setupDebugMessageTestingServerUrl(String url);

  /// Kilo-Walk UI string — chatProviderErrorSessionNotFound
  ///
  /// In en, this message translates to:
  /// **'Session not found'**
  String get chatProviderErrorSessionNotFound;

  /// Kilo-Walk UI string — chatProviderErrorInvalidMessageFormat
  ///
  /// In en, this message translates to:
  /// **'Invalid message format'**
  String get chatProviderErrorInvalidMessageFormat;

  /// Kilo-Walk UI string — chatProviderErrorNetworkShort
  ///
  /// In en, this message translates to:
  /// **'Network connection failed'**
  String get chatProviderErrorNetworkShort;

  /// Kilo-Walk UI string — chatProviderErrorUnknownShort
  ///
  /// In en, this message translates to:
  /// **'Unknown error'**
  String get chatProviderErrorUnknownShort;

  /// Kilo-Walk UI string — terminalCreateFailed
  ///
  /// In en, this message translates to:
  /// **'Failed to create terminal session'**
  String get terminalCreateFailed;

  /// Kilo-Walk UI string — terminalEndpointUnavailable
  ///
  /// In en, this message translates to:
  /// **'Terminal endpoint is not available'**
  String get terminalEndpointUnavailable;

  /// Kilo-Walk UI string — terminalInvalidDirectory
  ///
  /// In en, this message translates to:
  /// **'Invalid terminal directory'**
  String get terminalInvalidDirectory;

  /// Kilo-Walk UI string — terminalWebsocketUnavailable
  ///
  /// In en, this message translates to:
  /// **'Terminal websocket is not available here.'**
  String get terminalWebsocketUnavailable;

  /// Kilo-Walk UI string — chatMessageToolChainCallsCompact
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 call} other{{count} calls}}'**
  String chatMessageToolChainCallsCompact(int count);

  /// Kilo-Walk UI string — errorConnectionTimeout
  ///
  /// In en, this message translates to:
  /// **'Connection timeout'**
  String get errorConnectionTimeout;

  /// Kilo-Walk UI string — errorClientError
  ///
  /// In en, this message translates to:
  /// **'Client error'**
  String get errorClientError;

  /// Kilo-Walk UI string — chatProviderErrorSendMessage
  ///
  /// In en, this message translates to:
  /// **'Failed to send message'**
  String get chatProviderErrorSendMessage;

  /// Kilo-Walk UI string — speechApiEngine
  ///
  /// In en, this message translates to:
  /// **'API'**
  String get speechApiEngine;

  /// Kilo-Walk UI string — speechApiEngineSubtitle
  ///
  /// In en, this message translates to:
  /// **'OpenAI, Groq, or a custom OpenAI-compatible endpoint.'**
  String get speechApiEngineSubtitle;

  /// Kilo-Walk UI string — speechApiProvider
  ///
  /// In en, this message translates to:
  /// **'Speech-to-text provider'**
  String get speechApiProvider;

  /// Kilo-Walk UI string — speechCloudSttPrivacy
  ///
  /// In en, this message translates to:
  /// **'Cloud speech-to-text privacy'**
  String get speechCloudSttPrivacy;

  /// Kilo-Walk UI string — speechCloudSttPrivacyDescription
  ///
  /// In en, this message translates to:
  /// **'Recorded microphone audio is sent to the configured provider. API keys stay in secure storage on this device.'**
  String get speechCloudSttPrivacyDescription;

  /// Kilo-Walk UI string — speechApiKeyOptional
  ///
  /// In en, this message translates to:
  /// **'Optional for custom endpoints.'**
  String get speechApiKeyOptional;

  /// Kilo-Walk UI string — speechApiBatchHint
  ///
  /// In en, this message translates to:
  /// **'{provider} uses batch transcription. Tap the microphone again to stop and transcribe.'**
  String speechApiBatchHint(String provider);

  /// Kilo-Walk UI string — speechApiWebUnavailable
  ///
  /// In en, this message translates to:
  /// **'API speech-to-text is unavailable on the web build.'**
  String get speechApiWebUnavailable;

  /// Kilo-Walk UI string — speechApiConfigInvalid
  ///
  /// In en, this message translates to:
  /// **'Check the speech API endpoint and model. Remote endpoints must use HTTPS.'**
  String get speechApiConfigInvalid;

  /// Kilo-Walk UI string — speechApiRequestInvalid
  ///
  /// In en, this message translates to:
  /// **'The speech endpoint or model was rejected.'**
  String get speechApiRequestInvalid;

  /// Kilo-Walk UI string — speechApiRateLimited
  ///
  /// In en, this message translates to:
  /// **'The speech provider reported a quota or rate limit.'**
  String get speechApiRateLimited;

  /// Kilo-Walk UI string — speechApiUnavailable
  ///
  /// In en, this message translates to:
  /// **'The speech provider is temporarily unavailable.'**
  String get speechApiUnavailable;

  /// Kilo-Walk UI string — speechApiNetwork
  ///
  /// In en, this message translates to:
  /// **'The speech provider could not be reached.'**
  String get speechApiNetwork;

  /// Kilo-Walk UI string — speechApiInvalidResponse
  ///
  /// In en, this message translates to:
  /// **'The speech provider returned an invalid response.'**
  String get speechApiInvalidResponse;

  /// Kilo-Walk UI string — speechApiEmptyAudio
  ///
  /// In en, this message translates to:
  /// **'No microphone audio was captured.'**
  String get speechApiEmptyAudio;

  /// Kilo-Walk UI string — speechApiEmptyTranscript
  ///
  /// In en, this message translates to:
  /// **'The speech provider returned no transcription.'**
  String get speechApiEmptyTranscript;

  /// Kilo-Walk UI string — speechApiCustomProvider
  ///
  /// In en, this message translates to:
  /// **'Custom OpenAI-compatible'**
  String get speechApiCustomProvider;

  /// Kilo-Walk UI string — speechApiMaxDuration
  ///
  /// In en, this message translates to:
  /// **'API recordings stop automatically after 2 minutes.'**
  String get speechApiMaxDuration;

  /// Kilo-Walk UI string — speechApiLanguageHint
  ///
  /// In en, this message translates to:
  /// **'The active app language is sent as a transcription hint.'**
  String get speechApiLanguageHint;

  /// Kilo-Walk UI string — speechSttApiKeyStorageUnavailable
  ///
  /// In en, this message translates to:
  /// **'Secure speech API key storage is unavailable.'**
  String get speechSttApiKeyStorageUnavailable;

  /// Kilo-Walk UI string — speechSttApiKeyMissing
  ///
  /// In en, this message translates to:
  /// **'Add a speech API key in Settings > Speech.'**
  String get speechSttApiKeyMissing;

  /// Kilo-Walk UI string — speechSttApiKeyRejected
  ///
  /// In en, this message translates to:
  /// **'The speech API key was rejected.'**
  String get speechSttApiKeyRejected;

  /// No description provided for @carMessagingReply.
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get carMessagingReply;

  /// No description provided for @carMessagingMarkRead.
  ///
  /// In en, this message translates to:
  /// **'Mark as read'**
  String get carMessagingMarkRead;

  /// No description provided for @carMessagingDeliveryFailedTitle.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'\'t send reply'**
  String get carMessagingDeliveryFailedTitle;

  /// No description provided for @carMessagingDeliveryFailedBody.
  ///
  /// In en, this message translates to:
  /// **'Your voice reply could not be delivered. Open Kilo-Walk to retry.'**
  String get carMessagingDeliveryFailedBody;

  /// Kilo-Walk UI string — shortcutNextTab
  ///
  /// In en, this message translates to:
  /// **'Next tab'**
  String get shortcutNextTab;

  /// Kilo-Walk UI string — shortcutNextTabDesc
  ///
  /// In en, this message translates to:
  /// **'Show the tab switcher and cycle to the next tab'**
  String get shortcutNextTabDesc;

  /// Kilo-Walk UI string — shortcutPreviousTab
  ///
  /// In en, this message translates to:
  /// **'Previous tab'**
  String get shortcutPreviousTab;

  /// Kilo-Walk UI string — shortcutPreviousTabDesc
  ///
  /// In en, this message translates to:
  /// **'Show the tab switcher and cycle to the previous tab'**
  String get shortcutPreviousTabDesc;

  /// Kilo-Walk UI string — sessionTabSwitcherTitle
  ///
  /// In en, this message translates to:
  /// **'Switch tab'**
  String get sessionTabSwitcherTitle;

  /// Kilo-Walk UI string — sessionTabSwitcherHint
  ///
  /// In en, this message translates to:
  /// **'Release Ctrl to switch, Esc to cancel'**
  String get sessionTabSwitcherHint;

  /// Kilo-Walk UI string — aboutTelegram
  ///
  /// In en, this message translates to:
  /// **'Telegram'**
  String get aboutTelegram;

  /// Kilo-Walk UI string — settingsAboutWhatsNew
  ///
  /// In en, this message translates to:
  /// **'What\'\'s new in v{version}'**
  String settingsAboutWhatsNew(String version);

  /// Kilo-Walk UI string — appShellNewsMore
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get appShellNewsMore;

  /// Kilo-Walk UI string — settingsAboutChangelog
  ///
  /// In en, this message translates to:
  /// **'Changelog'**
  String get settingsAboutChangelog;

  /// Kilo-Walk UI string — settingsAboutOurGroup
  ///
  /// In en, this message translates to:
  /// **'Our group'**
  String get settingsAboutOurGroup;

  /// Kilo-Walk UI string — settingsAppearanceProjectTabColors
  ///
  /// In en, this message translates to:
  /// **'Project tab colors'**
  String get settingsAppearanceProjectTabColors;

  /// Kilo-Walk UI string — settingsAppearanceProjectTabColorsDescription
  ///
  /// In en, this message translates to:
  /// **'Tint session tabs with colors from detected project icons.'**
  String get settingsAppearanceProjectTabColorsDescription;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'bn',
    'de',
    'en',
    'es',
    'fr',
    'hi',
    'it',
    'ja',
    'ko',
    'pt',
    'ru',
    'ur',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'bn':
      return AppLocalizationsBn();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'ur':
      return AppLocalizationsUr();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
