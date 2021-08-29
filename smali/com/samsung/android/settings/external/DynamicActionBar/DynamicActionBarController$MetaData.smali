.class public Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;
.super Ljava/lang/Object;
.source "DynamicActionBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MetaData"
.end annotation


# instance fields
.field private mActionButton:Ljava/lang/String;

.field private mActionButtonId:I

.field private mCategory:Ljava/lang/String;

.field private mOrder:I

.field private mTitle:Ljava/lang/String;

.field private mTitleId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;->mCategory:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private build()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;->mCategory:Ljava/lang/String;

    const-string v2, "com.android.settings.category"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget v1, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;->mOrder:I

    const-string v2, "com.android.settings.order"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget v1, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;->mTitleId:I

    const-string v2, "com.android.settings.title"

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;->mActionButtonId:I

    const-string v2, "com.android.settings.actionbutton"

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;->mActionButton:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public setActionButton(I)Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;->mActionButtonId:I

    return-object p0
.end method

.method public setActionButton(Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;->mActionButton:Ljava/lang/String;

    return-object p0
.end method

.method public setOrder(I)Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;->mOrder:I

    return-object p0
.end method

.method public setTitle(I)Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;->mTitleId:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;->mTitle:Ljava/lang/String;

    return-object p0
.end method
