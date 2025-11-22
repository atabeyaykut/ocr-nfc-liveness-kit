.class public final Lv6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lv6/e;


# direct methods
.method public constructor <init>(Lv6/e;)V
    .locals 0

    iput-object p1, p0, Lv6/d;->a:Lv6/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/Writer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v6, Lv6/f;

    .line 2
    .line 3
    iget-object v0, p0, Lv6/d;->a:Lv6/e;

    .line 4
    .line 5
    iget-object v2, v0, Lv6/e;->a:Ljava/util/HashMap;

    .line 6
    .line 7
    iget-object v3, v0, Lv6/e;->b:Ljava/util/HashMap;

    .line 8
    .line 9
    iget-object v4, v0, Lv6/e;->c:Lv6/a;

    .line 10
    .line 11
    iget-boolean v5, v0, Lv6/e;->d:Z

    .line 12
    .line 13
    move-object v0, v6

    .line 14
    move-object v1, p2

    .line 15
    invoke-direct/range {v0 .. v5}, Lv6/f;-><init>(Ljava/io/Writer;Ljava/util/HashMap;Ljava/util/HashMap;Lv6/a;Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v6, p1}, Lv6/f;->f(Ljava/lang/Object;)Lv6/f;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v6}, Lv6/f;->h()V

    .line 22
    .line 23
    .line 24
    iget-object p1, v6, Lv6/f;->b:Landroid/util/JsonWriter;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/util/JsonWriter;->flush()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
