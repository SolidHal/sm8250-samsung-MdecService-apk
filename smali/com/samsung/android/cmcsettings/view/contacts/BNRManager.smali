.class public Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;
.super Ljava/lang/Object;
.source "BNRManager.java"


# static fields
.field public static final CUSTOM_RINGTONE:Ljava/lang/String; = "custom_ringtone"

.field public static final NAME_CARD_MIMETYPE:Ljava/lang/String; = "vnd.sec.cursor.item/name_card"

.field private static RAW_CONTACT_ENTITIES_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BNRManager"


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-string v0, "_id"

    const-string v1, "display_name"

    const-string v2, "mimetype"

    const-string v3, "is_primary"

    const-string v4, "is_super_primary"

    const-string v5, "data1"

    const-string v6, "data2"

    const-string v7, "data3"

    const-string v8, "data4"

    const-string v9, "data5"

    const-string v10, "data6"

    const-string v11, "data7"

    const-string v12, "data8"

    const-string v13, "data9"

    const-string v14, "data10"

    const-string v15, "data11"

    const-string v16, "data12"

    const-string v17, "data13"

    const-string v18, "data14"

    const-string v19, "data15"

    .line 1
    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->RAW_CONTACT_ENTITIES_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAgifPhoto([B)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    array-length v1, p0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2}, Ljava/lang/String;-><init>([BII)V

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileHeader : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "BNRManager"

    invoke-static {v2, p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "GIF"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private writeByteArrayFromAssetDescriptor(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/Boolean;)Z
    .locals 7

    const-string v0, "BNRManager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1
    :goto_0
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    if-eqz v3, :cond_1

    const-string v4, "display_namecard"

    goto :goto_1

    :cond_1
    const-string v4, "display_photo"

    .line 3
    :goto_1
    invoke-static {p2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_2

    .line 5
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string p4, "reverse"

    const-string v3, "true"

    invoke-virtual {p2, p4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 6
    :cond_2
    invoke-static {p3}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->isAgifPhoto([B)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 7
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string p4, "isCompress"

    const-string v3, "false"

    invoke-virtual {p2, p4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 8
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p4, "rw"

    invoke-virtual {p1, p2, p4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_8

    .line 9
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 10
    :try_start_2
    new-instance p4, Ljava/io/ByteArrayInputStream;

    invoke-direct {p4, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/16 p3, 0x4000

    :try_start_3
    new-array p3, p3, [B

    move v3, v2

    .line 11
    :goto_2
    invoke-virtual {p4, p3}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_4

    .line 12
    invoke-virtual {p2, p3, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v3, v4

    goto :goto_2

    .line 13
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrote "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes for photo "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :try_start_4
    invoke-virtual {p4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p2, :cond_5

    .line 15
    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :cond_5
    if-eqz p1, :cond_6

    .line 16
    :try_start_6
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_6
    return v1

    :catchall_0
    move-exception p3

    .line 17
    :try_start_7
    throw p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v1

    .line 18
    :try_start_8
    invoke-virtual {p4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p4

    :try_start_9
    invoke-virtual {p3, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p3

    .line 19
    :try_start_a
    throw p3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p4

    if-eqz p2, :cond_7

    .line 20
    :try_start_b
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p2

    :try_start_c
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw p4

    :catchall_6
    move-exception p2

    goto :goto_5

    .line 21
    :cond_8
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "contacts BNR Error"

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 22
    :goto_5
    :try_start_d
    throw p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    move-exception p3

    if-eqz p1, :cond_9

    .line 23
    :try_start_e
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_6

    :catchall_8
    move-exception p1

    :try_start_f
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_6
    throw p3
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    :catch_0
    move-exception p1

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to write photo because: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public applyBatchAndWritePhotos(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[B>;>;",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[B>;>;",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[B>;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_6

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.contacts"

    .line 3
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 6
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v0, v2

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v1, v3}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->writeByteArrayFromAssetDescriptor(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/Boolean;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    :cond_2
    if-eqz p4, :cond_4

    .line 8
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    .line 9
    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v0, v1

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, [B

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v1, p3, v2}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->writeByteArrayFromAssetDescriptor(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/Boolean;)Z

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-eqz p5, :cond_6

    .line 11
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    .line 12
    iget-object p4, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    aget-object p4, v0, p4

    iget-object p4, p4, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {p4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p4

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, [B

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p4, p3, v1}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->writeByteArrayFromAssetDescriptor(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/Boolean;)Z

    goto :goto_2

    .line 13
    :cond_5
    invoke-virtual {p5}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    return-void
.end method

.method public buildIdsString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "("

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, ","

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p1, ")"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public checkDuplicatedContact(Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->getPhoneNumberEmailList()Ljava/util/ArrayList;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->checkContainPhoneOrEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getByteArrayFromAssetDescriptor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)[B
    .locals 6

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2
    :goto_0
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 3
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    if-eqz v2, :cond_1

    const-string v3, "display_namecard"

    goto :goto_1

    :cond_1
    const-string v3, "display_photo"

    .line 4
    :goto_1
    invoke-static {p2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_2

    .line 6
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string p3, "reverse"

    const-string v2, "true"

    invoke-virtual {p2, p3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "r"

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p1

    const/16 p2, 0x4000

    new-array p2, p2, [B

    .line 9
    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result p3

    const/4 v2, -0x1

    if-eq p3, v2, :cond_3

    .line 10
    invoke-virtual {v0, p2, v1, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 12
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Couldn\'t read contacts database"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDuplicatedRawContacts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "vnd.android.cursor.item/photo"

    const-string v3, "mimetype"

    const-string v4, "data15"

    const-string v5, "display_name"

    const-string v6, "_id"

    .line 1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " (deleted = 0) AND ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->RAW_CONTACT_ENTITIES_COLUMNS:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_a

    .line 4
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 5
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 6
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 7
    new-instance v11, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;

    invoke-direct {v11, v9, v10}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 9
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    goto/16 :goto_3

    .line 10
    :cond_0
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 11
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 12
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v15, "raw_contact_id"

    move-object/from16 v16, v7

    const-string v7, "data14"

    move-object/from16 p2, v10

    const/4 v10, 0x0

    if-eqz v14, :cond_2

    .line 13
    :try_start_2
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    .line 14
    invoke-virtual {v1, v0, v9, v7}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->getByteArrayFromAssetDescriptor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)[B

    move-result-object v13

    .line 15
    invoke-static {v13, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10, v7}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->addPhotoData(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 16
    :cond_1
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v8, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 17
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    invoke-virtual {v12, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 18
    invoke-virtual {v12, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v12, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v14, "vnd.sec.cursor.item/name_card"

    .line 20
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 21
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 22
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v9, v7}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->getByteArrayFromAssetDescriptor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)[B

    move-result-object v7

    .line 23
    invoke-static {v7, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v11, v7, v13}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->addPhotoData(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_3
    const-string v7, "data12"

    .line 24
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 25
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v9, v7}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->getByteArrayFromAssetDescriptor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)[B

    move-result-object v7

    .line 26
    invoke-static {v7, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v11, v7, v10}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->addPhotoData(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 27
    :cond_4
    invoke-static {v8, v12}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 28
    invoke-virtual {v12, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_5
    :goto_2
    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 30
    invoke-virtual {v12, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 31
    :cond_6
    invoke-virtual {v12, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 32
    invoke-virtual {v12, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 33
    :cond_7
    invoke-virtual {v11, v12}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->addDataList(Landroid/content/ContentValues;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v10, p2

    move-object/from16 v7, v16

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v16

    goto :goto_5

    :cond_8
    :goto_3
    move-object/from16 v16, v7

    move-object/from16 p2, v10

    .line 34
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v9, p2

    move-object/from16 v7, v16

    .line 35
    :try_start_4
    invoke-virtual {v7, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v7, v16

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_4
    move-object v2, v0

    .line 36
    :goto_5
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    if-eqz v8, :cond_9

    .line 37
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v4, v0

    :try_start_7
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_6
    throw v3

    :cond_a
    if-eqz v8, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "BNRManager"

    const-string v2, "Fail to get duplicated raw_contacts"

    .line 39
    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_7
    return-object v7
.end method

.method public getGroupIdMappingMap(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;)Ljava/util/HashMap;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p3

    const-string v0, "_id"

    const-string v2, "custom_ringtone"

    const-string v3, "title"

    const-string v4, "BNRManager"

    .line 1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id IN (SELECT data1 FROM view_data WHERE raw_contact_id IN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "mimetype"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "=?)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 6
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v13

    const-string v10, "vnd.android.cursor.item/group_membership"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v10, :cond_1

    .line 7
    :goto_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 8
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 10
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v10, :cond_0

    .line 11
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v2

    :cond_1
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 12
    :cond_2
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    move-object/from16 v14, p0

    invoke-virtual {v14, v10}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->buildIdsString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v10

    .line 13
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "title IN (SELECT title FROM view_groups WHERE _id IN "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") AND "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "account_type"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "=? AND "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "account_name"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "=?"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 14
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v19

    new-array v0, v11, [Ljava/lang/String;

    iget-object v11, v1, Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;->type:Ljava/lang/String;

    aput-object v11, v0, v12

    iget-object v11, v1, Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;->name:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v11, v0, v13

    const/16 v22, 0x0

    move-object/from16 v21, v0

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v11, :cond_4

    .line 15
    :goto_2
    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v13, 0x1

    .line 16
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 17
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v7, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v5, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 20
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    if-eqz v11, :cond_3

    .line 21
    :try_start_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v3, v0

    :try_start_9
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v2

    :cond_4
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 22
    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v12, "Failed to update group"

    const-string v14, "Failed to insert group"

    if-eqz v0, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 26
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    move-object/from16 p2, v12

    if-nez v19, :cond_8

    .line 27
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 28
    invoke-virtual {v12, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v20, v3

    const/16 v16, 0x1

    .line 29
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v21, v13

    const-string v13, "group_visible"

    invoke-virtual {v12, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v13, "dirty"

    invoke-virtual {v12, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    iget-object v3, v1, Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v12, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v3, v1, Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v12, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 34
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_6
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x1ea

    if-lt v0, v3, :cond_9

    .line 38
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    const/4 v3, 0x0

    .line 39
    :goto_5
    array-length v12, v0

    if-ge v3, v12, :cond_7

    .line 40
    aget-object v12, v0, v3

    iget-object v12, v12, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 41
    invoke-static {v12}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 42
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v7, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 46
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto :goto_6

    :cond_8
    move-object/from16 v20, v3

    move-object/from16 v21, v13

    .line 47
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 48
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 49
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v3, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v12, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 51
    invoke-virtual {v12, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    .line 52
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x0

    aput-object v0, v13, v16

    const-string v0, "_id=?"

    invoke-virtual {v3, v0, v13}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    move-object/from16 v3, v21

    .line 54
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v13, 0x1ea

    if-lt v0, v13, :cond_a

    .line 56
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v13, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 57
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 58
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, p2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    :goto_6
    move-object/from16 v3, v21

    const/4 v12, 0x1

    const/16 v16, 0x0

    :cond_a
    :goto_7
    move-object/from16 v14, p0

    move-object v13, v3

    move/from16 v12, v16

    move-object/from16 v3, v20

    goto/16 :goto_4

    :cond_b
    move-object v3, v13

    const/16 v16, 0x0

    move-object v13, v12

    .line 59
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 60
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    move/from16 v12, v16

    .line 61
    :goto_8
    array-length v1, v0

    if-ge v12, v1, :cond_c

    .line 62
    aget-object v1, v0, v12

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 63
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 64
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :catch_2
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 68
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_9
    return-object v5

    :catch_4
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Fail to get target account groups"

    .line 71
    invoke-static {v4, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    const/4 v1, 0x0

    return-object v1

    :catch_5
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Fail to get device groups"

    .line 73
    invoke-static {v4, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public mergeDataWithDuplicatedContact(Landroid/content/Context;Ljava/util/ArrayList;Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;",
            "Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    invoke-virtual {p3}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->getRawContactId()Ljava/lang/String;

    move-result-object v2

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "mimetype"

    .line 6
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnd.android.cursor.item/photo"

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 8
    invoke-virtual {p4}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->getPhoto()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p3}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->hasPhotoData()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 10
    invoke-static {v3, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    const/4 v4, 0x0

    .line 11
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->writeByteArrayFromAssetDescriptor(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/Boolean;)Z

    .line 12
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    const-string v5, "vnd.sec.cursor.item/name_card"

    .line 13
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 14
    invoke-virtual {p4}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->getFrontNameCard()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {p4}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->getBackNameCard()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {p3}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->hasNameCard()Z

    move-result v5

    if-nez v5, :cond_4

    .line 17
    invoke-virtual {p3}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->getFrontNameCard()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 18
    invoke-static {v3, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    invoke-direct {p0, p1, v2, v3, v5}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->writeByteArrayFromAssetDescriptor(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/Boolean;)Z

    .line 20
    :cond_3
    invoke-virtual {p3}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->getBackNameCard()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 21
    invoke-static {v4, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->writeByteArrayFromAssetDescriptor(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/Boolean;)Z

    .line 23
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_5
    const-string v5, "vnd.android.cursor.item/phone_v2"

    .line 24
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "data1"

    if-eqz v5, :cond_6

    .line 25
    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 26
    :cond_6
    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 27
    :goto_1
    invoke-virtual {p3, v3, v4}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->checkContainData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 29
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ContentValues;

    .line 30
    sget-object p4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 31
    invoke-static {p4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    const-string p4, "raw_contact_id"

    .line 32
    invoke-virtual {p3, p4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p3

    .line 33
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    return-void
.end method
