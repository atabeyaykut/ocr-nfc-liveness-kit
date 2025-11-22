.class public final Lcom/google/android/gms/internal/measurement/qc;
.super Lcom/google/android/gms/internal/measurement/j;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/z3;)V
    .locals 1

    const-string v0, "internal.appMetadata"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/qc;->c:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/s3;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/s3;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/p;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/p;"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/qc;->c:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lb8/f;->G0(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/p;->i:Lcom/google/android/gms/internal/measurement/u;

    return-object p1
.end method
