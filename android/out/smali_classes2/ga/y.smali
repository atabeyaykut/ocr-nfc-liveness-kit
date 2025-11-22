.class public final Lga/y;
.super Lga/g0;
.source "SourceFile"

# interfaces
.implements Lda/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lga/y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lga/g0<",
        "TV;>;",
        "Lda/h;"
    }
.end annotation


# instance fields
.field public final n:Lga/t0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/t0$b<",
            "Lga/y$a<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/s;Lma/l0;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lga/g0;-><init>(Lga/s;Lma/l0;)V

    new-instance p1, Lga/y$b;

    invoke-direct {p1, p0}, Lga/y$b;-><init>(Lga/y;)V

    invoke-static {p1}, Lga/t0;->b(Lx9/a;)Lga/t0$b;

    move-result-object p1

    iput-object p1, p0, Lga/y;->n:Lga/t0$b;

    return-void
.end method


# virtual methods
.method public final f()Lda/h$a;
    .locals 2

    iget-object v0, p0, Lga/y;->n:Lga/t0$b;

    invoke-virtual {v0}, Lga/t0$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_setter()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lga/y$a;

    return-object v0
.end method
