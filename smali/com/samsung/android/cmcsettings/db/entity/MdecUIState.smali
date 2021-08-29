.class public Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;
.super Ljava/lang/Object;
.source "MdecUIState.java"


# static fields
.field public static final COLUMN_KEY:Ljava/lang/String; = "_id"

.field public static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final TABLE_NAME:Ljava/lang/String; = "mdec_Ui_States"


# instance fields
.field public key:J

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromContentValues(Landroid/content/ContentValues;)Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "value"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;->value:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
