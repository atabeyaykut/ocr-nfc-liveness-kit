.class public final Lza/n$d;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/n;-><init>(Lp4/g7;Lcb/t;Lza/m;)V
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lp4/g7;

.field public final synthetic b:Lza/n;


# direct methods
.method public constructor <init>(Lp4/g7;Lza/n;)V
    .locals 0

    iput-object p1, p0, Lza/n$d;->a:Lp4/g7;

    iput-object p2, p0, Lza/n$d;->b:Lza/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lza/n$d;->a:Lp4/g7;

    .line 2
    .line 3
    iget-object v0, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lya/c;

    .line 6
    .line 7
    iget-object v0, v0, Lya/c;->b:Lva/l;

    .line 8
    .line 9
    iget-object v1, p0, Lza/n$d;->b:Lza/n;

    .line 10
    .line 11
    iget-object v1, v1, Lza/n;->o:Lza/m;

    .line 12
    .line 13
    iget-object v1, v1, Lpa/i0;->e:Llb/c;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lva/l;->a(Llb/c;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    return-object v0
.end method
