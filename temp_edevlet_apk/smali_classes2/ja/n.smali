.class public final Lja/n;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lvb/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lma/b0;


# direct methods
.method public constructor <init>(Lpa/g0;)V
    .locals 0

    iput-object p1, p0, Lja/n;->a:Lma/b0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lja/n;->a:Lma/b0;

    sget-object v1, Lja/o;->h:Llb/c;

    invoke-interface {v0, v1}, Lma/b0;->I0(Llb/c;)Lma/i0;

    move-result-object v0

    invoke-interface {v0}, Lma/i0;->o()Lvb/i;

    move-result-object v0

    return-object v0
.end method
