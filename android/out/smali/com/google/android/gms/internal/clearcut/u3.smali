.class public Lcom/google/android/gms/internal/clearcut/u3;
.super Lcom/google/android/gms/internal/clearcut/y3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/clearcut/u3<",
        "TM;>;>",
        "Lcom/google/android/gms/internal/clearcut/y3;"
    }
.end annotation


# instance fields
.field public b:Lcom/google/android/gms/internal/clearcut/v3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/y3;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/u3;->g()Lcom/google/android/gms/internal/clearcut/u3;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 8
    .line 9
    iget v3, v2, Lcom/google/android/gms/internal/clearcut/v3;->c:I

    .line 10
    .line 11
    if-ge v0, v3, :cond_0

    .line 12
    .line 13
    iget-object v2, v2, Lcom/google/android/gms/internal/clearcut/v3;->b:[Lcom/google/android/gms/internal/clearcut/w3;

    .line 14
    .line 15
    aget-object v2, v2, v0

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/w3;->c()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return v1
.end method

.method public synthetic e()Lcom/google/android/gms/internal/clearcut/y3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/u3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/u3;

    return-object v0
.end method

.method public f(Lcom/google/android/gms/internal/clearcut/s3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 8
    .line 9
    iget v1, v0, Lcom/google/android/gms/internal/clearcut/v3;->c:I

    .line 10
    .line 11
    if-ge p1, v1, :cond_1

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/v3;->b:[Lcom/google/android/gms/internal/clearcut/w3;

    .line 14
    .line 15
    aget-object v0, v0, p1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/w3;->b()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return-void
.end method

.method public g()Lcom/google/android/gms/internal/clearcut/u3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/clearcut/y3;->e()Lcom/google/android/gms/internal/clearcut/y3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/clearcut/u3;

    .line 6
    .line 7
    sget-object v1, Lcom/google/android/gms/internal/clearcut/x3;->a:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/v3;->clone()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/gms/internal/clearcut/v3;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/u3;->b:Lcom/google/android/gms/internal/clearcut/v3;

    .line 20
    .line 21
    :cond_0
    return-object v0
.end method
