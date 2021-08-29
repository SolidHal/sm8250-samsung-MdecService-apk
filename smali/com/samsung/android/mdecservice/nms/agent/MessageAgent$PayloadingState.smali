.class Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;
.super Lcom/samsung/android/mdecservice/nms/util/State;
.source "MessageAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PayloadingState"
.end annotation


# instance fields
.field mmsObj:Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;

.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/State;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->mmsObj:Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    return-void
.end method

.method private processStrResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Content-Type="

    const-string v4, "Content-Disposition"

    const-string v5, "multipart/mixed"

    const-string v6, "Content-Type"

    .line 1
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    const-string v7, "MsgAgent"

    const-string v8, "processStrResponse: handleListEvents downloaded Mms payload"

    invoke-static {v7, v0, v8}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v0, v10}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 5
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_0

    move v0, v9

    goto :goto_1

    :cond_0
    move v0, v8

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v10, v11

    goto :goto_0

    :catch_1
    move-exception v0

    .line 6
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v8

    move-object v11, v10

    .line 7
    :goto_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_6

    .line 8
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    const-string v3, "Single payload processing"

    invoke-static {v7, v0, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v11, :cond_1

    .line 9
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    const-string v2, "No header info"

    invoke-static {v7, v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$700(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    return-void

    .line 11
    :cond_1
    :try_start_2
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v3, ""

    if-eqz v0, :cond_2

    .line 12
    :try_start_3
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v5, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v5, v5, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contentType="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v5, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 14
    :goto_2
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 15
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "filename"

    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 17
    array-length v4, v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const-string v5, "No proper Content-Disposition"

    const/4 v6, 0x2

    if-ge v4, v6, :cond_3

    .line 18
    :try_start_4
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    invoke-static {v7, v0, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$700(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    return-void

    .line 20
    :cond_3
    aget-object v4, v3, v9

    const-string v8, "\""

    .line 21
    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 22
    array-length v3, v3

    if-ge v3, v6, :cond_4

    .line 23
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    invoke-static {v7, v0, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$700(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    return-void

    .line 25
    :cond_4
    aget-object v3, v4, v9

    .line 26
    iget-object v4, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v4, v4, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    :cond_5
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "ISO-8859-1"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 28
    new-instance v2, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;

    invoke-direct {v2}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;-><init>()V

    .line 29
    invoke-virtual {v2, v0}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setContentType(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setFileName(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-static {v4, v0}, Lh/a/a/a/b;->c(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setBinaryContent([B)V

    .line 32
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    .line 33
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 34
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_6

    .line 35
    :cond_6
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    const-string v4, "Multiple payloads processing"

    invoke-static {v7, v0, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v4, "ISO_8859_1"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 37
    :try_start_5
    new-instance v2, Ld/b/n/a;

    invoke-direct {v2, v0, v5}, Ld/b/n/a;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ld/b/m/h;

    invoke-direct {v0, v2}, Ld/b/m/h;-><init>(Ld/a/f;)V

    .line 39
    invoke-virtual {v0}, Ld/b/m/h;->c()I

    move-result v2

    .line 40
    iget-object v4, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v4, v4, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "partcount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :goto_5
    if-ge v8, v2, :cond_7

    .line 41
    invoke-virtual {v0, v8}, Ld/b/m/h;->b(I)Ld/b/a;

    move-result-object v4

    .line 42
    iget-object v5, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v5, v5, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ld/b/l;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " filename="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ld/b/l;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " InputStream="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-interface {v4}, Ld/b/l;->a()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 44
    invoke-static {v7, v5, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    new-instance v5, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;

    invoke-direct {v5}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;-><init>()V

    .line 46
    invoke-interface {v4}, Ld/b/l;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setContentType(Ljava/lang/String;)V

    .line 47
    invoke-interface {v4}, Ld/b/l;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setFileName(Ljava/lang/String;)V

    .line 48
    invoke-interface {v4}, Ld/b/l;->a()Ljava/io/InputStream;

    move-result-object v6

    invoke-interface {v4}, Ld/b/l;->a()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    invoke-static {v6, v4}, Lh/a/a/a/b;->c(Ljava/io/InputStream;I)[B

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setBinaryContent([B)V

    .line 49
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ld/b/i; {:try_start_5 .. :try_end_5} :catch_4

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :catch_4
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catch_5
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 52
    :cond_7
    :goto_6
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v12

    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v13, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->mmsObj:Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->mmsObj:Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getObjectID()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->mmsObj:Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->mmsObj:Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;

    .line 53
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getCorrelationId()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->mmsObj:Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getFlagList()Ljava/util/List;

    move-result-object v18

    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->mmsObj:Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "0"

    goto :goto_7

    :cond_8
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->mmsObj:Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object v0

    :goto_7
    move-object/from16 v19, v0

    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->mmsObj:Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;

    .line 54
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v20

    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-boolean v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->isSearchOp:Z

    move-object/from16 v21, v10

    move/from16 v22, v0

    .line 55
    invoke-interface/range {v12 .. v22}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onGetMmsCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/util/List;Z)V

    .line 56
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$700(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    return-void
.end method

.method private sendGetPayloadRequest()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    const-string v1, "MsgAgent"

    const-string v2, "sendGetPayloadRequest:"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPayloadUrl:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    const-string v3, "GetMmsPayloadRequest"

    invoke-interface {v1, v2, v3, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postStringRequestToServer(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPerformanceTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getInstance()Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->setGetMMSPayloadRequest()V

    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$1100(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsgAgent"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    .line 2
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$1200(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " processMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsgAgent"

    .line 3
    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->makeFailureReport(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$700(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 8
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "data"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "headers"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->processStrResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->mmsObj:Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;->sendGetPayloadRequest()V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
