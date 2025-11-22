.class public final Lza/o$d;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/o;-><init>(Lp4/g7;Lza/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/Set<",
        "+",
        "Llb/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lza/o;


# direct methods
.method public constructor <init>(Lza/o;)V
    .locals 0

    iput-object p1, p0, Lza/o$d;->a:Lza/o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lvb/d;->o:Lvb/d;

    const/4 v1, 0x0

    iget-object v2, p0, Lza/o$d;->a:Lza/o;

    invoke-virtual {v2, v0, v1}, Lza/o;->h(Lvb/d;Lvb/i$a$a;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
