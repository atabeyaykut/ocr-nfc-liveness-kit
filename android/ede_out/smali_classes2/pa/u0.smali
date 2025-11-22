.class public final Lpa/u0;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/List<",
        "+",
        "Lma/b1;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lpa/v0$a;


# direct methods
.method public constructor <init>(Lpa/v0$a;)V
    .locals 0

    iput-object p1, p0, Lpa/u0;->a:Lpa/v0$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lpa/u0;->a:Lpa/v0$a;

    .line 2
    .line 3
    iget-object v0, v0, Lpa/v0$a;->m:Ll9/j;

    .line 4
    .line 5
    invoke-virtual {v0}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/List;

    .line 10
    .line 11
    return-object v0
.end method
