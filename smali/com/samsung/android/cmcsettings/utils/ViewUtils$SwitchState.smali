.class public final enum Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;
.super Ljava/lang/Enum;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/utils/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwitchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

.field public static final enum disabledOn:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

.field public static final enum intermediateOff:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

.field public static final enum intermediateOn:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

.field public static final enum off:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

.field public static final enum on:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

.field public static final enum reverted:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

.field public static final enum unchanged:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    const-string v1, "on"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->on:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    new-instance v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    const-string v1, "off"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->off:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    new-instance v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    const-string v1, "intermediateOn"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->intermediateOn:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    new-instance v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    const-string v1, "intermediateOff"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->intermediateOff:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    new-instance v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    const-string v1, "disabledOn"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->disabledOn:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    new-instance v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    const-string v1, "unchanged"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->unchanged:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    new-instance v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    const-string v1, "reverted"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->reverted:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    .line 2
    sget-object v9, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->on:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    aput-object v9, v1, v2

    sget-object v2, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->off:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->intermediateOn:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->intermediateOff:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->disabledOn:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->unchanged:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->$VALUES:[Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->$VALUES:[Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    invoke-virtual {v0}, [Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    return-object v0
.end method
