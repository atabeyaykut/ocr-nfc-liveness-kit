.class public final Lng/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lng/e;->a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->s:[Lda/m;

    .line 6
    .line 7
    iget-object v0, p0, Lng/e;->a:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->F(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
