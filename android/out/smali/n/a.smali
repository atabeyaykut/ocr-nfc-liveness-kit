.class public final Ln/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/g;


# instance fields
.field public final a:Ln/h;


# direct methods
.method public constructor <init>(Ln/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/a;->a:Ln/h;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final b(Ln/b$a;)Ln/b$b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Ln/b$a;Landroid/graphics/Bitmap;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/b$a;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lb8/f;->F(Landroid/graphics/Bitmap;)I

    move-result v0

    iget-object v1, p0, Ln/a;->a:Ln/h;

    invoke-interface {v1, p1, p2, p3, v0}, Ln/h;->c(Ln/b$a;Landroid/graphics/Bitmap;Ljava/util/Map;I)V

    return-void
.end method
