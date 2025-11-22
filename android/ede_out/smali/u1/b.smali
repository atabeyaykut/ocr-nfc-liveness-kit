.class public final synthetic Lu1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# instance fields
.field public final synthetic a:Lu1/c;

.field public final synthetic b:Lx9/l;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lu1/c;Lx9/l;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/b;->a:Lu1/c;

    iput-object p2, p0, Lu1/b;->b:Lx9/l;

    iput-object p3, p0, Lu1/b;->c:Landroid/content/Context;

    iput-object p4, p0, Lu1/b;->d:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lu1/b;->a:Lu1/c;

    .line 2
    .line 3
    const-string v1, "this$0"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lu1/b;->b:Lx9/l;

    .line 9
    .line 10
    const-string v2, "$imageReadyListener"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lu1/b;->c:Landroid/content/Context;

    .line 16
    .line 17
    const-string v3, "$context"

    .line 18
    .line 19
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "File "

    .line 25
    .line 26
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v4, " was scanned successfully: "

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "ImagePicker"

    .line 45
    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    if-nez p1, :cond_1

    .line 52
    .line 53
    const-string v3, "This should not happen, go back to Immediate implementation"

    .line 54
    .line 55
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    if-nez p2, :cond_2

    .line 59
    .line 60
    const-string v3, "scanFile is failed. Uri is null"

    .line 61
    .line 62
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_2
    if-nez p1, :cond_3

    .line 66
    .line 67
    iget-object p1, v0, Lu1/c;->a:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    if-nez p2, :cond_4

    .line 73
    .line 74
    iget-object p2, v0, Lu1/c;->b:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    :cond_4
    const-string v0, "finalUri"

    .line 81
    .line 82
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Ld2/b;

    .line 86
    .line 87
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v3

    .line 91
    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 92
    .line 93
    const-string v5, "separator"

    .line 94
    .line 95
    invoke-static {p2, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/4 v5, 0x0

    .line 99
    invoke-static {p1, p2, v5}, Lmc/n;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_5

    .line 104
    .line 105
    const/4 v5, 0x6

    .line 106
    invoke-static {p1, p2, v5}, Lmc/n;->Q(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    add-int/lit8 p2, p2, 0x1

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    const-string v5, "this as java.lang.String).substring(startIndex)"

    .line 117
    .line 118
    invoke-static {p2, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    move-object p2, p1

    .line 123
    :goto_0
    invoke-direct {v0, v3, v4, p2, p1}, Ld2/b;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-interface {v1, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    const/4 p1, 0x3

    .line 134
    iget-object p2, p0, Lu1/b;->d:Landroid/net/Uri;

    .line 135
    .line 136
    invoke-virtual {v2, p2, p1}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 137
    .line 138
    .line 139
    return-void
.end method
