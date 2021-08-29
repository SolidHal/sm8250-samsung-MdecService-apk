.class public Lcom/samsung/android/mdecservice/nms/NmsProvider;
.super Landroid/content/ContentProvider;
.source "NmsProvider.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PARTS_DIR_NAME:Ljava/lang/String; = "parts"

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.android.mdecservice.nms.NmsProvider"

.field private static mMapUriContentPrdrName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->LOG_TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/NmsProvider$1;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/NmsProvider$1;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mMapUriContentPrdrName:Ljava/util/Map;

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.mdecservice.nms.NmsProvider"

    const-string v2, "smsmessages/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "smsmessages"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "smsmessages-conversations"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "smsmessages-conversations/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "mmsmessage"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "mmsmessage/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "mmspartmessage"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "mmspartmessage/#"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "mmspartfile"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 13
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "mmspartfile/#"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "allmmssms"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "rcsmessage"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "rcsfile"

    const/16 v4, 0x2c

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "rcsmessage/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "rcscommon"

    const/16 v3, 0x2e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "calllog"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "latestmessage/#"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "allsmsmessages"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "allmmspdumessage"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "allrcsmessage"

    const/16 v3, 0x2d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 24
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "wapmessages"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "wapmessages/#"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "smsmmswpmmessages"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "allmessages"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "rcscontact"

    const/16 v3, 0x2f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "rcsgroups"

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "chatbotinfo"

    const/16 v3, 0x31

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private safeOpenFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9

    const-string v0, "parts"

    const-string v1, "_data"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/mdecservice/nms/NmsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 4
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 5
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    .line 6
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    if-eqz v1, :cond_2

    .line 7
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    sget-object p2, Lcom/samsung/android/mdecservice/nms/NmsProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openFile: path "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not start with "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    .line 15
    :cond_1
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p2

    .line 16
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 17
    sget-object p2, Lcom/samsung/android/mdecservice/nms/NmsProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openFile: create path failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 18
    :cond_2
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "Column _data not found."

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_3
    :try_start_3
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple items at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 20
    :cond_4
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No entry for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 21
    :goto_1
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 22
    throw p1
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 14

    move-object v6, p1

    move-object/from16 v7, p2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    move-object v1, p0

    move-object v0, v7

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4
    array-length v9, v7

    const-string v10, "normalized_number=?"

    const/4 v11, 0x0

    move-object v3, v10

    move v1, v11

    move v12, v1

    :goto_0
    const-string v13, "normalized_number"

    if-ge v12, v9, :cond_3

    aget-object v2, v7, v12

    add-int/lit8 v1, v1, 0x1

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " OR normalized_number=?"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x3d4

    if-le v1, v2, :cond_2

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/NmsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v10

    move v1, v11

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/NmsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_4
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 18
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 19
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicatedNumbers size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[NMS2]"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-static {v0, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 22
    array-length v1, v7

    :goto_3
    if-ge v11, v1, :cond_9

    aget-object v2, v7, v11

    .line 23
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 24
    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 26
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    .line 27
    sget-object v1, Lcom/samsung/android/mdecservice/nms/NmsProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bulkInsert length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    .line 28
    :goto_5
    invoke-super {p0, p1, v0}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->deleteTable(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    const/16 v1, 0x28

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->deleteConversation(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->deleteConversation(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "content_type"

    .line 2
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "name"

    .line 3
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/plain"

    .line 4
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "application/smil"

    .line 5
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "parts"

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/PART_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "_data"

    .line 8
    invoke-virtual {p2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 11
    sget-object v5, Lcom/samsung/android/mdecservice/nms/NmsProvider;->LOG_TAG:Ljava/lang/String;

    const-string v6, "partFile is not exists"

    invoke-static {v5, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13
    :catch_0
    sget-object p1, Lcom/samsung/android/mdecservice/nms/NmsProvider;->LOG_TAG:Ljava/lang/String;

    const-string p2, "createNewFile"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create new file: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    invoke-virtual {v1, p1, v0, p2}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->insertTable(Landroid/net/Uri;ILandroid/content/ContentValues;)J

    move-result-wide p1

    goto :goto_1

    :cond_2
    move-wide p1, v2

    :goto_1
    cmp-long v1, p1, v2

    if-lez v1, :cond_3

    .line 16
    sget-object v1, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mMapUriContentPrdrName:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.samsung.android.mdecservice.nms.NmsProvider/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 18
    :cond_3
    sget-object p1, Lcom/samsung/android/mdecservice/nms/NmsProvider;->LOG_TAG:Ljava/lang/String;

    const-string p2, "insert: failed!"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->init(Landroid/content/Context;)Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;

    .line 3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdecservice/nms/config/NmsFeature;

    .line 4
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->load()V

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/nms/NmsProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openFile: uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", match="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/NmsProvider;->safeOpenFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_1

    const/4 v0, 0x2

    if-eq v2, v0, :cond_0

    const-string v0, "_bufferdbid="

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto/16 :goto_0

    .line 3
    :pswitch_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    const/16 v1, 0xc

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto/16 :goto_0

    .line 5
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    const/16 v1, 0xc

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto/16 :goto_0

    .line 6
    :pswitch_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "message_id="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    const/16 v1, 0xc

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto/16 :goto_0

    .line 8
    :pswitch_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    const/4 v1, 0x6

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    .line 10
    :pswitch_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    const/4 v1, 0x4

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    .line 12
    :pswitch_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    const/4 v1, 0x1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    .line 14
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->queryRowCountForMsg([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->queryMessageThreadIdList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v0, -0x1

    if-eq v3, v0, :cond_3

    const/4 v0, 0x2

    if-eq v3, v0, :cond_2

    const/4 v0, 0x5

    if-eq v3, v0, :cond_1

    const/16 v0, 0x29

    if-eq v3, v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    const/16 v2, 0x28

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    const/4 v2, 0x4

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsProvider;->mBufferDB:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    const/4 v2, 0x1

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
