.class public final Lcom/google/android/gms/internal/measurement/k9;
.super Lcom/google/android/gms/internal/measurement/j;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lp4/c7;)V
    .locals 2

    const-string v0, "internal.remoteConfig"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/j;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/gms/internal/measurement/n8;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/measurement/n8;-><init>(Lp4/c7;)V

    const-string p1, "getValue"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    sget-object p1, Lcom/google/android/gms/internal/measurement/p;->i:Lcom/google/android/gms/internal/measurement/u;

    return-object p1
.end method
