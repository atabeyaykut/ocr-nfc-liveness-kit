.class public final Lcom/google/android/gms/internal/clearcut/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/v1;


# instance fields
.field public final a:Lcom/google/android/gms/internal/clearcut/x1;

.field public final b:Lcom/google/android/gms/internal/clearcut/m2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/v0;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/l2;->a:Lcom/google/android/gms/internal/clearcut/x1;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/m2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/m2;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/l2;->b:Lcom/google/android/gms/internal/clearcut/m2;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/l2;->b:Lcom/google/android/gms/internal/clearcut/m2;

    iget v0, v0, Lcom/google/android/gms/internal/clearcut/m2;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/l2;->b:Lcom/google/android/gms/internal/clearcut/m2;

    iget v0, v0, Lcom/google/android/gms/internal/clearcut/m2;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lcom/google/android/gms/internal/clearcut/x1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/l2;->a:Lcom/google/android/gms/internal/clearcut/x1;

    return-object v0
.end method
