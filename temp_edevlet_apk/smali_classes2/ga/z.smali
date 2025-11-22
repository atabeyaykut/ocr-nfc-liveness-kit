.class public final Lga/z;
.super Lga/h0;
.source "SourceFile"

# interfaces
.implements Lda/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lga/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lga/h0<",
        "TT;TV;>;",
        "Lda/i<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field public final n:Lga/t0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/t0$b<",
            "Lga/z$a<",
            "TT;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lga/h0;-><init>(Lga/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lga/z$b;

    invoke-direct {p1, p0}, Lga/z$b;-><init>(Lga/z;)V

    invoke-static {p1}, Lga/t0;->b(Lx9/a;)Lga/t0$b;

    move-result-object p1

    iput-object p1, p0, Lga/z;->n:Lga/t0$b;

    return-void
.end method

.method public constructor <init>(Lga/s;Lma/l0;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lga/h0;-><init>(Lga/s;Lma/l0;)V

    new-instance p1, Lga/z$b;

    invoke-direct {p1, p0}, Lga/z$b;-><init>(Lga/z;)V

    invoke-static {p1}, Lga/t0;->b(Lx9/a;)Lga/t0$b;

    move-result-object p1

    iput-object p1, p0, Lga/z;->n:Lga/t0$b;

    return-void
.end method


# virtual methods
.method public final f()Lda/h$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lga/z;->n:Lga/t0$b;

    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_setter()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lga/z$a;

    return-object v0
.end method

.method public final f()Lda/i$a;
    .locals 2

    .line 2
    iget-object v0, p0, Lga/z;->n:Lga/t0$b;

    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_setter()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lga/z$a;

    return-object v0
.end method
