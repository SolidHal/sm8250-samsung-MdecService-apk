.class public final enum Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;
.super Ljava/lang/Enum;
.source "ServiceLockObj.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;

.field public static final enum SERVICE_LOCK_OBJ:Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;

    const-string v1, "SERVICE_LOCK_OBJ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;->SERVICE_LOCK_OBJ:Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;->$VALUES:[Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;->$VALUES:[Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;

    invoke-virtual {v0}, [Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;

    return-object v0
.end method
