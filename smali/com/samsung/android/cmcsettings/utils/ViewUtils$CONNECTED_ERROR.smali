.class public final enum Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;
.super Ljava/lang/Enum;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/utils/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONNECTED_ERROR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

.field public static final enum CONNECTED:Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

.field public static final enum SIM:Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

.field public static final enum WIFI:Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    const-string v1, "SIM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;->SIM:Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    new-instance v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    const-string v1, "CONNECTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;->CONNECTED:Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    new-instance v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    const-string v1, "WIFI"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;->WIFI:Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    .line 2
    sget-object v5, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;->SIM:Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    aput-object v5, v1, v2

    sget-object v2, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;->CONNECTED:Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;->$VALUES:[Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;->$VALUES:[Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    invoke-virtual {v0}, [Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    return-object v0
.end method
