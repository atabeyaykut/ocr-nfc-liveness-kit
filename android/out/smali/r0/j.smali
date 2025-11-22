.class public final Lr0/j;
.super Lr0/f1;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/activity/ComponentActivity;

.field public final b:Ljava/lang/Object;

.field public final c:Landroidx/fragment/app/Fragment;

.field public final d:Landroidx/lifecycle/ViewModelStoreOwner;

.field public final e:Landroidx/savedstate/SavedStateRegistry;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistry;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "savedStateRegistry"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lr0/f1;-><init>()V

    .line 2
    iput-object p1, p0, Lr0/j;->a:Landroidx/activity/ComponentActivity;

    iput-object p2, p0, Lr0/j;->b:Ljava/lang/Object;

    iput-object p3, p0, Lr0/j;->c:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, Lr0/j;->d:Landroidx/lifecycle/ViewModelStoreOwner;

    iput-object p5, p0, Lr0/j;->e:Landroidx/savedstate/SavedStateRegistry;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Object;Landroidx/fragment/app/Fragment;)V
    .locals 6

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v5

    const-string v0, "fragment.savedStateRegistry"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lr0/j;-><init>(Landroidx/activity/ComponentActivity;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistry;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr0/j;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 1

    iget-object v0, p0, Lr0/j;->d:Landroidx/lifecycle/ViewModelStoreOwner;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-eq p0, p1, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Lr0/j;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lr0/j;

    .line 8
    .line 9
    iget-object v0, p1, Lr0/j;->a:Landroidx/activity/ComponentActivity;

    .line 10
    .line 11
    iget-object v1, p0, Lr0/j;->a:Landroidx/activity/ComponentActivity;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lr0/j;->b:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v1, p1, Lr0/j;->b:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lr0/j;->c:Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    iget-object v1, p1, Lr0/j;->c:Landroidx/fragment/app/Fragment;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lr0/j;->d:Landroidx/lifecycle/ViewModelStoreOwner;

    .line 40
    .line 41
    iget-object v1, p1, Lr0/j;->d:Landroidx/lifecycle/ViewModelStoreOwner;

    .line 42
    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lr0/j;->e:Landroidx/savedstate/SavedStateRegistry;

    .line 50
    .line 51
    iget-object p1, p1, Lr0/j;->e:Landroidx/savedstate/SavedStateRegistry;

    .line 52
    .line 53
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 p1, 0x0

    .line 61
    return p1

    .line 62
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 63
    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lr0/j;->a:Landroidx/activity/ComponentActivity;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lr0/j;->b:Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lr0/j;->c:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lr0/j;->d:Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lr0/j;->e:Landroidx/savedstate/SavedStateRegistry;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_4
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FragmentViewModelContext(activity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lr0/j;->a:Landroidx/activity/ComponentActivity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr0/j;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr0/j;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr0/j;->d:Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", savedStateRegistry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr0/j;->e:Landroidx/savedstate/SavedStateRegistry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
