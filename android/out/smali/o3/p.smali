.class public final Lo3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/e;


# instance fields
.field public final synthetic a:Lh5/l;

.field public final synthetic b:Lo3/q;


# direct methods
.method public constructor <init>(Lo3/q;Lh5/l;)V
    .locals 0

    iput-object p1, p0, Lo3/p;->b:Lo3/q;

    iput-object p2, p0, Lo3/p;->a:Lh5/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lh5/k;)V
    .locals 1
    .param p1    # Lh5/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lo3/p;->b:Lo3/q;

    .line 2
    .line 3
    iget-object p1, p1, Lo3/q;->b:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v0, p0, Lo3/p;->a:Lh5/l;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method
