.class public final Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Lines;
.super Ljava/lang/Object;
.source "EntitlementContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lines"
.end annotation


# static fields
.field public static final COL_ID:Ljava/lang/String; = "_id"

.field public static final COL_IMPU:Ljava/lang/String; = "IMPU"

.field public static final COL_LINE_ACTIVE:Ljava/lang/String; = "LINE_ACTIVE"

.field public static final COL_LINE_ID:Ljava/lang/String; = "LINE_ID"

.field public static final COL_LINE_NAME:Ljava/lang/String; = "LINE_NAME"

.field public static final COL_LINE_OWNER_DEVICE_ID:Ljava/lang/String; = "OWNER_DEVICE_ID"

.field public static final COL_LINE_OWNER_USER_ID:Ljava/lang/String; = "OWNER_USER_ID"

.field public static final COL_MODIFIED_AT:Ljava/lang/String; = "MODIFIED_AT"

.field public static final COL_MSISDN:Ljava/lang/String; = "MSISDN"

.field public static final TABLE_NAME:Ljava/lang/String; = "lines"

.field public static final TABLE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lines"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Lines;->TABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildUri(J)Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
