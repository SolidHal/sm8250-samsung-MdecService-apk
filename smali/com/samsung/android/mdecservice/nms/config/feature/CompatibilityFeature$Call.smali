.class public final Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Call;
.super Ljava/lang/Object;
.source "CompatibilityFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Call"
.end annotation


# static fields
.field public static final C0000_DEFAULT:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    const/4 v1, 0x0

    const-string v2, "C0000_DEFAULT"

    const-string v3, "not_decided_yet"

    const-string v4, "call_package_name"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Call;->C0000_DEFAULT:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
