.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b$b;
.super Le8/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le8/b$c<",
        "Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Le8/b$c;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0426

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.txt_cityName)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b$b;->a:Landroid/widget/TextView;

    const v0, 0x7f0a01ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.img_check)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b$b;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final a(Le8/j;Ljava/util/List;)V
    .locals 1

    .line 1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;

    .line 2
    .line 3
    const-string v0, "payloads"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;->e:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b$b;->a:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-boolean p1, p1, Lh8/b;->c:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 p1, 0x8

    .line 22
    .line 23
    :goto_0
    iget-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b$b;->b:Landroid/widget/ImageView;

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final b(Le8/j;)V
    .locals 1

    .line 1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;

    .line 2
    .line 3
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b$b;->a:Landroid/widget/TextView;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
