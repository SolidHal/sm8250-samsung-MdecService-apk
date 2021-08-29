.class public Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;
.super Ljava/lang/Object;
.source "BNREntity.java"


# static fields
.field public static final HASHKEY_SEED:J = 0x499602d2L


# instance fields
.field private backNameCard:Ljava/lang/String;

.field private frontNameCard:Ljava/lang/String;

.field private mDataHashValueSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayName:Ljava/lang/String;

.field private mPhoneEmailSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private photo:Ljava/lang/String;

.field private rawContactId:Ljava/lang/String;

.field private thumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->mDisplayName:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->mPhoneEmailSet:Ljava/util/HashSet;

    .line 6
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->mDataHashValueSet:Ljava/util/HashSet;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->mDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->rawContactId:Ljava/lang/String;

    return-void
.end method

.method private getUniqueHashKey(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    const-wide/32 v0, 0x499602d2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v2, p1

    xor-long/2addr v0, v2

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long p1, p1

    xor-long/2addr v0, p1

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public addDataList(Landroid/content/ContentValues;)V
    .locals 3

    const-string v0, "mimetype"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data1"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/phone_v2"

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->mPhoneEmailSet:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "vnd.android.cursor.item/email_v2"

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->mPhoneEmailSet:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "vnd.android.cursor.item/photo"

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "data15"

    .line 9
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->thumbnail:Ljava/lang/String;

    .line 10
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->mDataHashValueSet:Ljava/util/HashSet;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->getUniqueHashKey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPhotoData(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->frontNameCard:Ljava/lang/String;

    goto :goto_1

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->backNameCard:Ljava/lang/String;

    goto :goto_1

    .line 4
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->photo:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public checkContainData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->getUniqueHashKey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->mDataHashValueSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public checkContainPhoneOrEmail(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->mPhoneEmailSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBackNameCard()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->backNameCard:Ljava/lang/String;

    return-object v0
.end method

.method public getDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFrontNameCard()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->frontNameCard:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumberEmailList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->mPhoneEmailSet:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPhoto()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContactId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->rawContactId:Ljava/lang/String;

    return-object v0
.end method

.method public hasNameCard()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->frontNameCard:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->backNameCard:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasOnlyName()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->mPhoneEmailSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->mDataList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPhotoData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->photo:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->thumbnail:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
