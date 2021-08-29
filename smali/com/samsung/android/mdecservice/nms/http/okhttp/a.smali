.class public final synthetic Lcom/samsung/android/mdecservice/nms/http/okhttp/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lf/t;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/a;->a:Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;

    return-void
.end method


# virtual methods
.method public final intercept(Lf/t$a;)Lf/b0;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/a;->a:Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->b(Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;Lf/t$a;)Lf/b0;

    move-result-object p1

    return-object p1
.end method
