.class public final Lcc/k;
.super Lcc/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcc/y0<",
        "Lcc/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lna/h;


# direct methods
.method public constructor <init>(Lna/h;)V
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcc/y0;-><init>()V

    iput-object p1, p0, Lcc/k;->a:Lna/h;

    return-void
.end method


# virtual methods
.method public final a(Lcc/y0;)Lcc/k;
    .locals 2

    .line 1
    check-cast p1, Lcc/k;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcc/k;

    .line 8
    .line 9
    iget-object v1, p0, Lcc/k;->a:Lna/h;

    .line 10
    .line 11
    iget-object p1, p1, Lcc/k;->a:Lna/h;

    .line 12
    .line 13
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/clearcut/d0;->j(Lna/h;Lna/h;)Lna/h;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Lcc/k;-><init>(Lna/h;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object v0
.end method

.method public final b()Lda/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lda/d<",
            "+",
            "Lcc/k;",
            ">;"
        }
    .end annotation

    const-class v0, Lcc/k;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcc/y0;)Lcc/k;
    .locals 0

    .line 1
    check-cast p1, Lcc/k;

    .line 2
    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    move-object p1, p0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcc/k;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcc/k;

    iget-object p1, p1, Lcc/k;->a:Lna/h;

    iget-object v0, p0, Lcc/k;->a:Lna/h;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcc/k;->a:Lna/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
