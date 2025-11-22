.class public final Lcc/e;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcc/b1;

.field public final synthetic b:Lfc/n;

.field public final synthetic c:Lfc/i;

.field public final synthetic d:Lfc/i;


# direct methods
.method public constructor <init>(Lcc/b1;Lfc/n;Lfc/i;Lfc/i;)V
    .locals 0

    iput-object p1, p0, Lcc/e;->a:Lcc/b1;

    iput-object p2, p0, Lcc/e;->b:Lfc/n;

    iput-object p3, p0, Lcc/e;->c:Lfc/i;

    iput-object p4, p0, Lcc/e;->d:Lfc/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcc/e;->b:Lfc/n;

    iget-object v1, p0, Lcc/e;->c:Lfc/i;

    invoke-interface {v0, v1}, Lfc/n;->B(Lfc/i;)Lfc/j;

    move-result-object v0

    iget-object v1, p0, Lcc/e;->d:Lfc/i;

    iget-object v2, p0, Lcc/e;->a:Lcc/b1;

    invoke-static {v2, v0, v1}, Lcc/g;->h(Lcc/b1;Lfc/j;Lfc/i;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
