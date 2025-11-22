.class public final Le1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv0/j<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le1/m;


# direct methods
.method public constructor <init>(Le1/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/g;->a:Le1/m;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lv0/h;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    iget-object p1, p0, Le1/g;->a:Le1/m;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method

.method public final b(Ljava/lang/Object;IILv0/h;)Lx0/w;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lv0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    new-instance v1, Le1/s$a;

    .line 4
    .line 5
    iget-object v0, p0, Le1/g;->a:Le1/m;

    .line 6
    .line 7
    iget-object v2, v0, Le1/m;->d:Ljava/util/List;

    .line 8
    .line 9
    iget-object v3, v0, Le1/m;->c:Ly0/b;

    .line 10
    .line 11
    invoke-direct {v1, v3, p1, v2}, Le1/s$a;-><init>(Ly0/b;Ljava/nio/ByteBuffer;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    sget-object v5, Le1/m;->k:Le1/m$a;

    .line 15
    .line 16
    move v2, p2

    .line 17
    move v3, p3

    .line 18
    move-object v4, p4

    .line 19
    invoke-virtual/range {v0 .. v5}, Le1/m;->a(Le1/s;IILv0/h;Le1/m$b;)Le1/e;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method
