.class public final Lvb/m$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvb/m;-><init>(Lbc/l;Lma/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/List<",
        "+",
        "Lma/l0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lvb/m;


# direct methods
.method public constructor <init>(Lvb/m;)V
    .locals 0

    iput-object p1, p0, Lvb/m$b;->a:Lvb/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lvb/m$b;->a:Lvb/m;

    .line 2
    .line 3
    iget-object v0, v0, Lvb/m;->b:Lma/e;

    .line 4
    .line 5
    invoke-static {v0}, Lob/h;->e(Lma/e;)Lpa/l0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lb8/f;->U(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
