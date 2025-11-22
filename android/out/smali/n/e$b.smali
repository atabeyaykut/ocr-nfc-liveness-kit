.class public final Ln/e$b;
.super Landroidx/collection/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln/e;-><init>(ILn/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Ln/b$a;",
        "Ln/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln/e;


# direct methods
.method public constructor <init>(ILn/e;)V
    .locals 0

    iput-object p2, p0, Ln/e$b;->a:Ln/e;

    invoke-direct {p0, p1}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Ln/b$a;

    .line 2
    .line 3
    check-cast p3, Ln/e$a;

    .line 4
    .line 5
    check-cast p4, Ln/e$a;

    .line 6
    .line 7
    iget-object p1, p0, Ln/e$b;->a:Ln/e;

    .line 8
    .line 9
    iget-object p1, p1, Ln/e;->a:Ln/h;

    .line 10
    .line 11
    iget-object p4, p3, Ln/e$a;->a:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    iget-object v0, p3, Ln/e$a;->b:Ljava/util/Map;

    .line 14
    .line 15
    iget p3, p3, Ln/e$a;->c:I

    .line 16
    .line 17
    invoke-interface {p1, p2, p4, v0, p3}, Ln/h;->c(Ln/b$a;Landroid/graphics/Bitmap;Ljava/util/Map;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ln/b$a;

    .line 2
    .line 3
    check-cast p2, Ln/e$a;

    .line 4
    .line 5
    iget p1, p2, Ln/e$a;->c:I

    .line 6
    .line 7
    return p1
.end method
