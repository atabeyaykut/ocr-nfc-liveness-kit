.class public final Leb/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/s$c;


# instance fields
.field public final synthetic a:Leb/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leb/d<",
            "Ljava/lang/Object;",
            "Leb/d$a<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leb/d;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leb/d<",
            "Ljava/lang/Object;",
            "Leb/d$a<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Leb/e;->a:Leb/d;

    iput-object p2, p0, Leb/e;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Llb/b;Lra/b;)Leb/s$a;
    .locals 2

    iget-object v0, p0, Leb/e;->a:Leb/d;

    iget-object v1, p0, Leb/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2, v1}, Leb/d;->r(Llb/b;Lra/b;Ljava/util/List;)Leb/i;

    move-result-object p1

    return-object p1
.end method
