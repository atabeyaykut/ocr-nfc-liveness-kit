.class public final Lla/j;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lla/g$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lma/b0;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lpa/g0;)V
    .locals 0

    iput-object p1, p0, Lla/j;->a:Lma/b0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lla/j;->b:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lla/g$a;

    iget-object v1, p0, Lla/j;->a:Lma/b0;

    iget-boolean v2, p0, Lla/j;->b:Z

    invoke-direct {v0, v1, v2}, Lla/g$a;-><init>(Lma/b0;Z)V

    return-object v0
.end method
