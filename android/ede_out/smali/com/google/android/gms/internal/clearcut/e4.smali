.class public final Lcom/google/android/gms/internal/clearcut/e4;
.super Lcom/google/android/gms/common/api/internal/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/a<",
        "Lcom/google/android/gms/common/api/Status;",
        "Lcom/google/android/gms/internal/clearcut/i4;",
        ">;"
    }
.end annotation


# instance fields
.field public final k:Lk3/f;


# direct methods
.method public constructor <init>(Lk3/f;Lo3/e0;)V
    .locals 1

    sget-object v0, Lk3/a;->k:Ln3/a;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/a;-><init>(Ln3/a;Lo3/e0;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/e4;->k:Lk3/f;

    return-void
.end method


# virtual methods
.method public final synthetic b(Lcom/google/android/gms/common/api/Status;)Ln3/h;
    .locals 0

    return-object p1
.end method

.method public final synthetic i(Ln3/a$e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/e4;->k:Lk3/f;

    check-cast p1, Lcom/google/android/gms/internal/clearcut/i4;

    new-instance v1, Lcom/google/android/gms/internal/clearcut/h4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/clearcut/h4;-><init>(Lcom/google/android/gms/internal/clearcut/e4;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lk3/f;->j:Lcom/google/android/gms/internal/clearcut/f4;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/y3;->c()I

    move-result v3

    new-array v4, v3, [B

    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/clearcut/y3;->b(Lcom/google/android/gms/internal/clearcut/f4;[BI)V

    iput-object v4, v0, Lk3/f;->b:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lr3/c;->w()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/clearcut/k4;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/clearcut/k4;->p0(Lcom/google/android/gms/internal/clearcut/h4;Lk3/f;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ClearcutLoggerApiImpl"

    const-string v1, "derived ClearcutLogger.MessageProducer "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    const-string v1, "MessageProducer"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/a;->j(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
