.class public final Le1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv0/k<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ly0/c;

.field public final b:Lv0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv0/k<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly0/c;Le1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/b;->a:Ly0/c;

    iput-object p2, p0, Le1/b;->b:Lv0/k;

    return-void
.end method


# virtual methods
.method public final a(Lv0/h;)Lv0/c;
    .locals 1
    .param p1    # Lv0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Le1/b;->b:Lv0/k;

    invoke-interface {v0, p1}, Lv0/k;->a(Lv0/h;)Lv0/c;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;Ljava/io/File;Lv0/h;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lv0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lx0/w;

    .line 2
    .line 3
    new-instance v0, Le1/e;

    .line 4
    .line 5
    invoke-interface {p1}, Lx0/w;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v1, p0, Le1/b;->a:Ly0/c;

    .line 16
    .line 17
    invoke-direct {v0, p1, v1}, Le1/e;-><init>(Landroid/graphics/Bitmap;Ly0/c;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Le1/b;->b:Lv0/k;

    .line 21
    .line 22
    invoke-interface {p1, v0, p2, p3}, Lv0/d;->b(Ljava/lang/Object;Ljava/io/File;Lv0/h;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method
