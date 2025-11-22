.class public final Lpa/e;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ldc/f;",
        "Lcc/m0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lpa/f;


# direct methods
.method public constructor <init>(Lpa/f;)V
    .locals 0

    iput-object p1, p0, Lpa/e;->a:Lpa/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ldc/f;

    .line 2
    .line 3
    iget-object v0, p0, Lpa/e;->a:Lpa/f;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ldc/f;->v(Lma/g;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method
