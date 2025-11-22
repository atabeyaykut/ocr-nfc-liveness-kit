.class public final synthetic Lke/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lke/b;->a:I

    iput-object p2, p0, Lke/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lke/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget v0, p0, Lke/b;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lke/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lke/b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;

    .line 12
    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    .line 15
    sget p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->s0:I

    .line 16
    .line 17
    const-string p1, "this$0"

    .line 18
    .line 19
    invoke-static {v2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "$connectionURL"

    .line 23
    .line 24
    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->d:Lgf/b;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lgf/b;->a()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->E()V

    .line 38
    .line 39
    .line 40
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v0, "eDevletMobil"

    .line 46
    .line 47
    const-string v3, "true"

    .line 48
    .line 49
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;->v()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 57
    .line 58
    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void

    .line 62
    :cond_1
    const-string p1, "mNetworkHelper"

    .line 63
    .line 64
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    throw p1

    .line 69
    :pswitch_1
    check-cast v2, Landroid/view/View$OnClickListener;

    .line 70
    .line 71
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;

    .line 72
    .line 73
    const-string p1, "$customView"

    .line 74
    .line 75
    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/view/CustomSnackbarView;->getTvAction()Landroid/widget/TextView;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void

    .line 88
    :goto_0
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;

    .line 89
    .line 90
    check-cast v1, Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v2, v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;->a(Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;Ljava/lang/String;Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
