.class public final Lpa/f0;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Llb/c;",
        "Lma/i0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lpa/g0;


# direct methods
.method public constructor <init>(Lpa/g0;)V
    .locals 0

    iput-object p1, p0, Lpa/f0;->a:Lpa/g0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Llb/c;

    .line 2
    .line 3
    const-string v0, "fqName"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lpa/f0;->a:Lpa/g0;

    .line 9
    .line 10
    iget-object v1, v0, Lpa/g0;->f:Lpa/j0;

    .line 11
    .line 12
    iget-object v2, v0, Lpa/g0;->c:Lbc/l;

    .line 13
    .line 14
    invoke-interface {v1, v0, p1, v2}, Lpa/j0;->a(Lpa/g0;Llb/c;Lbc/l;)Lpa/z;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
