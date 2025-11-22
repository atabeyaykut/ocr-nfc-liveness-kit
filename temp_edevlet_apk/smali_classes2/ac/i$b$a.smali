.class public final Lac/i$b$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lac/i$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmb/r;

.field public final synthetic b:Ljava/io/ByteArrayInputStream;

.field public final synthetic c:Lac/i;


# direct methods
.method public constructor <init>(Lmb/b;Ljava/io/ByteArrayInputStream;Lac/i;)V
    .locals 0

    iput-object p1, p0, Lac/i$b$a;->a:Lmb/r;

    iput-object p2, p0, Lac/i$b$a;->b:Ljava/io/ByteArrayInputStream;

    iput-object p3, p0, Lac/i$b$a;->c:Lac/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lac/i$b$a;->c:Lac/i;

    .line 2
    .line 3
    iget-object v0, v0, Lac/i;->b:Lyb/n;

    .line 4
    .line 5
    iget-object v0, v0, Lyb/n;->a:Lyb/l;

    .line 6
    .line 7
    iget-object v0, v0, Lyb/l;->p:Lmb/f;

    .line 8
    .line 9
    iget-object v1, p0, Lac/i$b$a;->a:Lmb/r;

    .line 10
    .line 11
    check-cast v1, Lmb/b;

    .line 12
    .line 13
    iget-object v2, p0, Lac/i$b$a;->b:Ljava/io/ByteArrayInputStream;

    .line 14
    .line 15
    invoke-virtual {v1, v2, v0}, Lmb/b;->c(Ljava/io/ByteArrayInputStream;Lmb/f;)Lmb/p;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
