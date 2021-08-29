.class public final enum Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;
.super Ljava/lang/Enum;
.source "TimeLogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdeccommon/log/TimeLogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "myProfiles"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

.field public static final enum DEFAULT:Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

.field public static final enum OBJECT_PUSH:Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

.field public static final enum PAYLOAD_PUSH:Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

    const-string v1, "OBJECT_PUSH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;->OBJECT_PUSH:Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

    .line 2
    new-instance v0, Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

    const-string v1, "PAYLOAD_PUSH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;->PAYLOAD_PUSH:Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

    .line 3
    new-instance v0, Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

    const-string v1, "DEFAULT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;->DEFAULT:Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

    .line 4
    sget-object v5, Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;->OBJECT_PUSH:Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

    aput-object v5, v1, v2

    sget-object v2, Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;->PAYLOAD_PUSH:Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;->$VALUES:[Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;->$VALUES:[Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

    invoke-virtual {v0}, [Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

    return-object v0
.end method
