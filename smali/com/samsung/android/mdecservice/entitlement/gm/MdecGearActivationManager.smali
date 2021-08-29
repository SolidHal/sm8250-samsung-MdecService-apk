.class public Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;
.super Landroid/app/IntentService;
.source "MdecGearActivationManager.java"


# static fields
.field public static final GM_DB_CHANGED:Ljava/lang/String; = "on_changed_gear_db"

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final MDEC_DELETE_GEAR_MANAGER:Ljava/lang/String; = "uninstall_gear_manager"

.field public static final MDEC_GEAR_NOT_SUPPORT:I = 0x1

.field public static final MDEC_GEAR_PEDNING:I = 0x0

.field public static final MDEC_GEAR_SUPPORT:I = 0x2

.field public static final MDEC_SERVICE_START:Ljava/lang/String; = "mdec_activation_service_start"

.field public static final NOTIFY_REASON_ERROR:I = -0x1

.field public static final NOTIFY_REASON_FIND_PEER_FAIL:I = 0x3

.field public static final NOTIFY_REASON_RECEIVE_REQ_OK:I = 0x1

.field public static final NOTIFY_REASON_SEND_FAIL:I = -0x2

.field public static final NOTIFY_REASON_SEND_RESPONSE_OK:I = 0x2

.field public static final NOTIFY_REASON_TIMEOUT:I = -0x3

.field public static final Samsung_Account_EXIT:Ljava/lang/String; = "uninstall_gear_manager"

.field private static mLock:Ljava/lang/Object;

.field private static mdecGearSupported:I

.field private static notifyReason:I


# instance fields
.field private mGmService:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

.field private final mProcessingTimeout:I

.field private mRequestAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;

.field private requestIndication:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->notifyReason:I

    const/4 v0, 0x1

    .line 3
    sput v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mdecGearSupported:I

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "MdecGearActivationManager"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const v0, 0x15f90

    .line 2
    iput v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mProcessingTimeout:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->requestIndication:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mGmService:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    .line 5
    new-instance v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager$1;-><init>(Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mRequestAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;)Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mGmService:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->requestIndication:Z

    return p0
.end method

.method static synthetic access$102(Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->requestIndication:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->sendSAPIndicationToGear(Landroid/content/Context;)V

    return-void
.end method

.method public static getOneNumberSupported(Landroid/content/Context;)I
    .locals 8

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "null context"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProviderContract$Gears;->TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    .line 3
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    .line 5
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "ONE_NUMBER"

    .line 6
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "HAS_ES"

    .line 7
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 8
    sget-object v4, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "one_number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", has_es : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v1

    move v3, v2

    .line 10
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_4
    move v2, v1

    move v3, v2

    :goto_1
    const/4 p0, 0x2

    if-ne v2, p0, :cond_5

    if-ne v3, p0, :cond_5

    return p0

    :cond_5
    if-ne v2, v0, :cond_6

    if-ne v3, v0, :cond_6

    return v0

    :cond_6
    return v1
.end method

.method private hasConnectedGear(Landroid/content/Context;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProviderContract$Gears;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "gear cursor is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "no connected device"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 5
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :goto_1
    return v0
.end method

.method private static isMdecSupportedForGear(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "null context"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcMenuSupported(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_MENU_SUPPORTED;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_MENU_SUPPORTED;->notSupported:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_MENU_SUPPORTED;

    if-ne v1, v2, :cond_1

    .line 3
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cmc is not enabled"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->isTestMode(Landroid/content/Context;)Z

    move-result v1

    .line 5
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Test Mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 6
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->isSingleSIMSlot(Landroid/content/Context;)Z

    move-result v1

    .line 7
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check Dual SIM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_3

    return v0

    .line 8
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->isSupportedMNO(Landroid/content/Context;)Z

    move-result v1

    .line 9
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check supported MNO : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_4

    return v0

    .line 10
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->isSupportedCountry(Landroid/content/Context;)Z

    move-result v1

    .line 11
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check supported country : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_5

    return v0

    .line 12
    :cond_5
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->getOneNumberSupported(Landroid/content/Context;)I

    move-result p0

    .line 13
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM check OK, One number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private static isSingleSIMSlot(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "null context"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->getNumOfSimSlot(Landroid/content/Context;)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private static isSupportedCountry(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "null context"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->getSIMMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Cannot read MCC from SIM card"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const-string v1, "250"

    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    return v0

    :cond_2
    const-string v1, "460"

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_3

    return v0

    :cond_3
    const-string v1, "461"

    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v2, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method private static isSupportedMNO(Landroid/content/Context;)Z
    .locals 42

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "null context"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->getSIMOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "31026"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    const-string v2, "310160"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    const-string v2, "310490"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    :cond_3
    const-string v2, "31170"

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v0

    :cond_4
    const-string v2, "31090"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v0

    :cond_5
    const-string v2, "310150"

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v0

    :cond_6
    const-string v2, "310410"

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v0

    :cond_7
    const-string v2, "310560"

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v0

    :cond_8
    const-string v2, "310680"

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    return v0

    :cond_9
    const-string v2, "310530"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    return v0

    :cond_a
    const-string v2, "316010"

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    return v0

    :cond_b
    const-string v2, "312190"

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    return v0

    :cond_c
    const-string v2, "311880"

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    return v0

    :cond_d
    const-string v2, "311870"

    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    return v0

    :cond_e
    const-string v2, "311490"

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    return v0

    :cond_f
    const-string v2, "310120"

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    return v0

    :cond_10
    const/16 v2, 0x27

    const-string v3, "311280"

    const-string v4, "311485"

    const-string v5, "310012"

    const-string v6, "311285"

    const-string v7, "311110"

    const-string v8, "311274"

    const-string v9, "311390"

    const-string v10, "311279"

    const-string v11, "311484"

    const-string v12, "310010"

    const-string v13, "311284"

    const-string v14, "311489"

    const-string v15, "310910"

    const-string v16, "311273"

    const-string v17, "311289"

    const-string v18, "311278"

    const-string v19, "311483"

    const-string v20, "310004"

    const-string v21, "311283"

    const-string v22, "311488"

    const-string v23, "310890"

    const-string v24, "311272"

    const-string v25, "311288"

    const-string v26, "311277"

    const-string v27, "311482"

    const-string v28, "311282"

    const-string v29, "311487"

    const-string v30, "310590"

    const-string v31, "311287"

    const-string v32, "311271"

    const-string v33, "311276"

    const-string v34, "311481"

    const-string v35, "311281"

    const-string v36, "311486"

    const-string v37, "310013"

    const-string v38, "311286"

    const-string v39, "311270"

    const-string v40, "311275"

    const-string v41, "311480"

    .line 19
    filled-new-array/range {v3 .. v41}, [Ljava/lang/String;

    move-result-object v3

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_12

    .line 20
    aget-object v5, v3, v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    return v0

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public static isTestMode(Landroid/content/Context;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/go_to_mdec.test"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The device has test folder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static declared-synchronized onChangedGearManagerDB(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "null context"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "on_changed_gear_db"

    .line 3
    invoke-static {p0, v1}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->startMdecGearActivationManager(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static onFindPeerFail()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "failed to find peer(gear)"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    .line 4
    :try_start_0
    sput v1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->notifyReason:I

    const/4 v1, 0x1

    .line 5
    sput v1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mdecGearSupported:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    :try_start_2
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "IllegalStateException"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static declared-synchronized onReceiveReqMessageFromSAP(Ljava/lang/String;Landroid/content/Context;)I
    .locals 5

    const-class v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;

    monitor-enter v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "null context"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return v1

    .line 3
    :cond_0
    :try_start_1
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MDEC SUPPORTED ON WATCH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[{\"MDEC_SUPPORTED_ON_WATCH\":\"true\"}]"

    .line 4
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eq p0, v1, :cond_2

    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->isTestMode(Landroid/content/Context;)Z

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v1

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->isMdecSupportedForGear(Landroid/content/Context;)I

    move-result p0

    .line 6
    :goto_1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->isRemoteConnectionOnGear(Landroid/content/Context;)Z

    move-result p1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    const/4 v3, 0x2

    if-ne p0, v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 7
    :goto_2
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mdec supported : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", remote connection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", MDEC active : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static onSentResponseMessageComplete(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAP communication complete - mdec supported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 4
    :try_start_0
    sput v1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->notifyReason:I

    .line 5
    sput p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mdecGearSupported:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    :try_start_2
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IllegalStateException"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private sendSAPIndicationToGear(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mGmService:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    if-eqz p1, :cond_1

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "send intent to SAP service for sending indication message to gear1"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mGmService:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->findPeerAgent()V

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "try to indication message... but sa not connected"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->requestIndication:Z

    :goto_0
    return-void
.end method

.method private startGMService(Landroid/content/Context;Z)V
    .locals 7

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string p2, "null context"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "cmc_p1_running"

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getIntFromGlobal(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const-string v2, ", isCmcP1Running : "

    if-eq v0, v1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dont start gm service with - active : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->hasConnectedGear(Landroid/content/Context;)Z

    move-result v3

    .line 6
    sget-object v4, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start gm service with - active : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", has gear : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MDEC_ACTIVE"

    .line 7
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "HAS_GEAR"

    .line 8
    invoke-virtual {v1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    invoke-static {p1, v1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public static startMdecGearActivationManager(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private startServices(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->startGMService(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate!!"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mRequestAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Register callback to SAP"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mRequestAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->requestAgent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mGmService:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->releaseAgent()V

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start activation checker service : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "null action received"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "mdec_activation_service_start"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    const-string v0, "on_changed_gear_db"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "uninstall_gear_manager"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "delete gear manager. stop mdec service"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->setWatchEnabled(ZLandroid/content/Context;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->startServices(Landroid/content/Context;Z)V

    goto/16 :goto_4

    :cond_2
    const-string v0, "uninstall_gear_manager"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "exit samsung account. set gear mdec activation off"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->setWatchEnabled(ZLandroid/content/Context;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->startServices(Landroid/content/Context;Z)V

    goto/16 :goto_4

    .line 14
    :cond_3
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "cannot find action"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 15
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->isRemoteConnectionOnGear(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 16
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Device has gear"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->sendSAPIndicationToGear(Landroid/content/Context;)V

    .line 18
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, -0x3

    .line 19
    :try_start_0
    sput v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->notifyReason:I

    .line 20
    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Wait for REQ message from gear"

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mLock:Ljava/lang/Object;

    const-wide/32 v4, 0x15f90

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v3

    .line 22
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 23
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    sget p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->notifyReason:I

    if-ne p1, v0, :cond_5

    .line 25
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "time out... communication fail with gear"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->setWatchEnabled(ZLandroid/content/Context;)V

    .line 27
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->startServices(Landroid/content/Context;Z)V

    goto/16 :goto_4

    :cond_5
    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    .line 28
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "fail to send message to gear"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    if-ne p1, v1, :cond_7

    .line 29
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "receive request message ok"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 30
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "send response message ok"

    invoke-static {p1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->isRemoteConnectionOnGear(Landroid/content/Context;)Z

    move-result p1

    if-ne p1, v1, :cond_8

    .line 32
    sget v3, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mdecGearSupported:I

    if-ne v3, v0, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    .line 33
    :goto_2
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mdec supported : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->mdecGearSupported:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remote connection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", MDEC active : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->startServices(Landroid/content/Context;Z)V

    goto :goto_4

    :cond_9
    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    .line 35
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "cannot find peer SAP consumer"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->startServices(Landroid/content/Context;Z)V

    .line 37
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->setWatchEnabled(ZLandroid/content/Context;)V

    goto :goto_4

    .line 38
    :cond_a
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "error..."

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 39
    :goto_3
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 40
    :cond_b
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "no connected gear. mdec state set to deactive"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->setWatchEnabled(ZLandroid/content/Context;)V

    .line 42
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->startServices(Landroid/content/Context;Z)V

    :goto_4
    return-void
.end method
