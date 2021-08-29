.class public Lcom/samsung/android/sdk/accessory/SAException;
.super Ljava/lang/Exception;
.source "SAException.java"


# static fields
.field private static final serialVersionUID:J = 0x7850608c06098c9cL


# instance fields
.field private mErrorCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAException;->mErrorCode:I

    return v0
.end method
