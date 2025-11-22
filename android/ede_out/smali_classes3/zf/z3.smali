.class public final Lzf/z3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt8/a;


# instance fields
.field public final a:Lzf/d1;


# direct methods
.method public constructor <init>(Lzf/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzf/z3;->a:Lzf/d1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/result/MobileAccidentResultFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lzf/z3;->a:Lzf/d1;

    .line 4
    .line 5
    iget-object v0, v0, Lzf/d1;->a:Laf/a;

    .line 6
    .line 7
    check-cast v0, Laf/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Laf/b;->e()Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    return-void
.end method
