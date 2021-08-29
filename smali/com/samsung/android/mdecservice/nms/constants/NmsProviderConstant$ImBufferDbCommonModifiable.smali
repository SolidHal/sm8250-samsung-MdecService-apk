.class public final Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant$ImBufferDbCommonModifiable;
.super Ljava/lang/Object;
.source "NmsProviderConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImBufferDbCommonModifiable"
.end annotation


# static fields
.field public static final COLUMN_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "display_notification_status"

    const-string v1, "date"

    const-string v2, "displayed_counter"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant$ImBufferDbCommonModifiable;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
