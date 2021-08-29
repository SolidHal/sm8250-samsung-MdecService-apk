.class public Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;
.super Ljava/lang/Object;
.source "DefaultApplicationUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static callAppArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->LOG_TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils$1;

    invoke-direct {v0}, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils$1;-><init>()V

    sput-object v0, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->callAppArray:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfDefaultCallOrMessageAppChanged(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->getMessageAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "com.samsung.android.messaging"

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getDefaultMessageAppSelected(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-static {v0, p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setDefaultMessageAppSelected(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->getCallAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "com.samsung.android.dialer"

    .line 8
    :cond_2
    sget-object v1, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getDefaultCallAppSelected(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    invoke-static {v0, p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setDefaultCallAppSelected(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p0, 0x0

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static findMessageMethod()Ljava/lang/reflect/Method;
    .locals 5

    :try_start_0
    const-string v0, "com.android.internal.telephony.SmsApplication"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setDefaultApplication"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 2
    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static findTelecomManagerMethod()Ljava/lang/reflect/Method;
    .locals 5

    .line 1
    :try_start_0
    const-class v0, Landroid/telecom/TelecomManager;

    const-string v1, "from"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 2
    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static findsetDefaultDialerMethod()Ljava/lang/reflect/Method;
    .locals 5

    .line 1
    :try_start_0
    const-class v0, Landroid/telecom/TelecomManager;

    const-string v1, "setDefaultDialer"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 2
    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCallAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "telecom"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3
    :goto_0
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultApplicationStatus: callAppName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getDefaultApplicationStatus(Landroid/content/Context;)I
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->getMessageAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "com.samsung.android.messaging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 3
    :goto_1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->getCallAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->callAppArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v2

    .line 5
    :goto_3
    sget-object v4, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultApplicationStatus: callAppName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " isSamsungCallApp "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    return v3

    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    if-eqz v0, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_6
    const/4 p0, 0x3

    return p0
.end method

.method public static getMessageAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultApplicationStatus: messageAppName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static setCallAppAsSamsungDefault(Landroid/content/Context;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setCallAppAsSamsungDefault"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->findTelecomManagerMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->findsetDefaultDialerMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v2

    .line 4
    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Landroid/telecom/TelecomManager;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    new-array p0, v3, [Ljava/lang/Object;

    const-string v0, "com.samsung.android.dialer"

    aput-object v0, p0, v2

    .line 5
    invoke-virtual {v1, v4, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 6
    :goto_1
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public static setMessageAppAsSamsungDefault(Landroid/content/Context;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setMessageAppAsSamsungDefault"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->findMessageMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com.samsung.android.messaging"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method
