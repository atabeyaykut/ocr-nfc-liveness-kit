.class public final Le1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/j;


# instance fields
.field public final synthetic a:I

.field public final b:Lv0/j;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lv0/j;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Le1/a;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Le1/a;->b:Lv0/j;

    return-void
.end method

.method public constructor <init>(Lg1/f;Ly0/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Le1/a;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/a;->b:Lv0/j;

    iput-object p2, p0, Le1/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lv0/h;)Z
    .locals 1

    .line 1
    iget v0, p0, Le1/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Le1/a;->b:Lv0/j;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lv0/j;->a(Ljava/lang/Object;Lv0/h;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :goto_0
    check-cast p1, Landroid/net/Uri;

    .line 15
    .line 16
    const-string p2, "android.resource"

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;IILv0/h;)Lx0/w;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Le1/a;->a:I

    .line 3
    .line 4
    iget-object v2, p0, Le1/a;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Le1/a;->b:Lv0/j;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_1

    .line 12
    :pswitch_0
    invoke-interface {v3, p1, p2, p3, p4}, Lv0/j;->b(Ljava/lang/Object;IILv0/h;)Lx0/w;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast v2, Landroid/content/res/Resources;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Le1/u;

    .line 22
    .line 23
    invoke-direct {v0, v2, p1}, Le1/u;-><init>(Landroid/content/res/Resources;Lx0/w;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-object v0

    .line 27
    :goto_1
    check-cast p1, Landroid/net/Uri;

    .line 28
    .line 29
    check-cast v3, Lg1/f;

    .line 30
    .line 31
    invoke-virtual {v3, p1, p4}, Lg1/f;->c(Landroid/net/Uri;Lv0/h;)Lx0/w;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    check-cast p1, Lg1/c;

    .line 39
    .line 40
    invoke-virtual {p1}, Lg1/c;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    check-cast v2, Ly0/c;

    .line 47
    .line 48
    invoke-static {v2, p1, p2, p3}, Le1/n;->a(Ly0/c;Landroid/graphics/drawable/Drawable;II)Le1/e;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_2
    return-object v0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
