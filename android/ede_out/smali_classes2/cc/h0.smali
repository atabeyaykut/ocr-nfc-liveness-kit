.class public final Lcc/h0;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lcc/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ldc/f;

.field public final synthetic b:Lcc/i0;


# direct methods
.method public constructor <init>(Ldc/f;Lcc/i0;)V
    .locals 0

    iput-object p1, p0, Lcc/h0;->a:Ldc/f;

    iput-object p2, p0, Lcc/h0;->b:Lcc/i0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcc/h0;->b:Lcc/i0;

    .line 2
    .line 3
    iget-object v0, v0, Lcc/i0;->c:Lx9/a;

    .line 4
    .line 5
    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lfc/h;

    .line 10
    .line 11
    iget-object v1, p0, Lcc/h0;->a:Ldc/f;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ldc/f;->x(Lfc/h;)Lcc/e0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
