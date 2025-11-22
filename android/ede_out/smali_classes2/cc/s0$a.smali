.class public final Lcc/s0$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/s0;-><init>(Lma/w0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lcc/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcc/s0;


# direct methods
.method public constructor <init>(Lcc/s0;)V
    .locals 0

    iput-object p1, p0, Lcc/s0$a;->a:Lcc/s0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/s0$a;->a:Lcc/s0;

    .line 2
    .line 3
    iget-object v0, v0, Lcc/s0;->a:Lma/w0;

    .line 4
    .line 5
    invoke-static {v0}, Lc5/u;->p(Lma/w0;)Lcc/e0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
