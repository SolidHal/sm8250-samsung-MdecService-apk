.class public Lcom/samsung/android/cmcsettings/utils/BuildInfo;
.super Ljava/lang/Object;
.source "BuildInfo.java"


# static fields
.field private static final FIELD_SEM_INT:Ljava/lang/String; = "SEM_INT"

.field private static final LOG_TAG:Ljava/lang/String; = "mdec/BuildInfo"

.field private static final SEP10:I = 0xaf1

.field private static sIsEngBinary:Z = false

.field private static sIsNonSepDevice:Z = true

.field private static sSepVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "do not instantiate this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkEngBinary()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/cmcsettings/utils/BuildInfo;->sIsEngBinary:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current binary is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/cmcsettings/utils/BuildInfo;->sIsEngBinary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mdec/BuildInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static checkNonSepDevice()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/BuildInfo;->isSepDevice()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/cmcsettings/utils/BuildInfo;->sIsNonSepDevice:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device does not support SEP? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/cmcsettings/utils/BuildInfo;->sIsNonSepDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mdec/BuildInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot load field: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mdec/BuildInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static getSepVersion()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEP Version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/cmcsettings/utils/BuildInfo;->sSepVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mdec/BuildInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/BuildInfo;->checkEngBinary()V

    .line 2
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/BuildInfo;->checkNonSepDevice()V

    .line 3
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/BuildInfo;->getSepVersion()V

    return-void
.end method

.method public static isENG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/cmcsettings/utils/BuildInfo;->sIsEngBinary:Z

    return v0
.end method

.method public static isNonSepDevice()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/cmcsettings/utils/BuildInfo;->sIsNonSepDevice:Z

    return v0
.end method

.method public static isSep10Feature()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/BuildInfo;->isSepDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/cmcsettings/utils/BuildInfo;->sSepVersion:I

    const/16 v1, 0xaf1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSepDevice()Z
    .locals 3

    .line 1
    const-class v0, Landroid/os/Build$VERSION;

    const-string v1, "SEM_INT"

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/BuildInfo;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isSepDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mdec/BuildInfo"

    invoke-static {v2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
