.class public final Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Message;
.super Ljava/lang/Object;
.source "CompatibilityFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field public static final M0000_DEFAULT:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

.field public static final M0001_EVENT_CACHING:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

.field public static final M0002_GDPR_FIX:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

.field public static final M0003_CHAT_BOT:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    const/4 v1, 0x0

    const-string v2, "M0000_DEFAULT"

    const-string v3, "cmc_message_compatibility_version"

    const-string v4, "com.samsung.android.messaging"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Message;->M0000_DEFAULT:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    const/4 v1, 0x1

    const-string v2, "M0001_EVENT_CACHING"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Message;->M0001_EVENT_CACHING:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    const/4 v1, 0x2

    const-string v2, "M0002_GDPR_FIX"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Message;->M0002_GDPR_FIX:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    .line 4
    new-instance v0, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    const/4 v1, 0x3

    const-string v2, "M0003_CHAT_BOT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Message;->M0003_CHAT_BOT:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
