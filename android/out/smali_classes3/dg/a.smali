.class public final synthetic Ldg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/NavController$OnDestinationChangedListener;


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;


# direct methods
.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldg/a;->a:Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;

    return-void
.end method


# virtual methods
.method public final onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    sget p3, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->f:I

    .line 2
    .line 3
    const-string p3, "this$0"

    .line 4
    .line 5
    iget-object v0, p0, Ldg/a;->a:Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;

    .line 6
    .line 7
    invoke-static {v0, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p3, "<anonymous parameter 0>"

    .line 11
    .line 12
    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "destination"

    .line 16
    .line 17
    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/navigation/NavDestination;->getId()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const p3, 0x7f0a02e2

    .line 25
    .line 26
    .line 27
    if-eq p1, p3, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2}, Landroidx/navigation/NavDestination;->getId()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const v1, 0x7f0a02e5

    .line 34
    .line 35
    .line 36
    if-eq p1, v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p2}, Landroidx/navigation/NavDestination;->getId()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const v1, 0x7f0a02e4

    .line 43
    .line 44
    .line 45
    if-eq p1, v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {p2}, Landroidx/navigation/NavDestination;->getId()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const v1, 0x7f0a02e3

    .line 52
    .line 53
    .line 54
    if-eq p1, v1, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/ActivityMainBinding;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/ActivityMainBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 61
    .line 62
    const v1, 0x7f080142

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-virtual {p2}, Landroidx/navigation/NavDestination;->getId()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    const v1, 0x7f0a0099

    .line 73
    .line 74
    .line 75
    if-eq p1, p3, :cond_3

    .line 76
    .line 77
    invoke-virtual {p2}, Landroidx/navigation/NavDestination;->getId()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const p2, 0x7f0a000e

    .line 82
    .line 83
    .line 84
    if-ne p1, p2, :cond_1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    const/4 p2, 0x1

    .line 100
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/ActivityMainBinding;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/ActivityMainBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 108
    .line 109
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Landroid/widget/ImageView;

    .line 114
    .line 115
    const/16 p2, 0x8

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_5

    .line 123
    .line 124
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const/4 p2, 0x0

    .line 129
    if-eqz p1, :cond_4

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 132
    .line 133
    .line 134
    :cond_4
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/ActivityMainBinding;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/ActivityMainBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Landroid/widget/ImageView;

    .line 145
    .line 146
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    :cond_5
    return-void
.end method
