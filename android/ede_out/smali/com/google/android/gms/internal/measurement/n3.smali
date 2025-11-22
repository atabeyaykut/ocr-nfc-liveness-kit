.class public final Lcom/google/android/gms/internal/measurement/n3;
.super Lcom/google/android/gms/internal/measurement/n6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/n6<",
        "Lcom/google/android/gms/internal/measurement/o3;",
        "Lcom/google/android/gms/internal/measurement/n3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/o3;->s()Lcom/google/android/gms/internal/measurement/o3;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/n6;-><init>(Lcom/google/android/gms/internal/measurement/q6;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/o3;->s()Lcom/google/android/gms/internal/measurement/o3;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/n6;-><init>(Lcom/google/android/gms/internal/measurement/q6;)V

    return-void
.end method


# virtual methods
.method public final n()Lcom/google/android/gms/internal/measurement/q3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n6;->b:Lcom/google/android/gms/internal/measurement/q6;

    check-cast v0, Lcom/google/android/gms/internal/measurement/o3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/o3;->t()Lcom/google/android/gms/internal/measurement/q3;

    move-result-object v0

    return-object v0
.end method
