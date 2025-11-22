.class public final synthetic Lng/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;


# direct methods
.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lng/b;->a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 5

    .line 1
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->s:[Lda/m;

    .line 2
    .line 3
    iget-object p1, p0, Lng/b;->a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    .line 4
    .line 5
    const-string v0, "this$0"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_a

    .line 11
    .line 12
    iget-object p2, p1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->c:Landroid/content/SharedPreferences;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p2, :cond_9

    .line 16
    .line 17
    invoke-static {p2}, Lng/j;->a(Landroid/content/SharedPreferences;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    array-length v3, p2

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v3, 0x0

    .line 31
    :goto_0
    if-eqz v3, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v3, 0x0

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 37
    :goto_2
    if-nez v3, :cond_a

    .line 38
    .line 39
    if-eqz p2, :cond_5

    .line 40
    .line 41
    array-length v3, p2

    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    const/4 v3, 0x0

    .line 47
    :goto_3
    if-eqz v3, :cond_4

    .line 48
    .line 49
    goto :goto_4

    .line 50
    :cond_4
    const/4 v3, 0x0

    .line 51
    goto :goto_5

    .line 52
    :cond_5
    :goto_4
    const/4 v3, 0x1

    .line 53
    :goto_5
    if-nez v3, :cond_a

    .line 54
    .line 55
    iput-boolean v1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->p:Z

    .line 56
    .line 57
    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 58
    .line 59
    const-string v3, "mSearchFragmentBinding"

    .line 60
    .line 61
    if-eqz v1, :cond_8

    .line 62
    .line 63
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchDeleteHistoryBinding;

    .line 64
    .line 65
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchDeleteHistoryBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 71
    .line 72
    if-eqz v1, :cond_7

    .line 73
    .line 74
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->b:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchDeleteHistoryBinding;

    .line 75
    .line 76
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchDeleteHistoryBinding;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 77
    .line 78
    new-instance v2, Lzd/d;

    .line 79
    .line 80
    const/16 v4, 0xc

    .line 81
    .line 82
    invoke-direct {v2, v4, p1}, Lzd/d;-><init>(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->g:Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;

    .line 89
    .line 90
    if-eqz v1, :cond_6

    .line 91
    .line 92
    new-instance v0, Lng/g;

    .line 93
    .line 94
    invoke-direct {v0, p2, p1}, Lng/g;-><init>([Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;->e:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->h(Lx9/l;)V

    .line 100
    .line 101
    .line 102
    goto :goto_6

    .line 103
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_9
    const-string p1, "sharedPreferences"

    .line 116
    .line 117
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_a
    :goto_6
    return-void
.end method
