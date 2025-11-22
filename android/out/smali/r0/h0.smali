.class public final Lr0/h0;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ljava/lang/reflect/Field;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lr0/h0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr0/h0;

    invoke-direct {v0}, Lr0/h0;-><init>()V

    sput-object v0, Lr0/h0;->a:Lr0/h0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/reflect/Field;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 13
    .line 14
    return-object p1
.end method
